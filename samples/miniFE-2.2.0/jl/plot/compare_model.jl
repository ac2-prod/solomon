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
        # println(val)
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
function read_results(file_list)
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
    end

    # return df
    return n3, max, med
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
end

using Glob
function main()
    # read options
    argv = parse_cmd()
    output_pdf = argv["pdf"]
    # system = argv["system"]

    # initialize matplotlib
    util_pyplot.config()

    h100sxm = gpu_config(name="h100sxm", root="mercury/h100sxm", has_cuda=true, has_openacc=true)
    mi210 = gpu_config(name="mi210", root="milan2/mi210")

    for gpu in [h100sxm, mi210]
        root = gpu.root
        has_cuda = gpu.has_cuda
        has_openacc = gpu.has_openacc
        name = gpu.name

        if has_cuda
            n3_cuda, perf_max_cuda, perf_med_cuda = read_results(glob(string(root, "/cuda/*.yaml")))
        end
        n3_omp_45opt, perf_max_omp_45opt, perf_med_omp_45opt = read_results(glob(string(root, "/openmp45-opt/*.yaml")))
        n3_omp_dist, perf_max_omp_dist, perf_med_omp_dist = read_results(glob(string(root, "/omp_dist/*.yaml")))
        n3_omp_loop, perf_max_omp_loop, perf_med_omp_loop = read_results(glob(string(root, "/omp_loop/*.yaml")))
        if has_openacc
            n3_acc_ker, perf_max_acc_ker, perf_med_acc_ker = read_results(glob(string(root, "/acc_ker/*.yaml")))
            n3_acc_par, perf_max_acc_par, perf_med_acc_par = read_results(glob(string(root, "/acc_par/*.yaml")))
        end

        max = util_pyplot.set_Panel()
        med = util_pyplot.set_Panel()
        speedup_max = util_pyplot.set_Panel()
        speedup_med = util_pyplot.set_Panel()
        system_max = util_pyplot.set_Panel(ny=2)
        system_med = util_pyplot.set_Panel(ny=2)

        # best performance (single panel)
        if has_cuda
            plot_lp(max, max.ax[begin], n3_cuda, perf_max_cuda, point_id=3, line_id=0, color_id=0, label="CUDA (miniFE 2.2.0)", open_symbol=true)
        end
        plot_lp(max, max.ax[begin], n3_omp_45opt, perf_max_omp_45opt, point_id=0, line_id=1, color_id=0, label="omp (miniFE 2.2.0)", open_symbol=true)
        if has_openacc
            plot_lp(max, max.ax[begin], n3_acc_par, perf_max_acc_par, point_id=2, line_id=2, color_id=2, label="acc (parallel)")
            plot_lp(max, max.ax[begin], n3_acc_ker, perf_max_acc_ker, point_id=4, line_id=3, color_id=2, label="acc (kernels)")
        end
        plot_lp(max, max.ax[begin], n3_omp_dist, perf_max_omp_dist, point_id=0, line_id=2, color_id=1, label="omp (distribute)")
        plot_lp(max, max.ax[begin], n3_omp_loop, perf_max_omp_loop, point_id=1, line_id=3, color_id=1, label="omp (loop)")

        # best performance (upper panel)
        if has_cuda
            plot_lp(system_max, system_max.ax[begin, end], n3_cuda, perf_max_cuda, point_id=3, line_id=0, color_id=0, label="CUDA (miniFE 2.2.0)", open_symbol=true)
        end
        plot_lp(system_max, system_max.ax[begin, end], n3_omp_45opt, perf_max_omp_45opt, point_id=0, line_id=1, color_id=0, label="omp (miniFE 2.2.0)", open_symbol=true)
        if has_openacc
            plot_lp(system_max, system_max.ax[begin, end], n3_acc_par, perf_max_acc_par, point_id=2, line_id=2, color_id=2, label="acc (parallel)")
            plot_lp(system_max, system_max.ax[begin, end], n3_acc_ker, perf_max_acc_ker, point_id=4, line_id=3, color_id=2, label="acc (kernels)")
        end
        plot_lp(system_max, system_max.ax[begin, end], n3_omp_dist, perf_max_omp_dist, point_id=0, line_id=2, color_id=1, label="omp (distribute)")
        plot_lp(system_max, system_max.ax[begin, end], n3_omp_loop, perf_max_omp_loop, point_id=1, line_id=3, color_id=1, label="omp (loop)")

        # median performance (single panel)
        if has_cuda
            plot_lp(med, med.ax[begin], n3_cuda, perf_med_cuda, point_id=3, line_id=0, color_id=0, label="CUDA (miniFE 2.2.0)", open_symbol=true)
        end
        plot_lp(med, med.ax[begin], n3_omp_45opt, perf_med_omp_45opt, point_id=0, line_id=1, color_id=0, label="omp (miniFE 2.2.0)", open_symbol=true)
        if has_openacc
            plot_lp(med, med.ax[begin], n3_acc_par, perf_med_acc_par, point_id=2, line_id=2, color_id=2, label="acc (parallel)")
            plot_lp(med, med.ax[begin], n3_acc_ker, perf_med_acc_ker, point_id=4, line_id=3, color_id=2, label="acc (kernels)")
        end
        plot_lp(med, med.ax[begin], n3_omp_dist, perf_med_omp_dist, point_id=0, line_id=2, color_id=1, label="omp (distribute)")
        plot_lp(med, med.ax[begin], n3_omp_loop, perf_med_omp_loop, point_id=1, line_id=3, color_id=1, label="omp (loop)")

        # median performance (upper panel)
        if has_cuda
            plot_lp(system_med, system_med.ax[begin, end], n3_cuda, perf_med_cuda, point_id=3, line_id=0, color_id=0, label="CUDA (miniFE 2.2.0)", open_symbol=true)
        end
        plot_lp(system_med, system_med.ax[begin, end], n3_omp_45opt, perf_med_omp_45opt, point_id=0, line_id=1, color_id=0, label="omp (miniFE 2.2.0)", open_symbol=true)
        if has_openacc
            plot_lp(system_med, system_med.ax[begin, end], n3_acc_par, perf_med_acc_par, point_id=2, line_id=2, color_id=2, label="acc (parallel)")
            plot_lp(system_med, system_med.ax[begin, end], n3_acc_ker, perf_med_acc_ker, point_id=4, line_id=3, color_id=2, label="acc (kernels)")
        end
        plot_lp(system_med, system_med.ax[begin, end], n3_omp_dist, perf_med_omp_dist, point_id=0, line_id=2, color_id=1, label="omp (distribute)")
        plot_lp(system_med, system_med.ax[begin, end], n3_omp_loop, perf_med_omp_loop, point_id=1, line_id=3, color_id=1, label="omp (loop)")

        # speedup of best performance (single panel)
        if has_openacc
            plot_lp(speedup_max, speedup_max.ax[begin], n3_acc_par, perf_max_acc_par ./ perf_max_omp_45opt, point_id=2, line_id=2, color_id=2, label="acc (parallel)")
            plot_lp(speedup_max, speedup_max.ax[begin], n3_acc_ker, perf_max_acc_ker ./ perf_max_omp_45opt, point_id=4, line_id=3, color_id=2, label="acc (kernels)")
        end
        plot_lp(speedup_max, speedup_max.ax[begin], n3_omp_dist, perf_max_omp_dist ./ perf_max_omp_45opt, point_id=0, line_id=2, color_id=1, label="omp (distribute)")
        plot_lp(speedup_max, speedup_max.ax[begin], n3_omp_loop, perf_max_omp_loop ./ perf_max_omp_45opt, point_id=1, line_id=3, color_id=1, label="omp (loop)")

        # speedup of best performance (lower panel)
        if has_openacc
            plot_lp(system_max, system_max.ax[begin, begin], n3_acc_par, perf_max_acc_par ./ perf_max_omp_45opt, point_id=2, line_id=2, color_id=2, label="acc (parallel)")
            plot_lp(system_max, system_max.ax[begin, begin], n3_acc_ker, perf_max_acc_ker ./ perf_max_omp_45opt, point_id=4, line_id=3, color_id=2, label="acc (kernels)")
        end
        plot_lp(system_max, system_max.ax[begin, begin], n3_omp_dist, perf_max_omp_dist ./ perf_max_omp_45opt, point_id=0, line_id=2, color_id=1, label="omp (distribute)")
        plot_lp(system_max, system_max.ax[begin, begin], n3_omp_loop, perf_max_omp_loop ./ perf_max_omp_45opt, point_id=1, line_id=3, color_id=1, label="omp (loop)")

        # speedup of median performance (single panel)
        if has_openacc
            plot_lp(speedup_med, speedup_med.ax[begin], n3_acc_par, perf_med_acc_par ./ perf_med_omp_45opt, point_id=2, line_id=2, color_id=2, label="acc (parallel)")
            plot_lp(speedup_med, speedup_med.ax[begin], n3_acc_ker, perf_med_acc_ker ./ perf_med_omp_45opt, point_id=4, line_id=3, color_id=2, label="acc (kernels)")
        end
        plot_lp(speedup_med, speedup_med.ax[begin], n3_omp_dist, perf_med_omp_dist ./ perf_med_omp_45opt, point_id=0, line_id=2, color_id=1, label="omp (distribute)")
        plot_lp(speedup_med, speedup_med.ax[begin], n3_omp_loop, perf_med_omp_loop ./ perf_med_omp_45opt, point_id=1, line_id=3, color_id=1, label="omp (loop)")

        # speedup of median performance (lower panel)
        if has_openacc
            plot_lp(system_med, system_med.ax[begin, begin], n3_acc_par, perf_med_acc_par ./ perf_med_omp_45opt, point_id=2, line_id=2, color_id=2, label="acc (parallel)")
            plot_lp(system_med, system_med.ax[begin, begin], n3_acc_ker, perf_med_acc_ker ./ perf_med_omp_45opt, point_id=4, line_id=3, color_id=2, label="acc (kernels)")
        end
        plot_lp(system_med, system_med.ax[begin, begin], n3_omp_dist, perf_med_omp_dist ./ perf_med_omp_45opt, point_id=0, line_id=2, color_id=1, label="omp (distribute)")
        plot_lp(system_med, system_med.ax[begin, begin], n3_omp_loop, perf_med_omp_loop ./ perf_med_omp_45opt, point_id=1, line_id=3, color_id=1, label="omp (loop)")

        for fig in [max, med, speedup_max, speedup_med]
            at = fig.ax[begin]
            at.semilogx()
            at.set_xticks([128^3, 192^3, 256^3, 384^3])
            at.set_xticklabels([L"$128^3$", L"$192^3$", L"$256^3$", L"$384^3$"])
            at.grid()
            set_xlabel(fig, at, L"$N_x \times N_y \times N_z$")
        end
        for fig in [max, med]
            set_ylabel(fig, fig.ax[begin], L"\unit{GFlop/s}")
        end
        for fig in [speedup_max, speedup_med]
            set_ylabel(fig, fig.ax[begin], "Ratio")
        end

        for at in system_max.ax
            at.semilogx()
            at.set_xticks([128^3, 192^3, 256^3, 384^3])
            at.set_xticklabels([L"$128^3$", L"$192^3$", L"$256^3$", L"$384^3$"])
            at.grid()
        end
        for at in system_med.ax
            at.semilogx()
            at.set_xticks([128^3, 192^3, 256^3, 384^3])
            at.set_xticklabels([L"$128^3$", L"$192^3$", L"$256^3$", L"$384^3$"])
            at.grid()
        end
        for fig in [system_max, system_med]
            set_xlabel(fig, fig.ax[begin, begin], L"$N_x \times N_y \times N_z$")
            set_ylabel(fig, fig.ax[begin, end], L"\unit{GFlop/s}")
            set_ylabel(fig, fig.ax[begin, begin], "Ratio")
        end

        # set label
        for fig in [max, med, speedup_max, speedup_med]
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
        max.fig.savefig(string("fig/", "miniFE", "_flops", "_max", "_", name, ".png"), format="png", dpi=100, bbox_inches="tight")
        med.fig.savefig(string("fig/", "miniFE", "_flops", "_med", "_", name, ".png"), format="png", dpi=100, bbox_inches="tight")
        speedup_max.fig.savefig(string("fig/", "miniFE", "_ratio", "_max", "_", name, ".png"), format="png", dpi=100, bbox_inches="tight")
        speedup_med.fig.savefig(string("fig/", "miniFE", "_ratio", "_med", "_", name, ".png"), format="png", dpi=100, bbox_inches="tight")
        system_max.fig.savefig(string("fig/", "miniFE", "_max", "_", name, ".png"), format="png", dpi=100, bbox_inches="tight")
        system_med.fig.savefig(string("fig/", "miniFE", "_med", "_", name, ".png"), format="png", dpi=100, bbox_inches="tight")
        if output_pdf
            max.fig.savefig(string("fig/", "miniFE", "_flops", "_max", "_", name, ".pdf"), format="pdf", bbox_inches="tight")
            med.fig.savefig(string("fig/", "miniFE", "_flops", "_med", "_", name, ".pdf"), format="pdf", bbox_inches="tight")
            speedup_max.fig.savefig(string("fig/", "miniFE", "_ratio", "_max", "_", name, ".pdf"), bbox_inches="tight")
            speedup_med.fig.savefig(string("fig/", "miniFE", "_ratio", "_med", "_", name, ".pdf"), bbox_inches="tight")
            system_max.fig.savefig(string("fig/", "miniFE", "_max", "_", name, ".pdf"), bbox_inches="tight")
            system_med.fig.savefig(string("fig/", "miniFE", "_med", "_", name, ".pdf"), bbox_inches="tight")
        end

        max = nothing
        med = nothing
        speedup_max = nothing
        speedup_med = nothing
        system_max = nothing
        system_med = nothing
        PyPlot.close("all")

    end
    return nothing
end


main()
