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

using DataFrames
using CSV
function read_csv(file::String)
    csv = CSV.read(file, DataFrame)
    return csv
end

function get_performance_log(file::String)
    # read observed monitor
    result = read_csv(file)

    nx = result."nx"
    ny = result."ny"
    nz = result."nz"
    perf = result."Flop/s"

    return nx, ny, nz, perf
end

using DataFrames
using Statistics
function read_results(file_list, summary, GPU, lang, mode)
    nx_list = []
    ny_list = []
    nz_list = []
    perf_list = []
    for file in file_list
        nx, ny, nz, perf = get_performance_log(file)
        append!(nx_list, nx)
        append!(ny_list, ny)
        append!(nz_list, nz)
        append!(perf_list, perf)
    end
    df = DataFrame(nx=nx_list, ny=ny_list, nz=nz_list, n3=nx_list .* ny_list .* nz_list, perf=perf_list * 1.0e-9)

    n3 = sort(unique(df.n3))
    perf_max = []
    perf_med = []
    for ii = eachindex(n3)
        data = df[df.n3.==n3[ii], :]."perf"
        append!(perf_max, maximum(data))
        append!(perf_med, Statistics.median(data))
        push!(summary, (GPU, lang, mode, n3[ii], perf_max[end], perf_med[end], Statistics.mean(data), minimum(data), length(data)))
    end

    return n3, perf_max, perf_med, summary
end


using PyPlot
include("../util/pyplot.jl")


function plot_lp(fig, at, x, y; point_id=0, line_id=0, color_id=0, label="", open_symbol=false)
    if open_symbol
        at.plot(x, y, util_pyplot.call(fig.point, id=point_id), markersize=fig.ms, linestyle=util_pyplot.call(fig.line, id=line_id), linewidth=fig.lw, color=util_pyplot.call(fig.color, id=color_id), label=label, markerfacecolor="none")
    else
        at.plot(x, y, util_pyplot.call(fig.point, id=point_id), markersize=fig.ms, linestyle=util_pyplot.call(fig.line, id=line_id), linewidth=fig.lw, color=util_pyplot.call(fig.color, id=color_id), label=label)
    end
end

function plot_lp_multi(fig, at, x1, y1, x2, y2, x3, y3, x4, y4; point_id=0, line_id=0, color_id=0, label="", open_symbol=false)
    plot_lp(fig, at[1], x1, y1, point_id=point_id, line_id=line_id, color_id=color_id, label=label, open_symbol=open_symbol)
    plot_lp(fig, at[2], x2, y2, point_id=point_id, line_id=line_id, color_id=color_id, label=label, open_symbol=open_symbol)
    plot_lp(fig, at[3], x3, y3, point_id=point_id, line_id=line_id, color_id=color_id, label=label, open_symbol=open_symbol)
    plot_lp(fig, at[4], x4, y4, point_id=point_id, line_id=line_id, color_id=color_id, label=label, open_symbol=open_symbol)
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
    has_openacc::Bool = false
    caption::String
    has_managed::Bool = false
    has_unified::Bool = false
    set_first_touch::Bool = false
end

