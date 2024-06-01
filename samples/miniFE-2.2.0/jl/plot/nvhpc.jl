using ArgParse
function parse_cmd()
    cfg = ArgParseSettings()
    @add_arg_table cfg begin
        "--pdf", "-p"
        help = "generate figure in PDF format"
        action = :store_true
    end
    return parse_args(cfg)
end

using PyPlot
include("../util/pyplot.jl")

function read_token(line::String, key::String)
    find = false
    val::Float32 = 0.0
    str = split(line, ":")
    if (strip(str[begin], ' ') == key)
        find = true
        val = parse(Float32, strip(str[end], ' '))
    end
    return find, val
end

function read_yaml(file::String)
    read_nx = false
    read_ny = false
    read_nz = false
    read_cg = false
    nx::Float32 = 0.0
    ny::Float32 = 0.0
    nz::Float32 = 0.0
    cg::Float32 = 0.0
    open(file, "r") do input
        contents = readlines(input)
        for line in contents
            if (read_nx == false)
                read_nx, nx = read_token(line, "nx")
            else
                if (read_ny == false)
                    read_ny, ny = read_token(line, "ny")
                else
                    if (read_nz == false)
                        read_nz, nz = read_token(line, "nz")
                    else
                        if (read_cg == false)
                            read_cg, cg = read_token(line, "Total CG Mflops")
                        end
                    end
                end
            end
        end
    end
    return nx, ny, nz, cg
end

using DataFrames
using Statistics
function read_results(file_list, summary, GPU, lang)
    nx_list = []
    ny_list = []
    nz_list = []
    cg_list = []
    for file in file_list
        nx, ny, nz, cg = read_yaml(file)
        append!(nx_list, nx)
        append!(ny_list, ny)
        append!(nz_list, nz)
        append!(cg_list, cg)
    end
    df = DataFrame(nx=nx_list, ny=ny_list, nz=nz_list, n3=nx_list .* ny_list .* nz_list, CG=cg_list * 1.0e-3)

    n3 = sort(unique(df.n3))
    max = []
    med = []
    for ii = eachindex(n3)
        data = df[df.n3.==n3[ii], :]."CG"
        append!(max, maximum(data))
        append!(med, Statistics.median(data))
        push!(summary, (GPU, lang, n3[ii], max[end], med[end], Statistics.mean(data), minimum(data), length(data)))
    end

    return n3, max, med, summary
end


function plot_lp(fig, at, x, y; point_id=0, line_id=0, color_id=0, label="", open_symbol=false)
    if open_symbol
        at.plot(x, y, util_pyplot.call(fig.point, id=point_id), markersize=fig.ms, linestyle=util_pyplot.call(fig.line, id=line_id), linewidth=fig.lw, color=util_pyplot.call(fig.color, id=color_id), label=label, markerfacecolor="none")
    else
        at.plot(x, y, util_pyplot.call(fig.point, id=point_id), markersize=fig.ms, linestyle=util_pyplot.call(fig.line, id=line_id), linewidth=fig.lw, color=util_pyplot.call(fig.color, id=color_id), label=label)
    end
end

function set_xlabel(fig, at, label)
    at.set_xlabel(label, fontsize=fig.fs)
end
function set_ylabel(fig, at, label)
    at.set_ylabel(label, fontsize=fig.fs)
end

using Parameters
@with_kw mutable struct gpu_config
    name::String
    root::String
    has_cuda::Bool = false
    has_openacc::Bool = false
    has_managed::Bool = false
    has_unified::Bool = false
    has_teams512::Bool = false
    caption::String
end

