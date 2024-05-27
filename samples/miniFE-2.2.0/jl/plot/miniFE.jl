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

    Ngpu = 4
    gpu = Array{gpu_config,1}(undef, Ngpu)
    gpu[1] = gpu_config(name="h100sxm", root="mercury/h100sxm", has_cuda=true, has_openacc=true, caption="NVIDIA H100 SXM 80GB")
    gpu[2] = gpu_config(name="gh200", root="mercury/gh200", has_cuda=true, has_openacc=true, caption="NVIDIA GH200 480GB")
    gpu[3] = gpu_config(name="mi210", root="milan2/mi210", caption="AMD Instinct MI210")
    gpu[4] = gpu_config(name="pvc", root="spr2/pvc", caption="Intel DC GPU Max 1100")

    compare_max = util_pyplot.set_Panel(nx=Ngpu)
    compare_med = util_pyplot.set_Panel(nx=Ngpu)
    compare_speedup_max = util_pyplot.set_Panel(nx=Ngpu)
    compare_speedup_med = util_pyplot.set_Panel(nx=Ngpu)
    compare_system_max = util_pyplot.set_Panel(nx=Ngpu, ny=2)
    compare_system_med = util_pyplot.set_Panel(nx=Ngpu, ny=2)

    max_of_max_performance::Float32 = 0.0
    max_of_med_performance::Float32 = 0.0
    min_of_max_performance = typemax(Float32)
    min_of_med_performance = typemax(Float32)
    max_of_max_speedup::Float32 = 0.0
    max_of_med_speedup::Float32 = 0.0
    min_of_max_speedup = typemax(Float32)
    min_of_med_speedup = typemax(Float32)

    # prepare summary CSV file
    summary = DataFrame(GPU=[], lang=[], NxNyNz=[], perf_max=[], perf_med=[], perf_avg=[], perf_min=[], trials=[])

    for gpu_id in 1:Ngpu
        root = gpu[gpu_id].root
        has_cuda = gpu[gpu_id].has_cuda
        has_openacc = gpu[gpu_id].has_openacc
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
        n3_omp_dist, perf_max_omp_dist, perf_med_omp_dist, summary = read_results(glob(string(root, "/omp_dist/*.yaml")), summary, gpu[gpu_id].caption, "omp (distribute)")
        n3_omp_loop, perf_max_omp_loop, perf_med_omp_loop, summary = read_results(glob(string(root, "/omp_loop/*.yaml")), summary, gpu[gpu_id].caption, "omp (loop)")
        max_of_max_performance = max(max_of_max_performance, maximum(perf_max_omp_45opt), maximum(perf_max_omp_dist), maximum(perf_max_omp_loop))
        max_of_med_performance = max(max_of_med_performance, maximum(perf_med_omp_45opt), maximum(perf_med_omp_dist), maximum(perf_med_omp_loop))
        min_of_max_performance = min(min_of_max_performance, minimum(perf_max_omp_45opt), minimum(perf_max_omp_dist), minimum(perf_max_omp_loop))
        min_of_med_performance = min(min_of_med_performance, minimum(perf_med_omp_45opt), minimum(perf_med_omp_dist), minimum(perf_med_omp_loop))
        max_of_max_speedup = max(max_of_max_speedup, maximum(perf_max_omp_dist ./ perf_max_omp_45opt), maximum(perf_max_omp_loop ./ perf_max_omp_45opt))
        max_of_med_speedup = max(max_of_med_speedup, maximum(perf_med_omp_dist ./ perf_med_omp_45opt), maximum(perf_med_omp_loop ./ perf_med_omp_45opt))
        min_of_max_speedup = min(min_of_max_speedup, minimum(perf_max_omp_dist ./ perf_max_omp_45opt), minimum(perf_max_omp_loop ./ perf_max_omp_45opt))
        min_of_med_speedup = min(min_of_med_speedup, minimum(perf_med_omp_dist ./ perf_med_omp_45opt), minimum(perf_med_omp_loop ./ perf_med_omp_45opt))
        if has_openacc
            n3_acc_ker, perf_max_acc_ker, perf_med_acc_ker, summary = read_results(glob(string(root, "/acc_ker/*.yaml")), summary, gpu[gpu_id].caption, "acc (kernels)")
            n3_acc_par, perf_max_acc_par, perf_med_acc_par, summary = read_results(glob(string(root, "/acc_par/*.yaml")), summary, gpu[gpu_id].caption, "acc (parallel)")
            max_of_max_performance = max(max_of_max_performance, maximum(perf_max_acc_ker), maximum(perf_max_acc_par))
            max_of_med_performance = max(max_of_med_performance, maximum(perf_med_acc_ker), maximum(perf_med_acc_par))
            min_of_max_performance = min(min_of_max_performance, minimum(perf_max_acc_ker), minimum(perf_max_acc_par))
            min_of_med_performance = min(min_of_med_performance, minimum(perf_med_acc_ker), minimum(perf_med_acc_par))
            max_of_max_speedup = max(max_of_max_speedup, maximum(perf_max_acc_ker ./ perf_max_omp_45opt), maximum(perf_max_acc_par ./ perf_max_omp_45opt))
            max_of_med_speedup = max(max_of_med_speedup, maximum(perf_med_acc_ker ./ perf_med_omp_45opt), maximum(perf_med_acc_par ./ perf_med_omp_45opt))
            min_of_max_speedup = min(min_of_max_speedup, minimum(perf_max_acc_ker ./ perf_max_omp_45opt), minimum(perf_max_acc_par ./ perf_max_omp_45opt))
            min_of_med_speedup = min(min_of_med_speedup, minimum(perf_med_acc_ker ./ perf_med_omp_45opt), minimum(perf_med_acc_par ./ perf_med_omp_45opt))
        end

        perf_max = util_pyplot.set_Panel()
        perf_med = util_pyplot.set_Panel()
        speedup_max = util_pyplot.set_Panel()
        speedup_med = util_pyplot.set_Panel()
        system_max = util_pyplot.set_Panel(ny=2)
        system_med = util_pyplot.set_Panel(ny=2)

        # best performance (single panel, upper panel | specific GPU, GPU comparison)
        for target in [(fig=perf_max, ax=perf_max.ax[begin]), (fig=system_max, ax=system_max.ax[end]), (fig=compare_max, ax=compare_max.ax[gpu_id, begin]), (fig=compare_system_max, ax=compare_system_max.ax[gpu_id, end])]
            if has_cuda
                plot_lp(target.fig, target.ax, n3_cuda, perf_max_cuda, point_id=3, line_id=0, color_id=0, label="CUDA (miniFE 2.2.0)", open_symbol=true)
            end
            plot_lp(target.fig, target.ax, n3_omp_45opt, perf_max_omp_45opt, point_id=0, line_id=1, color_id=0, label="omp (miniFE 2.2.0)", open_symbol=true)
            if has_openacc
                plot_lp(target.fig, target.ax, n3_acc_par, perf_max_acc_par, point_id=2, line_id=2, color_id=2, label="acc (parallel)")
                plot_lp(target.fig, target.ax, n3_acc_ker, perf_max_acc_ker, point_id=4, line_id=3, color_id=2, label="acc (kernels)")
            end
            plot_lp(target.fig, target.ax, n3_omp_dist, perf_max_omp_dist, point_id=0, line_id=2, color_id=1, label="omp (distribute)")
            plot_lp(target.fig, target.ax, n3_omp_loop, perf_max_omp_loop, point_id=1, line_id=3, color_id=1, label="omp (loop)")
        end

        # median performance (single panel, upper panel | specific GPU, GPU comparison)
        for target in [(fig=perf_med, ax=perf_med.ax[begin]), (fig=system_med, ax=system_med.ax[end]), (fig=compare_med, ax=compare_med.ax[gpu_id, begin]), (fig=compare_system_med, ax=compare_system_med.ax[gpu_id, end])]
            if has_cuda
                plot_lp(target.fig, target.ax, n3_cuda, perf_med_cuda, point_id=3, line_id=0, color_id=0, label="CUDA (miniFE 2.2.0)", open_symbol=true)
            end
            plot_lp(target.fig, target.ax, n3_omp_45opt, perf_med_omp_45opt, point_id=0, line_id=1, color_id=0, label="omp (miniFE 2.2.0)", open_symbol=true)
            if has_openacc
                plot_lp(target.fig, target.ax, n3_acc_par, perf_med_acc_par, point_id=2, line_id=2, color_id=2, label="acc (parallel)")
                plot_lp(target.fig, target.ax, n3_acc_ker, perf_med_acc_ker, point_id=4, line_id=3, color_id=2, label="acc (kernels)")
            end
            plot_lp(target.fig, target.ax, n3_omp_dist, perf_med_omp_dist, point_id=0, line_id=2, color_id=1, label="omp (distribute)")
            plot_lp(target.fig, target.ax, n3_omp_loop, perf_med_omp_loop, point_id=1, line_id=3, color_id=1, label="omp (loop)")
        end

        # speedup of best performance (single panel, lower panel | specific GPU, GPU comparison)
        for target in [(fig=speedup_max, ax=speedup_max.ax[begin]), (fig=system_max, ax=system_max.ax[begin]), (fig=compare_speedup_max, ax=compare_speedup_max.ax[gpu_id, begin]), (fig=compare_system_max, ax=compare_system_max.ax[gpu_id, begin])]
            if has_openacc
                plot_lp(target.fig, target.ax, n3_acc_par, perf_max_acc_par ./ perf_max_omp_45opt, point_id=2, line_id=2, color_id=2, label="acc (parallel)")
                plot_lp(target.fig, target.ax, n3_acc_ker, perf_max_acc_ker ./ perf_max_omp_45opt, point_id=4, line_id=3, color_id=2, label="acc (kernels)")
            end
            plot_lp(target.fig, target.ax, n3_omp_dist, perf_max_omp_dist ./ perf_max_omp_45opt, point_id=0, line_id=2, color_id=1, label="omp (distribute)")
            plot_lp(target.fig, target.ax, n3_omp_loop, perf_max_omp_loop ./ perf_max_omp_45opt, point_id=1, line_id=3, color_id=1, label="omp (loop)")
        end

        # speedup of median performance (single panel, lower panel | specific GPU, GPU comparison)
        for target in [(fig=speedup_med, ax=speedup_med.ax[begin]), (fig=system_med, ax=system_med.ax[begin]), (fig=compare_speedup_med, ax=compare_speedup_med.ax[gpu_id, begin]), (fig=compare_system_med, ax=compare_system_med.ax[gpu_id, begin])]
            if has_openacc
                plot_lp(target.fig, target.ax, n3_acc_par, perf_med_acc_par ./ perf_med_omp_45opt, point_id=2, line_id=2, color_id=2, label="acc (parallel)")
                plot_lp(target.fig, target.ax, n3_acc_ker, perf_med_acc_ker ./ perf_med_omp_45opt, point_id=4, line_id=3, color_id=2, label="acc (kernels)")
            end
            plot_lp(target.fig, target.ax, n3_omp_dist, perf_med_omp_dist ./ perf_med_omp_45opt, point_id=0, line_id=2, color_id=1, label="omp (distribute)")
            plot_lp(target.fig, target.ax, n3_omp_loop, perf_med_omp_loop ./ perf_med_omp_45opt, point_id=1, line_id=3, color_id=1, label="omp (loop)")
        end

        for fig in [perf_max, perf_med, speedup_max, speedup_med]
            at = fig.ax[begin]
            at.semilogx()
            at.set_xticks([128^3, 192^3, 256^3, 384^3])
            at.set_xticklabels([L"$128^3$", L"$192^3$", L"$256^3$", L"$384^3$"])
            at.grid()
            set_xlabel(fig, at, L"$N_x N_y N_z$")
        end
        for fig in [perf_max, perf_med]
            set_ylabel(fig, fig.ax[begin], L"\unit{GFlop/s}")
        end
        for fig in [speedup_max, speedup_med]
            set_ylabel(fig, fig.ax[begin], "Ratio to omp (miniFE 2.2.0)")
        end

        for fig in [system_max, system_med]
            for at in fig.ax
                at.semilogx()
                at.set_xticks([128^3, 192^3, 256^3, 384^3])
                at.set_xticklabels([L"$128^3$", L"$192^3$", L"$256^3$", L"$384^3$"])
                at.grid()
            end
            set_xlabel(fig, fig.ax[begin, begin], L"$N_x N_y N_z$")
            set_ylabel(fig, fig.ax[begin, end], L"\unit{GFlop/s}")
            set_ylabel(fig, fig.ax[begin, begin], "Ratio to omp (miniFE 2.2.0)")
        end

        # set label
        for fig in [perf_max, perf_med, speedup_max, speedup_med]
            at = fig.ax[begin]
            handles, labels = at.get_legend_handles_labels()
            at.legend(handles[end:-1:begin], labels[end:-1:begin], numpoints=1, handlelength=2.0, loc="best", fontsize=0.8 * fig.fs)
            handles = nothing
            labels = nothing
        end

        for fig in [system_max, system_med]
            # add caption
            for ii in 1:fig.nx
                for jj in 1:fig.ny
                    maptag::String = ""
                    id = (ii - 1) + fig.nx * (fig.ny - jj)
                    caption = string("(", Char(97 + id), ")")
                    at = fig.ax[ii, jj]
                    at.text(0.05, 0.95, string(caption, "~", maptag), color="black", fontsize=fig.fs, horizontalalignment="left", verticalalignment="top", transform=at.transAxes, bbox=Dict("facecolor" => "white", "edgecolor" => "None", "alpha" => 0.75))
                end
            end
            # set label
            at = fig.ax[begin, end]
            handles, labels = at.get_legend_handles_labels()
            at.legend(handles[end:-1:begin], labels[end:-1:begin], numpoints=1, handlelength=2.0, loc="best", fontsize=fig.fs)
            handles = nothing
            labels = nothing
        end

        # save figures
        if !ispath("fig")
            mkdir("fig")
        end
        perf_max.fig.savefig(string("fig/", "miniFE", "_flops", "_max", "_", name, ".png"), format="png", dpi=100, bbox_inches="tight")
        perf_med.fig.savefig(string("fig/", "miniFE", "_flops", "_med", "_", name, ".png"), format="png", dpi=100, bbox_inches="tight")
        speedup_max.fig.savefig(string("fig/", "miniFE", "_ratio", "_max", "_", name, ".png"), format="png", dpi=100, bbox_inches="tight")
        speedup_med.fig.savefig(string("fig/", "miniFE", "_ratio", "_med", "_", name, ".png"), format="png", dpi=100, bbox_inches="tight")
        system_max.fig.savefig(string("fig/", "miniFE", "_max", "_", name, ".png"), format="png", dpi=100, bbox_inches="tight")
        system_med.fig.savefig(string("fig/", "miniFE", "_med", "_", name, ".png"), format="png", dpi=100, bbox_inches="tight")
        if output_pdf
            perf_max.fig.savefig(string("fig/", "miniFE", "_flops", "_max", "_", name, ".pdf"), format="pdf", bbox_inches="tight")
            perf_med.fig.savefig(string("fig/", "miniFE", "_flops", "_med", "_", name, ".pdf"), format="pdf", bbox_inches="tight")
            speedup_max.fig.savefig(string("fig/", "miniFE", "_ratio", "_max", "_", name, ".pdf"), format="pdf", bbox_inches="tight")
            speedup_med.fig.savefig(string("fig/", "miniFE", "_ratio", "_med", "_", name, ".pdf"), format="pdf", bbox_inches="tight")
            system_max.fig.savefig(string("fig/", "miniFE", "_max", "_", name, ".pdf"), format="pdf", bbox_inches="tight")
            system_med.fig.savefig(string("fig/", "miniFE", "_med", "_", name, ".pdf"), format="pdf", bbox_inches="tight")
        end

        PyPlot.close(perf_max.fig)
        PyPlot.close(perf_med.fig)
        PyPlot.close(speedup_max.fig)
        PyPlot.close(speedup_med.fig)
        PyPlot.close(system_max.fig)
        PyPlot.close(system_med.fig)
        perf_max = nothing
        perf_med = nothing
        speedup_max = nothing
        speedup_med = nothing
        system_max = nothing
        system_med = nothing
    end

    # output summary CSV file
    summary |> CSV.write(string("miniFE", "_stats", ".csv"), delim=',', writeheader=true)

    for at in compare_max.ax
        at.set_ylim(util_pyplot.scale_axis(min_of_max_performance, max_of_max_performance, logPlt=false))
    end
    for at in compare_med.ax
        at.set_ylim(util_pyplot.scale_axis(min_of_med_performance, max_of_med_performance, logPlt=false))
    end
    for at in compare_speedup_max.ax
        at.set_ylim(util_pyplot.scale_axis(min_of_max_speedup, max_of_max_speedup, logPlt=false))
    end
    for at in compare_speedup_med.ax
        at.set_ylim(util_pyplot.scale_axis(min_of_med_speedup, max_of_med_speedup, logPlt=false))
    end
    for fig in [compare_max, compare_med, compare_speedup_max, compare_speedup_med]
        for at in fig.ax
            at.semilogx()
            at.set_xticks([128^3, 192^3, 256^3, 384^3])
            at.set_xticklabels([L"$128^3$", L"$192^3$", L"$256^3$", L"$384^3$"])
            at.grid()
            set_xlabel(fig, at, L"$N_x N_y N_z$")
        end
    end
    for fig in [compare_max, compare_med]
        set_ylabel(fig, fig.ax[begin], L"\unit{GFlop/s}")
    end
    for fig in [compare_speedup_max, compare_speedup_med]
        set_ylabel(fig, fig.ax[begin], "Ratio to omp (miniFE 2.2.0)")
    end
    for fig in [compare_max, compare_med, compare_speedup_max, compare_speedup_med]
        for ii in 1:fig.nx
            maptag = gpu[ii].caption
            id = (ii - 1)
            caption = string("(", Char(97 + id), ")")
            at = fig.ax[ii]
            at.text(0.03, 0.97, string(caption, "~", maptag), color="black", fontsize=fig.fs, horizontalalignment="left", verticalalignment="top", transform=at.transAxes, bbox=Dict("facecolor" => "white", "edgecolor" => "None", "alpha" => 0.75))

            handles, labels = at.get_legend_handles_labels()
            at.legend(handles[end:-1:begin], labels[end:-1:begin], numpoints=1, handlelength=2.0, loc="best", fontsize=fig.fs)
            handles = nothing
            labels = nothing
        end
    end

    for target in [(fig=compare_system_max, perf_min=min_of_max_performance, perf_max=max_of_max_performance, speedup_min=min_of_max_speedup, speedup_max=max_of_max_speedup), (fig=compare_system_med, perf_min=min_of_med_performance, perf_max=max_of_med_performance, speedup_min=min_of_med_speedup, speedup_max=max_of_med_speedup)]
        fig = target.fig
        for ii in 1:fig.nx
            fig.ax[ii, end].set_ylim(util_pyplot.scale_axis(target.perf_min, target.perf_max, logPlt=false))
            fig.ax[ii, begin].set_ylim(util_pyplot.scale_axis(target.speedup_min, target.speedup_max, logPlt=false))
        end
        for at in fig.ax
            at.semilogx()
            at.set_xticks([128^3, 192^3, 256^3, 384^3])
            at.grid()
        end
        for ii in 1:fig.nx
            at = fig.ax[ii, begin]
            at.set_xticklabels([L"$128^3$", L"$192^3$", L"$256^3$", L"$384^3$"])
            set_xlabel(fig, at, L"$N_x N_y N_z$")
        end
        set_ylabel(fig, fig.ax[begin, end], L"\unit{GFlop/s}")
        set_ylabel(fig, fig.ax[begin, begin], "Ratio to omp (miniFE 2.2.0)")

        for ii in 1:fig.nx
            for jj in 1:fig.ny
                maptag::String = ""
                if jj == fig.ny
                    maptag = gpu[ii].caption
                end
                id = (ii - 1) + fig.nx * (fig.ny - jj)
                caption = string("(", Char(97 + id), ")")
                at = fig.ax[ii, jj]
                at.text(0.03, 0.96, string(caption, "~", maptag), color="black", fontsize=fig.fs, horizontalalignment="left", verticalalignment="top", transform=at.transAxes, bbox=Dict("facecolor" => "white", "edgecolor" => "None", "alpha" => 0.75))
            end
            at = fig.ax[ii, end]
            handles, labels = at.get_legend_handles_labels()
            at.legend(handles[end:-1:begin], labels[end:-1:begin], numpoints=1, handlelength=2.0, loc="best", fontsize=fig.fs)
            handles = nothing
            labels = nothing
        end
    end

    # save figures
    compare_max.fig.savefig(string("fig/", "miniFE", "_flops", "_max", ".png"), format="png", dpi=100, bbox_inches="tight")
    compare_med.fig.savefig(string("fig/", "miniFE", "_flops", "_med", ".png"), format="png", dpi=100, bbox_inches="tight")
    compare_speedup_max.fig.savefig(string("fig/", "miniFE", "_ratio", "_max", ".png"), format="png", dpi=100, bbox_inches="tight")
    compare_speedup_med.fig.savefig(string("fig/", "miniFE", "_ratio", "_med", ".png"), format="png", dpi=100, bbox_inches="tight")
    compare_system_max.fig.savefig(string("fig/", "miniFE", "_max", ".png"), format="png", dpi=100, bbox_inches="tight")
    compare_system_med.fig.savefig(string("fig/", "miniFE", "_med", ".png"), format="png", dpi=100, bbox_inches="tight")
    if output_pdf
        compare_max.fig.savefig(string("fig/", "miniFE", "_flops", "_max", ".pdf"), bbox_inches="tight")
        compare_med.fig.savefig(string("fig/", "miniFE", "_flops", "_med", ".pdf"), bbox_inches="tight")
        compare_speedup_max.fig.savefig(string("fig/", "miniFE", "_ratio", "_max", ".pdf"), bbox_inches="tight")
        compare_speedup_med.fig.savefig(string("fig/", "miniFE", "_ratio", "_med", ".pdf"), bbox_inches="tight")
        compare_system_max.fig.savefig(string("fig/", "miniFE", "_max", ".pdf"), bbox_inches="tight")
        compare_system_med.fig.savefig(string("fig/", "miniFE", "_med", ".pdf"), bbox_inches="tight")
    end

    compare_max = nothing
    compare_med = nothing
    compare_speedup_max = nothing
    compare_speedup_med = nothing
    compare_system_max = nothing
    compare_system_med = nothing
    PyPlot.close("all")
    return nothing
end


main()