using DataFrames
using Statistics
using Glob
function main()
    # read options
    argv = parse_cmd()
    output_pdf = argv["pdf"]

    # initialize matplotlib
    util_pyplot.config()

    Ngpu = 2
    gpu = Array{gpu_config,1}(undef, Ngpu)
    gpu[1] = gpu_config(name="h100sxm", root="h100sxm", has_openacc=true, has_managed=true, caption="NVIDIA H100 SXM 80GB")
    gpu[2] = gpu_config(name="gh200", root="gh200", has_openacc=true, has_managed=true, has_unified=true, set_first_touch=true, caption="NVIDIA GH200 480GB")
    # gpu[3] = gpu_config(name="mi210", root="mi210", caption="AMD Instinct MI210")
    # gpu[4] = gpu_config(name="pvc", root="pvc", caption="Intel Data Center GPU Max 1100")

    Ncomp = 4
    compare_max = util_pyplot.set_Panel(nx=Ncomp, ny=Ngpu)
    compare_med = util_pyplot.set_Panel(nx=Ncomp, ny=Ngpu)

    max_of_perf_max::Float32 = 0.0
    max_of_perf_med::Float32 = 0.0
    min_of_perf_max = typemax(Float32)
    min_of_perf_med = typemax(Float32)

    # prepare summary CSV file
    summary = DataFrame(GPU=[], lang=[], mode=[], n3=[], perf_max=[], perf_med=[], perf_avg=[], perf_min=[], trials=[])

    for gpu_id in 1:Ngpu
        root = gpu[gpu_id].root
        name = gpu[gpu_id].name
        has_openacc = gpu[gpu_id].has_openacc
        has_managed = gpu[gpu_id].has_managed
        has_unified = gpu[gpu_id].has_unified
        set_first_touch = gpu[gpu_id].set_first_touch

        # read measured performance
        N_omp_loop, perf_max_omp_loop, perf_med_omp_loop, summary = read_results(glob(string(root, "/iterate/model0/diffusion_benchmark_*.csv")), summary, gpu[gpu_id].caption, "omp (loop)", "data")
        N_omp_dist, perf_max_omp_dist, perf_med_omp_dist, summary = read_results(glob(string(root, "/iterate/model1/diffusion_benchmark_*.csv")), summary, gpu[gpu_id].caption, "omp (distribute)", "data")
        max_of_perf_max = max(max_of_perf_max, maximum(perf_max_omp_dist), maximum(perf_max_omp_loop))
        max_of_perf_med = max(max_of_perf_med, maximum(perf_med_omp_dist), maximum(perf_med_omp_loop))
        min_of_perf_max = min(min_of_perf_max, minimum(perf_max_omp_dist), minimum(perf_max_omp_loop))
        min_of_perf_med = min(min_of_perf_med, minimum(perf_med_omp_dist), minimum(perf_med_omp_loop))
        if has_openacc
            N_acc_ker, perf_max_acc_ker, perf_med_acc_ker, summary = read_results(glob(string(root, "/iterate/model2/diffusion_benchmark_*.csv")), summary, gpu[gpu_id].caption, "acc (kernels)", "data")
            N_acc_par, perf_max_acc_par, perf_med_acc_par, summary = read_results(glob(string(root, "/iterate/model3/diffusion_benchmark_*.csv")), summary, gpu[gpu_id].caption, "acc (parallel)", "data")
            max_of_perf_max = max(max_of_perf_max, maximum(perf_max_acc_ker), maximum(perf_max_acc_par))
            max_of_perf_med = max(max_of_perf_med, maximum(perf_med_acc_ker), maximum(perf_med_acc_par))
            min_of_perf_max = min(min_of_perf_max, minimum(perf_max_acc_ker), minimum(perf_max_acc_par))
            min_of_perf_med = min(min_of_perf_med, minimum(perf_med_acc_ker), minimum(perf_med_acc_par))
        end
        if has_managed
            N_omp_loop_managed, perf_max_omp_loop_managed, perf_med_omp_loop_managed, summary = read_results(glob(string(root, "/iterate/model4/diffusion_benchmark_*.csv")), summary, gpu[gpu_id].caption, "omp (loop)", "managed")
            N_omp_dist_managed, perf_max_omp_dist_managed, perf_med_omp_dist_managed, summary = read_results(glob(string(root, "/iterate/model5/diffusion_benchmark_*.csv")), summary, gpu[gpu_id].caption, "omp (distribute)", "managed")
            max_of_perf_max = max(max_of_perf_max, maximum(perf_max_omp_dist_managed), maximum(perf_max_omp_loop_managed))
            max_of_perf_med = max(max_of_perf_med, maximum(perf_med_omp_dist_managed), maximum(perf_med_omp_loop_managed))
            min_of_perf_max = min(min_of_perf_max, minimum(perf_max_omp_dist_managed), minimum(perf_max_omp_loop_managed))
            min_of_perf_med = min(min_of_perf_med, minimum(perf_med_omp_dist_managed), minimum(perf_med_omp_loop_managed))
            if has_openacc
                N_acc_ker_managed, perf_max_acc_ker_managed, perf_med_acc_ker_managed, summary = read_results(glob(string(root, "/iterate/model6/diffusion_benchmark_*.csv")), summary, gpu[gpu_id].caption, "acc (kernels)", "managed")
                N_acc_par_managed, perf_max_acc_par_managed, perf_med_acc_par_managed, summary = read_results(glob(string(root, "/iterate/model7/diffusion_benchmark_*.csv")), summary, gpu[gpu_id].caption, "acc (parallel)", "managed")
                max_of_perf_max = max(max_of_perf_max, maximum(perf_max_acc_ker_managed), maximum(perf_max_acc_par_managed))
                max_of_perf_med = max(max_of_perf_med, maximum(perf_med_acc_ker_managed), maximum(perf_med_acc_par_managed))
                min_of_perf_max = min(min_of_perf_max, minimum(perf_max_acc_ker_managed), minimum(perf_max_acc_par_managed))
                min_of_perf_med = min(min_of_perf_med, minimum(perf_med_acc_ker_managed), minimum(perf_med_acc_par_managed))
            end
        end
        if has_unified
            N_omp_loop_unified, perf_max_omp_loop_unified, perf_med_omp_loop_unified, summary = read_results(glob(string(root, "/iterate/model8/diffusion_benchmark_*.csv")), summary, gpu[gpu_id].caption, "omp (loop)", "unified")
            N_omp_dist_unified, perf_max_omp_dist_unified, perf_med_omp_dist_unified, summary = read_results(glob(string(root, "/iterate/model9/diffusion_benchmark_*.csv")), summary, gpu[gpu_id].caption, "omp (distribute)", "unified")
            max_of_perf_max = max(max_of_perf_max, maximum(perf_max_omp_dist_unified), maximum(perf_max_omp_loop_unified))
            max_of_perf_med = max(max_of_perf_med, maximum(perf_med_omp_dist_unified), maximum(perf_med_omp_loop_unified))
            min_of_perf_max = min(min_of_perf_max, minimum(perf_max_omp_dist_unified), minimum(perf_max_omp_loop_unified))
            min_of_perf_med = min(min_of_perf_med, minimum(perf_med_omp_dist_unified), minimum(perf_med_omp_loop_unified))
            if has_openacc
                N_acc_ker_unified, perf_max_acc_ker_unified, perf_med_acc_ker_unified, summary = read_results(glob(string(root, "/iterate/model10/diffusion_benchmark_*.csv")), summary, gpu[gpu_id].caption, "acc (kernels)", "unified")
                N_acc_par_unified, perf_max_acc_par_unified, perf_med_acc_par_unified, summary = read_results(glob(string(root, "/iterate/model11/diffusion_benchmark_*.csv")), summary, gpu[gpu_id].caption, "acc (parallel)", "unified")
                max_of_perf_max = max(max_of_perf_max, maximum(perf_max_acc_ker_unified), maximum(perf_max_acc_par_unified))
                max_of_perf_med = max(max_of_perf_med, maximum(perf_med_acc_ker_unified), maximum(perf_med_acc_par_unified))
                min_of_perf_max = min(min_of_perf_max, minimum(perf_max_acc_ker_unified), minimum(perf_max_acc_par_unified))
                min_of_perf_med = min(min_of_perf_med, minimum(perf_med_acc_ker_unified), minimum(perf_med_acc_par_unified))
            end

            if set_first_touch
                N_omp_loop_unified_first_touch, perf_max_omp_loop_unified_first_touch, perf_med_omp_loop_unified_first_touch, summary = read_results(glob(string(root, "/iterate/model12/diffusion_benchmark_*.csv")), summary, gpu[gpu_id].caption, "omp (loop)", "unified, first touch")
                N_omp_dist_unified_first_touch, perf_max_omp_dist_unified_first_touch, perf_med_omp_dist_unified_first_touch, summary = read_results(glob(string(root, "/iterate/model13/diffusion_benchmark_*.csv")), summary, gpu[gpu_id].caption, "omp (distribute)", "unified, first touch")
                max_of_perf_max = max(max_of_perf_max, maximum(perf_max_omp_dist_unified_first_touch), maximum(perf_max_omp_loop_unified_first_touch))
                max_of_perf_med = max(max_of_perf_med, maximum(perf_med_omp_dist_unified_first_touch), maximum(perf_med_omp_loop_unified_first_touch))
                min_of_perf_max = min(min_of_perf_max, minimum(perf_max_omp_dist_unified_first_touch), minimum(perf_max_omp_loop_unified_first_touch))
                min_of_perf_med = min(min_of_perf_med, minimum(perf_med_omp_dist_unified_first_touch), minimum(perf_med_omp_loop_unified_first_touch))
                if has_openacc
                    N_acc_ker_unified_first_touch, perf_max_acc_ker_unified_first_touch, perf_med_acc_ker_unified_first_touch, summary = read_results(glob(string(root, "/iterate/model14/diffusion_benchmark_*.csv")), summary, gpu[gpu_id].caption, "acc (kernels)", "unified, first touch")
                    N_acc_par_unified_first_touch, perf_max_acc_par_unified_first_touch, perf_med_acc_par_unified_first_touch, summary = read_results(glob(string(root, "/iterate/model15/diffusion_benchmark_*.csv")), summary, gpu[gpu_id].caption, "acc (parallel)", "unified, first touch")
                    max_of_perf_max = max(max_of_perf_max, maximum(perf_max_acc_ker_unified_first_touch), maximum(perf_max_acc_par_unified_first_touch))
                    max_of_perf_med = max(max_of_perf_med, maximum(perf_med_acc_ker_unified_first_touch), maximum(perf_med_acc_par_unified_first_touch))
                    min_of_perf_max = min(min_of_perf_max, minimum(perf_max_acc_ker_unified_first_touch), minimum(perf_max_acc_par_unified_first_touch))
                    min_of_perf_med = min(min_of_perf_med, minimum(perf_med_acc_ker_unified_first_touch), minimum(perf_med_acc_par_unified_first_touch))
                end
            end
        end

        perf_max = util_pyplot.set_Panel(nx=Ncomp)
        perf_med = util_pyplot.set_Panel(nx=Ncomp)

        # best performance (specific GPU, GPU comparison)
        for target in [(fig=perf_max, ax=perf_max.ax), (fig=compare_max, ax=compare_max.ax[:, gpu_id])]
            plot_lp_multi(target.fig, target.ax, N_omp_loop, perf_max_omp_loop, N_omp_dist, perf_max_omp_dist, N_acc_ker, perf_max_acc_ker, N_acc_par, perf_max_acc_par, point_id=0, line_id=0, color_id=0, label="explicit")
            if has_managed
                plot_lp_multi(target.fig, target.ax, N_omp_loop_managed, perf_max_omp_loop_managed, N_omp_dist_managed, perf_max_omp_dist_managed, N_acc_ker_managed, perf_max_acc_ker_managed, N_acc_par_managed, perf_max_acc_par_managed, point_id=1, line_id=1, color_id=1, label="managed")
            end
            if has_unified
                plot_lp_multi(target.fig, target.ax, N_omp_loop_unified, perf_max_omp_loop_unified, N_omp_dist_unified, perf_max_omp_dist_unified, N_acc_ker_unified, perf_max_acc_ker_unified, N_acc_par_unified, perf_max_acc_par_unified, point_id=2, line_id=2, color_id=2, label="unified")
                if set_first_touch
                    plot_lp_multi(target.fig, target.ax, N_omp_loop_unified_first_touch, perf_max_omp_loop_unified_first_touch, N_omp_dist_unified_first_touch, perf_max_omp_dist_unified_first_touch, N_acc_ker_unified_first_touch, perf_max_acc_ker_unified_first_touch, N_acc_par_unified_first_touch, perf_max_acc_par_unified_first_touch, point_id=3, line_id=3, color_id=3, label="unified, first touch")
                end
            end
        end

        # # median performance (specific GPU, GPU comparison)
        # for target in [(fig=perf_med, ax=perf_med.ax[begin]), (fig=compare_med, ax=compare_med.ax[gpu_id])]
        #     if has_openacc
        #         plot_lp(target.fig, target.ax, N_acc_par, perf_med_acc_par, point_id=2, line_id=2, color_id=2, label="acc (parallel)")
        #         plot_lp(target.fig, target.ax, N_acc_ker, perf_med_acc_ker, point_id=4, line_id=3, color_id=2, label="acc (kernels)")
        #     end
        #     plot_lp(target.fig, target.ax, N_omp_dist, perf_med_omp_dist, point_id=0, line_id=2, color_id=1, label="omp (distribute)")
        #     plot_lp(target.fig, target.ax, N_omp_loop, perf_med_omp_loop, point_id=1, line_id=3, color_id=1, label="omp (loop)")
        # end



        for at in perf_max.ax
            at.set_ylim(util_pyplot.scale_axis(min_of_perf_max, max_of_perf_max, logPlt=false))
        end

        # for at in compare_max.ax
        #     at.set_ylim(util_pyplot.scale_axis(min_of_perf_max, max_of_perf_max, logPlt=false))
        # end
        # for at in compare_med.ax
        #     at.set_ylim(util_pyplot.scale_axis(min_of_perf_med, max_of_perf_med, logPlt=false))
        # end

        for fig in [perf_max, perf_med]
            for at in fig.ax
                at.semilogx()
                at.set_xticks([32^3, 64^3, 128^3, 256^3, 512^3])
                at.set_xticklabels([L"$32^3$", L"$64^3$", L"$128^3$", L"$256^3$", L"$512^3$"])
                at.grid()
                set_xlabel(fig, at, L"$N_x N_y N_z$")
            end
            set_ylabel(fig, fig.ax[begin], L"\unit{GFlop/s}")
        end

        # set label
        for fig in [perf_max, perf_med]
            at = fig.ax[begin]
            handles, labels = at.get_legend_handles_labels()
            at.legend(handles[end:-1:begin], labels[end:-1:begin], numpoints=1, handlelength=2.0, loc="lower right", fontsize=fig.fs)
            handles = nothing
            labels = nothing
        end

        # save figures
        if !ispath("fig")
            mkdir("fig")
        end
        perf_max.fig.savefig(string("fig/", "diffusion", "_mode", "_max", "_", name, ".png"), format="png", dpi=100, bbox_inches="tight")
        perf_med.fig.savefig(string("fig/", "diffusion", "_mode", "_med", "_", name, ".png"), format="png", dpi=100, bbox_inches="tight")
        if output_pdf
            perf_max.fig.savefig(string("fig/", "diffusion", "_mode", "_max", "_", name, ".pdf"), format="pdf", bbox_inches="tight")
            perf_med.fig.savefig(string("fig/", "diffusion", "_mode", "_med", "_", name, ".pdf"), format="pdf", bbox_inches="tight")
        end

        PyPlot.close(perf_max.fig)
        PyPlot.close(perf_med.fig)
        perf_max = nothing
        perf_med = nothing
    end

    # for at in compare_max.ax
    #     at.set_ylim(util_pyplot.scale_axis(min_of_perf_max, max_of_perf_max, logPlt=false))
    # end
    # for at in compare_med.ax
    #     at.set_ylim(util_pyplot.scale_axis(min_of_perf_med, max_of_perf_med, logPlt=false))
    # end
    # for fig in [compare_max, compare_med]
    #     for at in fig.ax
    #         # at.loglog()
    #         at.semilogx()
    #         at.set_xticks([32^3, 64^3, 128^3, 256^3, 512^3])
    #         at.set_xticklabels([L"$32^3$", L"$64^3$", L"$128^3$", L"$256^3$", L"$512^3$"])
    #         set_xlabel(fig, at, L"$N_x N_y N_z$")
    #     end
    # end
    # for fig in [compare_max, compare_med]
    #     for at in fig.ax
    #         at.grid()
    #     end
    #     set_ylabel(fig, fig.ax[begin], L"\unit{GFlop/s}")

    #     for ii in 1:fig.nx
    #         for jj in 1:fig.ny
    #             maptag::String = ""
    #             if jj == fig.ny
    #                 maptag = gpu[ii].caption
    #             end
    #             id = (ii - 1) + fig.nx * (fig.ny - jj)
    #             caption = string("(", Char(97 + id), ")")
    #             at = fig.ax[ii, jj]
    #             at.text(0.03, 0.97, string(caption, "~", maptag), color="black", fontsize=fig.fs, horizontalalignment="left", verticalalignment="top", transform=at.transAxes, bbox=Dict("facecolor" => "white", "edgecolor" => "None", "alpha" => 0.75))
    #         end

    #         at = fig.ax[ii, end]
    #         handles, labels = at.get_legend_handles_labels()
    #         at.legend(handles[end:-1:begin], labels[end:-1:begin], numpoints=1, handlelength=2.0, loc="lower right", fontsize=fig.fs)
    #         handles = nothing
    #         labels = nothing
    #     end
    # end

    # # save figures
    # compare_max.fig.savefig(string("fig/", "diffusion", "_max", ".png"), format="png", dpi=100, bbox_inches="tight")
    # compare_med.fig.savefig(string("fig/", "diffusion", "_med", ".png"), format="png", dpi=100, bbox_inches="tight")
    # if output_pdf
    #     compare_max.fig.savefig(string("fig/", "diffusion", "_max", ".pdf"), format="pdf", bbox_inches="tight")
    #     compare_med.fig.savefig(string("fig/", "diffusion", "_med", ".pdf"), format="pdf", bbox_inches="tight")
    # end

    PyPlot.close("all")
    return nothing
end


main()