using Glob
using CSV
function main()
    # read options
    argv = parse_cmd()
    output_pdf = argv["pdf"]

    # initialize matplotlib
    util_pyplot.config()

    Ngpu = 2
    gpu = Array{gpu_config,1}(undef, Ngpu)
    gpu[1] = gpu_config(name="h100sxm", root="mercury/h100sxm", has_cuda=true, has_openacc=true, has_managed=true, caption="NVIDIA H100 SXM 80GB")
    gpu[2] = gpu_config(name="gh200", root="mercury/gh200", has_cuda=true, has_openacc=true, has_managed=true, has_unified=true, has_teams512=true, caption="NVIDIA GH200 480GB")

    compare_system_max = util_pyplot.set_Panel(nx=3, ny=Ngpu)
    compare_system_med = util_pyplot.set_Panel(nx=3, ny=Ngpu)

    max_of_max_performance::Float32 = 0.0
    max_of_med_performance::Float32 = 0.0
    min_of_max_performance = typemax(Float32)
    min_of_med_performance = typemax(Float32)

    # prepare summary CSV file
    summary = DataFrame(GPU=[], lang=[], NxNyNz=[], perf_max=[], perf_med=[], perf_avg=[], perf_min=[], trials=[])

    for gpu_id in 1:Ngpu
        root = gpu[gpu_id].root
        has_cuda = gpu[gpu_id].has_cuda
        has_openacc = gpu[gpu_id].has_openacc
        has_managed = gpu[gpu_id].has_managed
        has_unified = gpu[gpu_id].has_unified
        has_teams512 = gpu[gpu_id].has_teams512
        name = gpu[gpu_id].name

        # read measured performance
        if has_cuda
            n3_cuda, perf_max_cuda, perf_med_cuda, summary = read_results(glob(string(root, "/cuda/*.yaml")), summary, gpu[gpu_id].caption, "CUDA (miniFE 2.2.0)")
            max_of_max_performance = max(max_of_max_performance, maximum(perf_max_cuda))
            max_of_med_performance = max(max_of_med_performance, maximum(perf_med_cuda))
            min_of_max_performance = min(min_of_max_performance, minimum(perf_max_cuda))
            min_of_med_performance = min(min_of_med_performance, minimum(perf_med_cuda))
        end
        n3_omp_45opt, perf_max_omp_45opt, perf_med_omp_45opt, summary = read_results(glob(string(root, "/openmp45-opt/*.yaml")), summary, gpu[gpu_id].caption, "omp (miniFE 2.2.0)")
        n3_omp_dist, perf_max_omp_dist, perf_med_omp_dist, summary = read_results(glob(string(root, "/omp_dist/*.yaml")), summary, gpu[gpu_id].caption, "omp (data, distribute)")
        n3_omp_loop, perf_max_omp_loop, perf_med_omp_loop, summary = read_results(glob(string(root, "/omp_loop/*.yaml")), summary, gpu[gpu_id].caption, "omp (data, loop)")
        max_of_max_performance = max(max_of_max_performance, maximum(perf_max_omp_45opt), maximum(perf_max_omp_dist), maximum(perf_max_omp_loop))
        max_of_med_performance = max(max_of_med_performance, maximum(perf_med_omp_45opt), maximum(perf_med_omp_dist), maximum(perf_med_omp_loop))
        min_of_max_performance = min(min_of_max_performance, minimum(perf_max_omp_45opt), minimum(perf_max_omp_dist), minimum(perf_max_omp_loop))
        min_of_med_performance = min(min_of_med_performance, minimum(perf_med_omp_45opt), minimum(perf_med_omp_dist), minimum(perf_med_omp_loop))
        if has_teams512
            n3_omp_dist_teams512, perf_max_omp_dist_teams512, perf_med_omp_dist_teams512, summary = read_results(glob(string(root, "/teams512/omp_dist/*.yaml")), summary, gpu[gpu_id].caption, "omp (data, teams512, distribute)")
            n3_omp_loop_teams512, perf_max_omp_loop_teams512, perf_med_omp_loop_teams512, summary = read_results(glob(string(root, "/teams512/omp_loop/*.yaml")), summary, gpu[gpu_id].caption, "omp (data, teams512, loop)")
        end
        if has_managed
            n3_omp_dist_managed, perf_max_omp_dist_managed, perf_med_omp_dist_managed, summary = read_results(glob(string(root, "/managed/omp_dist/*.yaml")), summary, gpu[gpu_id].caption, "omp (managed, distribute)")
            n3_omp_loop_managed, perf_max_omp_loop_managed, perf_med_omp_loop_managed, summary = read_results(glob(string(root, "/managed/omp_loop/*.yaml")), summary, gpu[gpu_id].caption, "omp (managed, loop)")
            max_of_max_performance = max(max_of_max_performance, maximum(perf_max_omp_dist_managed), maximum(perf_max_omp_loop_managed))
            max_of_med_performance = max(max_of_med_performance, maximum(perf_med_omp_dist_managed), maximum(perf_med_omp_loop_managed))
            min_of_max_performance = min(min_of_max_performance, minimum(perf_max_omp_dist_managed), minimum(perf_max_omp_loop_managed))
            min_of_med_performance = min(min_of_med_performance, minimum(perf_med_omp_dist_managed), minimum(perf_med_omp_loop_managed))
        end
        if has_unified
            n3_omp_dist_unified, perf_max_omp_dist_unified, perf_med_omp_dist_unified, summary = read_results(glob(string(root, "/unified/omp_dist/*.yaml")), summary, gpu[gpu_id].caption, "omp (unified, distribute)")
            n3_omp_loop_unified, perf_max_omp_loop_unified, perf_med_omp_loop_unified, summary = read_results(glob(string(root, "/unified/omp_loop/*.yaml")), summary, gpu[gpu_id].caption, "omp (unified, loop)")
            max_of_max_performance = max(max_of_max_performance, maximum(perf_max_omp_dist_unified), maximum(perf_max_omp_loop_unified))
            max_of_med_performance = max(max_of_med_performance, maximum(perf_med_omp_dist_unified), maximum(perf_med_omp_loop_unified))
            min_of_max_performance = min(min_of_max_performance, minimum(perf_max_omp_dist_unified), minimum(perf_max_omp_loop_unified))
            min_of_med_performance = min(min_of_med_performance, minimum(perf_med_omp_dist_unified), minimum(perf_med_omp_loop_unified))
        end
        if has_openacc
            n3_acc_ker, perf_max_acc_ker, perf_med_acc_ker, summary = read_results(glob(string(root, "/acc_ker/*.yaml")), summary, gpu[gpu_id].caption, "acc (data, kernels)")
            n3_acc_par, perf_max_acc_par, perf_med_acc_par, summary = read_results(glob(string(root, "/acc_par/*.yaml")), summary, gpu[gpu_id].caption, "acc (data, parallel)")
            max_of_max_performance = max(max_of_max_performance, maximum(perf_max_acc_ker), maximum(perf_max_acc_par))
            max_of_med_performance = max(max_of_med_performance, maximum(perf_med_acc_ker), maximum(perf_med_acc_par))
            min_of_max_performance = min(min_of_max_performance, minimum(perf_max_acc_ker), minimum(perf_max_acc_par))
            min_of_med_performance = min(min_of_med_performance, minimum(perf_med_acc_ker), minimum(perf_med_acc_par))
            if has_teams512
                n3_acc_par_teams512, perf_max_acc_par_teams512, perf_med_acc_par_teams512, summary = read_results(glob(string(root, "/teams512/acc_par/*.yaml")), summary, gpu[gpu_id].caption, "acc (data, teams512, parallel)")
            end
            if has_managed
                n3_acc_ker_managed, perf_max_acc_ker_managed, perf_med_acc_ker_managed, summary = read_results(glob(string(root, "/managed/acc_ker/*.yaml")), summary, gpu[gpu_id].caption, "acc (managed, kernels)")
                n3_acc_par_managed, perf_max_acc_par_managed, perf_med_acc_par_managed, summary = read_results(glob(string(root, "/managed/acc_par/*.yaml")), summary, gpu[gpu_id].caption, "acc (managed, parallel)")
                max_of_max_performance = max(max_of_max_performance, maximum(perf_max_acc_ker_managed), maximum(perf_max_acc_par_managed))
                max_of_med_performance = max(max_of_med_performance, maximum(perf_med_acc_ker_managed), maximum(perf_med_acc_par_managed))
                min_of_max_performance = min(min_of_max_performance, minimum(perf_max_acc_ker_managed), minimum(perf_max_acc_par_managed))
                min_of_med_performance = min(min_of_med_performance, minimum(perf_med_acc_ker_managed), minimum(perf_med_acc_par_managed))
            end
            if has_unified
                n3_acc_ker_unified, perf_max_acc_ker_unified, perf_med_acc_ker_unified, summary = read_results(glob(string(root, "/unified/acc_ker/*.yaml")), summary, gpu[gpu_id].caption, "acc (unified, kernels)")
                n3_acc_par_unified, perf_max_acc_par_unified, perf_med_acc_par_unified, summary = read_results(glob(string(root, "/unified/acc_par/*.yaml")), summary, gpu[gpu_id].caption, "acc (unified, parallel)")
                max_of_max_performance = max(max_of_max_performance, maximum(perf_max_acc_ker_unified), maximum(perf_max_acc_par_unified))
                max_of_med_performance = max(max_of_med_performance, maximum(perf_med_acc_ker_unified), maximum(perf_med_acc_par_unified))
                min_of_max_performance = min(min_of_max_performance, minimum(perf_max_acc_ker_unified), minimum(perf_max_acc_par_unified))
                min_of_med_performance = min(min_of_med_performance, minimum(perf_med_acc_ker_unified), minimum(perf_med_acc_par_unified))
            end
        end

        # best performance
        for target in [(fig=compare_system_max, ax=compare_system_max.ax[:, gpu_id])]
            for at in target.ax
                if has_cuda
                    plot_lp(target.fig, at, n3_cuda, perf_max_cuda, point_id=3, line_id=0, color_id=0, label="CUDA (miniFE 2.2.0)", open_symbol=true)
                end
                plot_lp(target.fig, at, n3_omp_45opt, perf_max_omp_45opt, point_id=0, line_id=1, color_id=0, label="omp (miniFE 2.2.0)", open_symbol=true)
            end
            if has_openacc
                plot_lp(target.fig, target.ax[begin], n3_acc_par, perf_max_acc_par, point_id=2, line_id=2, color_id=2, label="acc (parallel)")
                plot_lp(target.fig, target.ax[begin], n3_acc_ker, perf_max_acc_ker, point_id=4, line_id=3, color_id=2, label="acc (kernels)")
            end
            plot_lp(target.fig, target.ax[begin], n3_omp_dist, perf_max_omp_dist, point_id=0, line_id=2, color_id=1, label="omp (distribute)")
            plot_lp(target.fig, target.ax[begin], n3_omp_loop, perf_max_omp_loop, point_id=1, line_id=3, color_id=1, label="omp (loop)")
            if has_managed
                if has_openacc
                    plot_lp(target.fig, target.ax[2], n3_acc_par_managed, perf_max_acc_par_managed, point_id=2, line_id=2, color_id=2, label="acc (parallel)")
                    plot_lp(target.fig, target.ax[2], n3_acc_ker_managed, perf_max_acc_ker_managed, point_id=4, line_id=3, color_id=2, label="acc (kernels)")
                end
                plot_lp(target.fig, target.ax[2], n3_omp_dist_managed, perf_max_omp_dist_managed, point_id=0, line_id=2, color_id=1, label="omp (distribute)")
                plot_lp(target.fig, target.ax[2], n3_omp_loop_managed, perf_max_omp_loop_managed, point_id=1, line_id=3, color_id=1, label="omp (loop)")
            end
            if has_unified
                if has_openacc
                    plot_lp(target.fig, target.ax[3], n3_acc_par_unified, perf_max_acc_par_unified, point_id=2, line_id=2, color_id=2, label="acc (parallel)")
                    plot_lp(target.fig, target.ax[3], n3_acc_ker_unified, perf_max_acc_ker_unified, point_id=4, line_id=3, color_id=2, label="acc (kernels)")
                end
                plot_lp(target.fig, target.ax[3], n3_omp_dist_unified, perf_max_omp_dist_unified, point_id=0, line_id=2, color_id=1, label="omp (distribute)")
                plot_lp(target.fig, target.ax[3], n3_omp_loop_unified, perf_max_omp_loop_unified, point_id=1, line_id=3, color_id=1, label="omp (loop)")
            end
        end

        # # median performance (single panel, upper panel | specific GPU, GPU comparison)
        # for target in [(fig=perf_med, ax=perf_med.ax[begin]), (fig=system_med, ax=system_med.ax[end]), (fig=compare_med, ax=compare_med.ax[gpu_id, begin]), (fig=compare_system_med, ax=compare_system_med.ax[gpu_id, end])]
        #     if has_cuda
        #         plot_lp(target.fig, target.ax, n3_cuda, perf_med_cuda, point_id=3, line_id=0, color_id=0, label="CUDA (miniFE 2.2.0)", open_symbol=true)
        #     end
        #     plot_lp(target.fig, target.ax, n3_omp_45opt, perf_med_omp_45opt, point_id=0, line_id=1, color_id=0, label="omp (miniFE 2.2.0)", open_symbol=true)
        #     if has_openacc
        #         plot_lp(target.fig, target.ax, n3_acc_par, perf_med_acc_par, point_id=2, line_id=2, color_id=2, label="acc (parallel)")
        #         plot_lp(target.fig, target.ax, n3_acc_ker, perf_med_acc_ker, point_id=4, line_id=3, color_id=2, label="acc (kernels)")
        #     end
        #     plot_lp(target.fig, target.ax, n3_omp_dist, perf_med_omp_dist, point_id=0, line_id=2, color_id=1, label="omp (distribute)")
        #     plot_lp(target.fig, target.ax, n3_omp_loop, perf_med_omp_loop, point_id=1, line_id=3, color_id=1, label="omp (loop)")
        # end
    end

    # output summary CSV file
    summary |> CSV.write(string("miniFE", "_stats", "_nvhpc", ".csv"), delim=',', writeheader=true)

    for target in [(fig=compare_system_max, perf_min=min_of_max_performance, perf_max=max_of_max_performance), (fig=compare_system_med, perf_min=min_of_med_performance, perf_max=max_of_med_performance)]
        fig = target.fig
        for at in fig.ax
            at.set_ylim(util_pyplot.scale_axis(target.perf_min, target.perf_max, logPlt=false))
            at.semilogx()
            at.set_xticks([128^3, 192^3, 256^3, 384^3])
            at.grid()
        end
        for ii in 1:fig.nx
            at = fig.ax[ii, begin]
            at.set_xticklabels([L"$128^3$", L"$192^3$", L"$256^3$", L"$384^3$"])
            set_xlabel(fig, at, L"$N_x N_y N_z$")
        end
        for at in fig.ax[begin, :]
            set_ylabel(fig, at, L"\unit{GFlop/s}")
        end

        for ii in 1:fig.nx
            modetag::String = ""
            if ii == 1
                modetag = "data directive"
            elseif ii == 2
                modetag = "managed"
            elseif ii == 3
                modetag = "unified"
            end
            for jj in 1:fig.ny
                maptag::String = ""
                # if ii == 1
                #     maptag = gpu[jj].caption
                # end
                maptag = gpu[jj].caption
                id = (ii - 1) + fig.nx * (fig.ny - jj)
                caption = string("(", Char(97 + id), ")")
                at = fig.ax[ii, jj]
                at.text(0.03, 0.96, string(caption, "~", maptag, ", ", modetag), color="black", fontsize=fig.fs, horizontalalignment="left", verticalalignment="top", transform=at.transAxes, bbox=Dict("facecolor" => "white", "edgecolor" => "None", "alpha" => 0.75))
            end
            at = fig.ax[ii, end]
            handles, labels = at.get_legend_handles_labels()
            at.legend(handles[end:-1:begin], labels[end:-1:begin], numpoints=1, handlelength=2.0, loc="best", fontsize=fig.fs)
            handles = nothing
            labels = nothing
        end
    end

    # save figures
    if !ispath("fig")
        mkdir("fig")
    end
    compare_system_max.fig.savefig(string("fig/", "miniFE", "_nvhpc", "_max", ".png"), format="png", dpi=100, bbox_inches="tight")
    compare_system_med.fig.savefig(string("fig/", "miniFE", "_nvhpc", "_med", ".png"), format="png", dpi=100, bbox_inches="tight")
    if output_pdf
        compare_system_max.fig.savefig(string("fig/", "miniFE", "_nvhpc", "_max", ".pdf"), bbox_inches="tight")
        compare_system_med.fig.savefig(string("fig/", "miniFE", "_nvhpc", "_med", ".pdf"), bbox_inches="tight")
    end

    compare_system_max = nothing
    compare_system_med = nothing
    PyPlot.close("all")
    return nothing
end


main()
