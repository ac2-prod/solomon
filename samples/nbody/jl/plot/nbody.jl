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

    num = result."N"
    time = result."time(s)"
    perf = result."N_pairs/s"

    return num, time, perf
end

using DataFrames
using Statistics
function read_results(file_list, summary, GPU, lang, flag)
    num_list = []
    time_list = []
    perf_list = []
    for file in file_list
        num, time, perf = get_performance_log(file)
        append!(num_list, num)
        append!(time_list, time)
        append!(perf_list, perf)
    end
    df = DataFrame(num=num_list, time=time_list, perf=perf_list)

    num = sort(unique(df.num))
    max = []
    med = []
    for ii = eachindex(num)
        data = df[df.num.==num[ii], :]."perf"
        append!(max, maximum(data))
        append!(med, Statistics.median(data))
        push!(summary, (GPU, lang, flag, num[ii], max[end], med[end], Statistics.mean(data), minimum(data), length(data)))
    end

    return num, max, med, summary
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
    num_cores::Float32
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
    gpu[1] = gpu_config(name="h100sxm", root="mercury/h100sxm", has_openacc=true, caption="NVIDIA H100 SXM 80GB", num_cores=128 * 132)
    gpu[2] = gpu_config(name="mi210", root="milan2/mi210", caption="AMD MI210", num_cores=64 * 104)

    compare_base_max = util_pyplot.set_Panel(nx=Ngpu)
    compare_base_med = util_pyplot.set_Panel(nx=Ngpu)
    compare_fast_max = util_pyplot.set_Panel(nx=Ngpu)
    compare_fast_med = util_pyplot.set_Panel(nx=Ngpu)
    compare_sustained_base_max = util_pyplot.set_Panel(nx=Ngpu)
    compare_sustained_base_med = util_pyplot.set_Panel(nx=Ngpu)
    compare_sustained_fast_max = util_pyplot.set_Panel(nx=Ngpu)
    compare_sustained_fast_med = util_pyplot.set_Panel(nx=Ngpu)

    max_of_perf_base_max::Float32 = 0.0
    max_of_perf_base_med::Float32 = 0.0
    max_of_perf_fast_max::Float32 = 0.0
    max_of_perf_fast_med::Float32 = 0.0
    min_of_perf_base_max = typemax(Float32)
    min_of_perf_base_med = typemax(Float32)
    min_of_perf_fast_max = typemax(Float32)
    min_of_perf_fast_med = typemax(Float32)

    # prepare summary CSV file
    summary = DataFrame(GPU=[], lang=[], flag=[], N=[], perf_max=[], perf_med=[], perf_avg=[], perf_min=[], trials=[])

    for gpu_id in 1:Ngpu
        root = gpu[gpu_id].root
        has_openacc = gpu[gpu_id].has_openacc
        name = gpu[gpu_id].name

        # read measured performance
        N_base_omp_loop, perf_base_max_omp_loop, perf_base_med_omp_loop, summary = read_results(glob(string(root, "/scaling/model0/nbody/log/*.csv")), summary, gpu[gpu_id].caption, "omp (loop)", "base")
        N_fast_omp_loop, perf_fast_max_omp_loop, perf_fast_med_omp_loop, summary = read_results(glob(string(root, "/scaling/model1/nbody/log/*.csv")), summary, gpu[gpu_id].caption, "omp (loop)", "fast")
        N_base_omp_dist, perf_base_max_omp_dist, perf_base_med_omp_dist, summary = read_results(glob(string(root, "/scaling/model2/nbody/log/*.csv")), summary, gpu[gpu_id].caption, "omp (distribute)", "base")
        N_fast_omp_dist, perf_fast_max_omp_dist, perf_fast_med_omp_dist, summary = read_results(glob(string(root, "/scaling/model3/nbody/log/*.csv")), summary, gpu[gpu_id].caption, "omp (distribute)", "fast")
        max_of_perf_base_max = max(max_of_perf_base_max, maximum(perf_base_max_omp_dist), maximum(perf_base_max_omp_loop))
        max_of_perf_base_med = max(max_of_perf_base_med, maximum(perf_base_med_omp_dist), maximum(perf_base_med_omp_loop))
        min_of_perf_base_max = min(min_of_perf_base_max, minimum(perf_base_max_omp_dist), minimum(perf_base_max_omp_loop))
        min_of_perf_base_med = min(min_of_perf_base_med, minimum(perf_base_med_omp_dist), minimum(perf_base_med_omp_loop))
        max_of_perf_fast_max = max(max_of_perf_fast_max, maximum(perf_fast_max_omp_dist), maximum(perf_fast_max_omp_loop))
        max_of_perf_fast_med = max(max_of_perf_fast_med, maximum(perf_fast_med_omp_dist), maximum(perf_fast_med_omp_loop))
        min_of_perf_fast_max = min(min_of_perf_fast_max, minimum(perf_fast_max_omp_dist), minimum(perf_fast_max_omp_loop))
        min_of_perf_fast_med = min(min_of_perf_fast_med, minimum(perf_fast_med_omp_dist), minimum(perf_fast_med_omp_loop))
        if has_openacc
            N_base_acc_ker, perf_base_max_acc_ker, perf_base_med_acc_ker, summary = read_results(glob(string(root, "/scaling/model4/nbody/log/*.csv")), summary, gpu[gpu_id].caption, "acc (kernels)", "base")
            N_fast_acc_ker, perf_fast_max_acc_ker, perf_fast_med_acc_ker, summary = read_results(glob(string(root, "/scaling/model5/nbody/log/*.csv")), summary, gpu[gpu_id].caption, "acc (kernels)", "fast")
            N_base_acc_par, perf_base_max_acc_par, perf_base_med_acc_par, summary = read_results(glob(string(root, "/scaling/model6/nbody/log/*.csv")), summary, gpu[gpu_id].caption, "acc (parallel)", "base")
            N_fast_acc_par, perf_fast_max_acc_par, perf_fast_med_acc_par, summary = read_results(glob(string(root, "/scaling/model7/nbody/log/*.csv")), summary, gpu[gpu_id].caption, "acc (parallel)", "fast")
            max_of_perf_base_max = max(max_of_perf_base_max, maximum(perf_base_max_acc_ker), maximum(perf_base_max_acc_par))
            max_of_perf_base_med = max(max_of_perf_base_med, maximum(perf_base_med_acc_ker), maximum(perf_base_med_acc_par))
            min_of_perf_base_max = min(min_of_perf_base_max, minimum(perf_base_max_acc_ker), minimum(perf_base_max_acc_par))
            min_of_perf_base_med = min(min_of_perf_base_med, minimum(perf_base_med_acc_ker), minimum(perf_base_med_acc_par))
            max_of_perf_fast_max = max(max_of_perf_fast_max, maximum(perf_fast_max_acc_ker), maximum(perf_fast_max_acc_par))
            max_of_perf_fast_med = max(max_of_perf_fast_med, maximum(perf_fast_med_acc_ker), maximum(perf_fast_med_acc_par))
            min_of_perf_fast_max = min(min_of_perf_fast_max, minimum(perf_fast_max_acc_ker), minimum(perf_fast_max_acc_par))
            min_of_perf_fast_med = min(min_of_perf_fast_med, minimum(perf_fast_med_acc_ker), minimum(perf_fast_med_acc_par))
        end

        perf_base_max = util_pyplot.set_Panel()
        perf_base_med = util_pyplot.set_Panel()
        perf_fast_max = util_pyplot.set_Panel()
        perf_fast_med = util_pyplot.set_Panel()
        sustained_perf_base_max = util_pyplot.set_Panel()
        sustained_perf_base_med = util_pyplot.set_Panel()
        sustained_perf_fast_max = util_pyplot.set_Panel()
        sustained_perf_fast_med = util_pyplot.set_Panel()

        # best performance (w/o optimization flag: full scale, sustained performance | specific GPU, GPU comparison)
        for target in [(fig=perf_base_max, ax=perf_base_max.ax[begin]), (fig=sustained_perf_base_max, ax=sustained_perf_base_max.ax[begin]), (fig=compare_base_max, ax=compare_base_max.ax[gpu_id]), (fig=compare_sustained_base_max, ax=compare_sustained_base_max.ax[gpu_id])]
            if has_openacc
                plot_lp(target.fig, target.ax, N_base_acc_par, perf_base_max_acc_par, point_id=2, line_id=2, color_id=2, label="acc (parallel)")
                plot_lp(target.fig, target.ax, N_base_acc_ker, perf_base_max_acc_ker, point_id=4, line_id=3, color_id=2, label="acc (kernels)")
            end
            plot_lp(target.fig, target.ax, N_base_omp_dist, perf_base_max_omp_dist, point_id=0, line_id=2, color_id=1, label="omp (distribute)")
            plot_lp(target.fig, target.ax, N_base_omp_loop, perf_base_max_omp_loop, point_id=1, line_id=3, color_id=1, label="omp (loop)")
        end
        # best performance (w/ optimization flag: full scale, sustained performance | specific GPU, GPU comparison)
        for target in [(fig=perf_fast_max, ax=perf_fast_max.ax[begin]), (fig=sustained_perf_fast_max, ax=sustained_perf_fast_max.ax[begin]), (fig=compare_fast_max, ax=compare_fast_max.ax[gpu_id]), (fig=compare_sustained_fast_max, ax=compare_sustained_fast_max.ax[gpu_id])]
            if has_openacc
                plot_lp(target.fig, target.ax, N_fast_acc_par, perf_fast_max_acc_par, point_id=2, line_id=2, color_id=2, label="acc (parallel)")
                plot_lp(target.fig, target.ax, N_fast_acc_ker, perf_fast_max_acc_ker, point_id=4, line_id=3, color_id=2, label="acc (kernels)")
            end
            plot_lp(target.fig, target.ax, N_fast_omp_dist, perf_fast_max_omp_dist, point_id=0, line_id=2, color_id=1, label="omp (distribute)")
            plot_lp(target.fig, target.ax, N_fast_omp_loop, perf_fast_max_omp_loop, point_id=1, line_id=3, color_id=1, label="omp (loop)")
        end

        # median performance (w/o optimization flag: full scale, sustained performance | specific GPU, GPU comparison)
        for target in [(fig=perf_base_med, ax=perf_base_med.ax[begin]), (fig=sustained_perf_base_med, ax=sustained_perf_base_med.ax[begin]), (fig=compare_base_med, ax=compare_base_med.ax[gpu_id]), (fig=compare_sustained_base_med, ax=compare_sustained_base_med.ax[gpu_id])]
            if has_openacc
                plot_lp(target.fig, target.ax, N_base_acc_par, perf_base_med_acc_par, point_id=2, line_id=2, color_id=2, label="acc (parallel)")
                plot_lp(target.fig, target.ax, N_base_acc_ker, perf_base_med_acc_ker, point_id=4, line_id=3, color_id=2, label="acc (kernels)")
            end
            plot_lp(target.fig, target.ax, N_base_omp_dist, perf_base_med_omp_dist, point_id=0, line_id=2, color_id=1, label="omp (distribute)")
            plot_lp(target.fig, target.ax, N_base_omp_loop, perf_base_med_omp_loop, point_id=1, line_id=3, color_id=1, label="omp (loop)")
        end
        # median performance (w/ optimization flag: full scale, sustained performance | specific GPU, GPU comparison)
        for target in [(fig=perf_fast_med, ax=perf_fast_med.ax[begin]), (fig=sustained_perf_fast_med, ax=sustained_perf_fast_med.ax[begin]), (fig=compare_fast_med, ax=compare_fast_med.ax[gpu_id]), (fig=compare_sustained_fast_med, ax=compare_sustained_fast_med.ax[gpu_id])]
            if has_openacc
                plot_lp(target.fig, target.ax, N_fast_acc_par, perf_fast_med_acc_par, point_id=2, line_id=2, color_id=2, label="acc (parallel)")
                plot_lp(target.fig, target.ax, N_fast_acc_ker, perf_fast_med_acc_ker, point_id=4, line_id=3, color_id=2, label="acc (kernels)")
            end
            plot_lp(target.fig, target.ax, N_fast_omp_dist, perf_fast_med_omp_dist, point_id=0, line_id=2, color_id=1, label="omp (distribute)")
            plot_lp(target.fig, target.ax, N_fast_omp_loop, perf_fast_med_omp_loop, point_id=1, line_id=3, color_id=1, label="omp (loop)")
        end

        for fig in [perf_base_max, perf_fast_max, perf_base_med, perf_fast_med]
            at = fig.ax[begin]
            at.loglog()
        end
        for fig in [sustained_perf_base_max, sustained_perf_fast_max, sustained_perf_base_med, sustained_perf_fast_med]
            at = fig.ax[begin]
            xl, xr = at.get_xlim()
            at.set_xlim(util_pyplot.scale_axis(gpu[gpu_id].num_cores, xr))
            at.semilogx()
            at.yaxis.set_major_formatter(PyPlot.matplotlib.ticker.FuncFormatter(util_pyplot.scientific2))
        end
        for fig in [perf_base_max, perf_fast_max, perf_base_med, perf_fast_med, sustained_perf_base_max, sustained_perf_fast_max, sustained_perf_base_med, sustained_perf_fast_med]
            at = fig.ax[begin]
            at.grid()
            set_xlabel(fig, at, L"$N$")
            set_ylabel(fig, at, "Number of interactions per second")
        end

        # set label
        for fig in [perf_base_max, perf_fast_max, perf_base_med, perf_fast_med, sustained_perf_base_max, sustained_perf_fast_max, sustained_perf_base_med, sustained_perf_fast_med]
            at = fig.ax[begin]
            handles, labels = at.get_legend_handles_labels()
            at.legend(handles[end:-1:begin], labels[end:-1:begin], numpoints=1, handlelength=2.0, loc="best", fontsize=0.8 * fig.fs)
            handles = nothing
            labels = nothing
        end

        # save figures
        if !ispath("fig")
            mkdir("fig")
        end
        perf_base_max.fig.savefig(string("fig/", "nbody", "_base", "_max", "_", name, ".png"), format="png", dpi=100, bbox_inches="tight")
        perf_base_med.fig.savefig(string("fig/", "nbody", "_base", "_med", "_", name, ".png"), format="png", dpi=100, bbox_inches="tight")
        perf_fast_max.fig.savefig(string("fig/", "nbody", "_fast", "_max", "_", name, ".png"), format="png", dpi=100, bbox_inches="tight")
        perf_fast_med.fig.savefig(string("fig/", "nbody", "_fast", "_med", "_", name, ".png"), format="png", dpi=100, bbox_inches="tight")
        sustained_perf_base_max.fig.savefig(string("fig/", "nbody", "_sustained", "_base", "_max", "_", name, ".png"), format="png", dpi=100, bbox_inches="tight")
        sustained_perf_base_med.fig.savefig(string("fig/", "nbody", "_sustained", "_base", "_med", "_", name, ".png"), format="png", dpi=100, bbox_inches="tight")
        sustained_perf_fast_max.fig.savefig(string("fig/", "nbody", "_sustained", "_fast", "_max", "_", name, ".png"), format="png", dpi=100, bbox_inches="tight")
        sustained_perf_fast_med.fig.savefig(string("fig/", "nbody", "_sustained", "_fast", "_med", "_", name, ".png"), format="png", dpi=100, bbox_inches="tight")
        if output_pdf
            perf_base_max.fig.savefig(string("fig/", "nbody", "_base", "_max", "_", name, ".pdf"), format="pdf", bbox_inches="tight")
            perf_base_med.fig.savefig(string("fig/", "nbody", "_base", "_med", "_", name, ".pdf"), format="pdf", bbox_inches="tight")
            perf_fast_max.fig.savefig(string("fig/", "nbody", "_fast", "_max", "_", name, ".pdf"), format="pdf", bbox_inches="tight")
            perf_fast_med.fig.savefig(string("fig/", "nbody", "_fast", "_med", "_", name, ".pdf"), format="pdf", bbox_inches="tight")
            sustained_perf_base_max.fig.savefig(string("fig/", "nbody", "_sustained", "_base", "_max", "_", name, ".pdf"), format="pdf", bbox_inches="tight")
            sustained_perf_base_med.fig.savefig(string("fig/", "nbody", "_sustained", "_base", "_med", "_", name, ".pdf"), format="pdf", bbox_inches="tight")
            sustained_perf_fast_max.fig.savefig(string("fig/", "nbody", "_sustained", "_fast", "_max", "_", name, ".pdf"), format="pdf", bbox_inches="tight")
            sustained_perf_fast_med.fig.savefig(string("fig/", "nbody", "_sustained", "_fast", "_med", "_", name, ".pdf"), format="pdf", bbox_inches="tight")
        end

        PyPlot.close(perf_base_max.fig)
        PyPlot.close(perf_base_med.fig)
        PyPlot.close(perf_fast_max.fig)
        PyPlot.close(perf_fast_med.fig)
        PyPlot.close(sustained_perf_base_max.fig)
        PyPlot.close(sustained_perf_base_med.fig)
        PyPlot.close(sustained_perf_fast_max.fig)
        PyPlot.close(sustained_perf_fast_med.fig)
        perf_base_max = nothing
        perf_base_med = nothing
        perf_fast_max = nothing
        perf_fast_med = nothing
        sustained_perf_base_max = nothing
        sustained_perf_base_med = nothing
        sustained_perf_fast_max = nothing
        sustained_perf_fast_med = nothing
    end

    # output summary CSV file
    summary |> CSV.write(string("nbody", "_stats", ".csv"), delim=',', writeheader=true)

    for at in compare_base_max.ax
        at.set_ylim(util_pyplot.scale_axis(min_of_perf_base_max, max_of_perf_base_max, logPlt=true))
    end
    for at in compare_fast_max.ax
        at.set_ylim(util_pyplot.scale_axis(min_of_perf_fast_max, max_of_perf_fast_max, logPlt=true))
    end
    for at in compare_base_med.ax
        at.set_ylim(util_pyplot.scale_axis(min_of_perf_base_med, max_of_perf_base_med, logPlt=true))
    end
    for at in compare_fast_med.ax
        at.set_ylim(util_pyplot.scale_axis(min_of_perf_fast_med, max_of_perf_fast_med, logPlt=true))
    end
    for fig in [compare_base_max, compare_fast_max, compare_base_med, compare_fast_med]
        for at in fig.ax
            at.loglog()
        end
    end
    for at in compare_sustained_base_max.ax
        at.set_ylim(util_pyplot.scale_axis(0.1 * max_of_perf_base_max, max_of_perf_base_max, logPlt=false))
    end
    for at in compare_sustained_fast_max.ax
        at.set_ylim(util_pyplot.scale_axis(0.1 * max_of_perf_fast_max, max_of_perf_fast_max, logPlt=false))
    end
    for at in compare_sustained_base_med.ax
        at.set_ylim(util_pyplot.scale_axis(0.1 * max_of_perf_base_med, max_of_perf_base_med, logPlt=false))
    end
    for at in compare_sustained_fast_med.ax
        at.set_ylim(util_pyplot.scale_axis(0.1 * max_of_perf_fast_med, max_of_perf_fast_med, logPlt=false))
    end
    for fig in [compare_sustained_base_max, compare_sustained_fast_max, compare_sustained_base_med, compare_sustained_fast_med]
        for ii in 1:fig.nx
            at = fig.ax[ii]
            xl, xr = at.get_xlim()
            at.set_xlim(util_pyplot.scale_axis(gpu[ii].num_cores, xr))
            at.semilogx()
        end
        fig.ax[begin].yaxis.set_major_formatter(PyPlot.matplotlib.ticker.FuncFormatter(util_pyplot.scientific2))
    end
    for fig in [compare_base_max, compare_fast_max, compare_base_med, compare_fast_med, compare_sustained_base_max, compare_sustained_fast_max, compare_sustained_base_med, compare_sustained_fast_med]
        for at in fig.ax
            at.grid()
            set_xlabel(fig, at, L"$N$")
        end
        set_ylabel(fig, fig.ax[begin], "Number of interactions per second")

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

    # save figures
    compare_base_max.fig.savefig(string("fig/", "nbody", "_base", "_max", ".png"), format="png", dpi=100, bbox_inches="tight")
    compare_base_med.fig.savefig(string("fig/", "nbody", "_base", "_med", ".png"), format="png", dpi=100, bbox_inches="tight")
    compare_fast_max.fig.savefig(string("fig/", "nbody", "_fast", "_max", ".png"), format="png", dpi=100, bbox_inches="tight")
    compare_fast_med.fig.savefig(string("fig/", "nbody", "_fast", "_med", ".png"), format="png", dpi=100, bbox_inches="tight")
    compare_sustained_base_max.fig.savefig(string("fig/", "nbody", "_sustained", "_base", "_max", ".png"), format="png", dpi=100, bbox_inches="tight")
    compare_sustained_base_med.fig.savefig(string("fig/", "nbody", "_sustained", "_base", "_med", ".png"), format="png", dpi=100, bbox_inches="tight")
    compare_sustained_fast_max.fig.savefig(string("fig/", "nbody", "_sustained", "_fast", "_max", ".png"), format="png", dpi=100, bbox_inches="tight")
    compare_sustained_fast_med.fig.savefig(string("fig/", "nbody", "_sustained", "_fast", "_med", ".png"), format="png", dpi=100, bbox_inches="tight")
    if output_pdf
        compare_base_max.fig.savefig(string("fig/", "nbody", "_base", "_max", ".pdf"), format="pdf", bbox_inches="tight")
        compare_base_med.fig.savefig(string("fig/", "nbody", "_base", "_med", ".pdf"), format="pdf", bbox_inches="tight")
        compare_fast_max.fig.savefig(string("fig/", "nbody", "_fast", "_max", ".pdf"), format="pdf", bbox_inches="tight")
        compare_fast_med.fig.savefig(string("fig/", "nbody", "_fast", "_med", ".pdf"), format="pdf", bbox_inches="tight")
        compare_sustained_base_max.fig.savefig(string("fig/", "nbody", "_sustained", "_base", "_max", ".pdf"), format="pdf", bbox_inches="tight")
        compare_sustained_base_med.fig.savefig(string("fig/", "nbody", "_sustained", "_base", "_med", ".pdf"), format="pdf", bbox_inches="tight")
        compare_sustained_fast_max.fig.savefig(string("fig/", "nbody", "_sustained", "_fast", "_max", ".pdf"), format="pdf", bbox_inches="tight")
        compare_sustained_fast_med.fig.savefig(string("fig/", "nbody", "_sustained", "_fast", "_med", ".pdf"), format="pdf", bbox_inches="tight")
    end

    PyPlot.close("all")
    return nothing
end


main()
