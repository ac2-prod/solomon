using ArgParse
function parse_cmd()
    cfg = ArgParseSettings()
    @add_arg_table cfg begin
        "--pdf", "-p"
        help = "generate figure in PDF format"
        action = :store_true
        "--system", "-s"
        help = "system performed benchmark"
        arg_type = String
        default = "mercury"
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


using Glob
function main()
    # read options
    argv = parse_cmd()
    system = argv["system"]
    output_pdf = argv["pdf"]

    n3_cuda, perf_max_cuda, perf_med_cuda = read_results(glob(string("cuda/src/", system, "/*.yaml")))
    n3_omp_45opt, perf_max_omp_45opt, perf_med_omp_45opt = read_results(glob(string("openmp45-opt/src/", system, "/*.yaml")))
    n3_omp_dist, perf_max_omp_dist, perf_med_omp_dist = read_results(glob(string("pragma/src/", system, "/omp_dist/*.yaml")))
    n3_omp_loop, perf_max_omp_loop, perf_med_omp_loop = read_results(glob(string("pragma/src/", system, "/omp_loop/*.yaml")))
    n3_acc_ker, perf_max_acc_ker, perf_med_acc_ker = read_results(glob(string("pragma/src/", system, "/acc_ker/*.yaml")))
    n3_acc_par, perf_max_acc_par, perf_med_acc_par = read_results(glob(string("pragma/src/", system, "/acc_par/*.yaml")))

    # initialize matplotlib
    util_pyplot.config()

    max = util_pyplot.set_Panel()
    med = util_pyplot.set_Panel()
    speedup_max = util_pyplot.set_Panel()
    speedup_med = util_pyplot.set_Panel()
    system_max = util_pyplot.set_Panel(ny=2)
    system_med = util_pyplot.set_Panel(ny=2)

    # best performance (single panel)
    max.ax[begin].plot(n3_cuda, perf_max_cuda, util_pyplot.call(max.point, id=3), markersize=max.ms, linestyle=util_pyplot.call(max.line, id=0), linewidth=max.lw, color=util_pyplot.call(max.color, id=0), label="CUDA (miniFE 2.2.0)", markerfacecolor="none")
    max.ax[begin].plot(n3_omp_45opt, perf_max_omp_45opt, util_pyplot.call(max.point, id=0), markersize=max.ms, linestyle=util_pyplot.call(max.line, id=1), linewidth=max.lw, color=util_pyplot.call(max.color, id=0), label="omp (miniFE 2.2.0)", markerfacecolor="none")
    max.ax[begin].plot(n3_acc_par, perf_max_acc_par, util_pyplot.call(max.point, id=2), markersize=max.ms, linestyle=util_pyplot.call(max.line, id=2), linewidth=max.lw, color=util_pyplot.call(max.color, id=2), label="acc (parallel)")
    max.ax[begin].plot(n3_acc_ker, perf_max_acc_ker, util_pyplot.call(max.point, id=4), markersize=max.ms, linestyle=util_pyplot.call(max.line, id=3), linewidth=max.lw, color=util_pyplot.call(max.color, id=2), label="acc (kernels)")
    max.ax[begin].plot(n3_omp_dist, perf_max_omp_dist, util_pyplot.call(max.point, id=0), markersize=max.ms, linestyle=util_pyplot.call(max.line, id=2), linewidth=max.lw, color=util_pyplot.call(max.color, id=1), label="omp (distribute)")
    max.ax[begin].plot(n3_omp_loop, perf_max_omp_loop, util_pyplot.call(max.point, id=1), markersize=max.ms, linestyle=util_pyplot.call(max.line, id=3), linewidth=max.lw, color=util_pyplot.call(max.color, id=1), label="omp (loop)")

    # best performance (upper panel)
    system_max.ax[begin, end].plot(n3_cuda, perf_max_cuda, util_pyplot.call(system_max.point, id=3), markersize=system_max.ms, linestyle=util_pyplot.call(system_max.line, id=0), linewidth=system_max.lw, color=util_pyplot.call(system_max.color, id=0), label="CUDA (miniFE 2.2.0)", markerfacecolor="none")
    system_max.ax[begin, end].plot(n3_omp_45opt, perf_max_omp_45opt, util_pyplot.call(system_max.point, id=0), markersize=system_max.ms, linestyle=util_pyplot.call(system_max.line, id=1), linewidth=system_max.lw, color=util_pyplot.call(system_max.color, id=0), label="omp (miniFE 2.2.0)", markerfacecolor="none")
    system_max.ax[begin, end].plot(n3_acc_par, perf_max_acc_par, util_pyplot.call(system_max.point, id=2), markersize=system_max.ms, linestyle=util_pyplot.call(system_max.line, id=2), linewidth=system_max.lw, color=util_pyplot.call(system_max.color, id=2), label="acc (parallel)")
    system_max.ax[begin, end].plot(n3_acc_ker, perf_max_acc_ker, util_pyplot.call(system_max.point, id=4), markersize=system_max.ms, linestyle=util_pyplot.call(system_max.line, id=3), linewidth=system_max.lw, color=util_pyplot.call(system_max.color, id=2), label="acc (kernels)")
    system_max.ax[begin, end].plot(n3_omp_dist, perf_max_omp_dist, util_pyplot.call(system_max.point, id=0), markersize=system_max.ms, linestyle=util_pyplot.call(system_max.line, id=2), linewidth=system_max.lw, color=util_pyplot.call(system_max.color, id=1), label="omp (distribute)")
    system_max.ax[begin, end].plot(n3_omp_loop, perf_max_omp_loop, util_pyplot.call(system_max.point, id=1), markersize=system_max.ms, linestyle=util_pyplot.call(system_max.line, id=3), linewidth=system_max.lw, color=util_pyplot.call(system_max.color, id=1), label="omp (loop)")

    # median performance (single panel)
    med.ax[begin].plot(n3_cuda, perf_med_cuda, util_pyplot.call(med.point, id=3), markersize=med.ms, linestyle=util_pyplot.call(med.line, id=0), linewidth=med.lw, color=util_pyplot.call(med.color, id=0), label="CUDA (miniFE 2.2.0)", markerfacecolor="none")
    med.ax[begin].plot(n3_omp_45opt, perf_med_omp_45opt, util_pyplot.call(med.point, id=0), markersize=med.ms, linestyle=util_pyplot.call(med.line, id=1), linewidth=med.lw, color=util_pyplot.call(med.color, id=0), label="omp (miniFE 2.2.0)", markerfacecolor="none")
    med.ax[begin].plot(n3_acc_par, perf_med_acc_par, util_pyplot.call(med.point, id=2), markersize=med.ms, linestyle=util_pyplot.call(med.line, id=2), linewidth=med.lw, color=util_pyplot.call(med.color, id=2), label="acc (parallel)")
    med.ax[begin].plot(n3_acc_ker, perf_med_acc_ker, util_pyplot.call(med.point, id=4), markersize=med.ms, linestyle=util_pyplot.call(med.line, id=3), linewidth=med.lw, color=util_pyplot.call(med.color, id=2), label="acc (kernels)")
    med.ax[begin].plot(n3_omp_dist, perf_med_omp_dist, util_pyplot.call(med.point, id=0), markersize=med.ms, linestyle=util_pyplot.call(med.line, id=2), linewidth=med.lw, color=util_pyplot.call(med.color, id=1), label="omp (distribute)")
    med.ax[begin].plot(n3_omp_loop, perf_med_omp_loop, util_pyplot.call(med.point, id=1), markersize=med.ms, linestyle=util_pyplot.call(med.line, id=3), linewidth=med.lw, color=util_pyplot.call(med.color, id=1), label="omp (loop)")

    # speedup of best performance (single panel)
    speedup_max.ax[begin].plot(n3_acc_par, perf_max_acc_par ./ perf_max_omp_45opt, util_pyplot.call(speedup_max.point, id=2), markersize=speedup_max.ms, linestyle=util_pyplot.call(speedup_max.line, id=2), linewidth=speedup_max.lw, color=util_pyplot.call(speedup_max.color, id=2), label="acc (parallel)")
    speedup_max.ax[begin].plot(n3_acc_ker, perf_max_acc_ker ./ perf_max_omp_45opt, util_pyplot.call(speedup_max.point, id=4), markersize=speedup_max.ms, linestyle=util_pyplot.call(speedup_max.line, id=3), linewidth=speedup_max.lw, color=util_pyplot.call(speedup_max.color, id=2), label="acc (kernels)")
    speedup_max.ax[begin].plot(n3_omp_dist, perf_max_omp_dist ./ perf_max_omp_45opt, util_pyplot.call(speedup_max.point, id=0), markersize=speedup_max.ms, linestyle=util_pyplot.call(speedup_max.line, id=2), linewidth=speedup_max.lw, color=util_pyplot.call(speedup_max.color, id=1), label="omp (distribute)")
    speedup_max.ax[begin].plot(n3_omp_loop, perf_max_omp_loop ./ perf_max_omp_45opt, util_pyplot.call(speedup_max.point, id=1), markersize=speedup_max.ms, linestyle=util_pyplot.call(speedup_max.line, id=3), linewidth=speedup_max.lw, color=util_pyplot.call(speedup_max.color, id=1), label="omp (loop)")

    # speedup of best performance (upper panel)
    system_max.ax[begin, begin].plot(n3_acc_par, perf_max_acc_par ./ perf_max_omp_45opt, util_pyplot.call(system_max.point, id=2), markersize=system_max.ms, linestyle=util_pyplot.call(system_max.line, id=2), linewidth=system_max.lw, color=util_pyplot.call(system_max.color, id=2), label="acc (parallel)")
    system_max.ax[begin, begin].plot(n3_acc_ker, perf_max_acc_ker ./ perf_max_omp_45opt, util_pyplot.call(system_max.point, id=4), markersize=system_max.ms, linestyle=util_pyplot.call(system_max.line, id=3), linewidth=system_max.lw, color=util_pyplot.call(system_max.color, id=2), label="acc (kernels)")
    system_max.ax[begin, begin].plot(n3_omp_dist, perf_max_omp_dist ./ perf_max_omp_45opt, util_pyplot.call(system_max.point, id=0), markersize=system_max.ms, linestyle=util_pyplot.call(system_max.line, id=2), linewidth=system_max.lw, color=util_pyplot.call(system_max.color, id=1), label="omp (distribute)")
    system_max.ax[begin, begin].plot(n3_omp_loop, perf_max_omp_loop ./ perf_max_omp_45opt, util_pyplot.call(system_max.point, id=1), markersize=system_max.ms, linestyle=util_pyplot.call(system_max.line, id=3), linewidth=system_max.lw, color=util_pyplot.call(system_max.color, id=1), label="omp (loop)")

    # speedup of median performance (single panel)
    speedup_med.ax[begin].plot(n3_acc_par, perf_med_acc_par ./ perf_med_omp_45opt, util_pyplot.call(speedup_med.point, id=2), markersize=speedup_med.ms, linestyle=util_pyplot.call(speedup_med.line, id=2), linewidth=speedup_med.lw, color=util_pyplot.call(speedup_med.color, id=2), label="acc (parallel)")
    speedup_med.ax[begin].plot(n3_acc_ker, perf_med_acc_ker ./ perf_med_omp_45opt, util_pyplot.call(speedup_med.point, id=4), markersize=speedup_med.ms, linestyle=util_pyplot.call(speedup_med.line, id=3), linewidth=speedup_med.lw, color=util_pyplot.call(speedup_med.color, id=2), label="acc (kernels)")
    speedup_med.ax[begin].plot(n3_omp_dist, perf_med_omp_dist ./ perf_med_omp_45opt, util_pyplot.call(speedup_med.point, id=0), markersize=speedup_med.ms, linestyle=util_pyplot.call(speedup_med.line, id=2), linewidth=speedup_med.lw, color=util_pyplot.call(speedup_med.color, id=1), label="omp (distribute)")
    speedup_med.ax[begin].plot(n3_omp_loop, perf_med_omp_loop ./ perf_med_omp_45opt, util_pyplot.call(speedup_med.point, id=1), markersize=speedup_med.ms, linestyle=util_pyplot.call(speedup_med.line, id=3), linewidth=speedup_med.lw, color=util_pyplot.call(speedup_med.color, id=1), label="omp (loop)")

    max.ax[begin].semilogx()
    med.ax[begin].semilogx()
    speedup_max.ax[begin].semilogx()
    speedup_med.ax[begin].semilogx()
    max.ax[begin].set_xticks([128^3, 192^3, 256^3, 384^3])
    med.ax[begin].set_xticks([128^3, 192^3, 256^3, 384^3])
    speedup_max.ax[begin].set_xticks([128^3, 192^3, 256^3, 384^3])
    speedup_med.ax[begin].set_xticks([128^3, 192^3, 256^3, 384^3])
    max.ax[begin].set_xticklabels([L"$128^3$", L"$192^3$", L"$256^3$", L"$384^3$"])
    med.ax[begin].set_xticklabels([L"$128^3$", L"$192^3$", L"$256^3$", L"$384^3$"])
    speedup_max.ax[begin].set_xticklabels([L"$128^3$", L"$192^3$", L"$256^3$", L"$384^3$"])
    speedup_med.ax[begin].set_xticklabels([L"$128^3$", L"$192^3$", L"$256^3$", L"$384^3$"])
    max.ax[begin].grid()
    med.ax[begin].grid()
    speedup_max.ax[begin].grid()
    speedup_med.ax[begin].grid()

    max.ax[begin].set_xlabel(L"$N_x \times N_y \times N_z$", fontsize=max.fs)
    med.ax[begin].set_xlabel(L"$N_x \times N_y \times N_z$", fontsize=med.fs)
    speedup_max.ax[begin].set_xlabel(L"$N_x \times N_y \times N_z$", fontsize=speedup_max.fs)
    speedup_med.ax[begin].set_xlabel(L"$N_x \times N_y \times N_z$", fontsize=speedup_med.fs)
    max.ax[begin].set_ylabel(L"\unit{GFlop/s}", fontsize=max.fs)
    med.ax[begin].set_ylabel(L"\unit{GFlop/s}", fontsize=med.fs)
    speedup_max.ax[begin].set_ylabel("Ratio", fontsize=speedup_max.fs)
    speedup_med.ax[begin].set_ylabel("Ratio", fontsize=speedup_med.fs)

    for at in system_max.ax
        at.semilogx()
        at.set_xticks([128^3, 192^3, 256^3, 384^3])
        at.set_xticklabels([L"$128^3$", L"$192^3$", L"$256^3$", L"$384^3$"])
        at.grid()
    end
    system_max.ax[begin, begin].set_xlabel(L"$N_x \times N_y \times N_z$", fontsize=system_max.fs)
    system_max.ax[begin, end].set_ylabel(L"\unit{GFlop/s}", fontsize=system_max.fs)
    system_max.ax[begin, begin].set_ylabel("Ratio", fontsize=system_max.fs)

    # add caption
    for ii in 1:system_max.nx
        for jj in 1:system_max.ny
            maptag::String = ""
            id = (ii - 1) + system_max.nx * (system_max.ny - jj)
            caption = string("(", Char(97 + id), ")")
            at = system_max.ax[ii, jj]
            at.text(0.05, 0.95, string(caption, "~", maptag), color="black", fontsize=system_max.fs, horizontalalignment="left", verticalalignment="top", transform=at.transAxes, bbox=Dict("facecolor" => "white", "edgecolor" => "None", "alpha" => 0.75))
        end
    end

    # set label
    at = max.ax[begin]
    handles, labels = at.get_legend_handles_labels()
    at.legend(handles[end:-1:begin], labels[end:-1:begin], numpoints=1, handlelength=2.0, loc="best", fontsize=0.8 * max.fs)
    handles = nothing
    labels = nothing
    at = med.ax[begin]
    handles, labels = at.get_legend_handles_labels()
    at.legend(handles[end:-1:begin], labels[end:-1:begin], numpoints=1, handlelength=2.0, loc="best", fontsize=0.8 * med.fs)
    handles = nothing
    labels = nothing
    at = speedup_max.ax[begin]
    handles, labels = at.get_legend_handles_labels()
    at.legend(handles[end:-1:begin], labels[end:-1:begin], numpoints=1, handlelength=2.0, loc="best", fontsize=0.8 * speedup_max.fs)
    handles = nothing
    labels = nothing
    at = speedup_med.ax[begin]
    handles, labels = at.get_legend_handles_labels()
    at.legend(handles[end:-1:begin], labels[end:-1:begin], numpoints=1, handlelength=2.0, loc="best", fontsize=0.8 * speedup_med.fs)
    handles = nothing
    labels = nothing
    at = system_max.ax[begin, end]
    handles, labels = at.get_legend_handles_labels()
    at.legend(handles[end:-1:begin], labels[end:-1:begin], numpoints=1, handlelength=2.0, loc="best", fontsize=system_max.fs)
    handles = nothing
    labels = nothing

    # save figures
    max.fig.savefig(string("fig/", "miniFE", "_flops", "_max", "_", system, ".png"), format="png", dpi=100, bbox_inches="tight")
    med.fig.savefig(string("fig/", "miniFE", "_flops", "_med", "_", system, ".png"), format="png", dpi=100, bbox_inches="tight")
    speedup_max.fig.savefig(string("fig/", "miniFE", "_ratio", "_max", "_", system, ".png"), format="png", dpi=100, bbox_inches="tight")
    speedup_med.fig.savefig(string("fig/", "miniFE", "_ratio", "_med", "_", system, ".png"), format="png", dpi=100, bbox_inches="tight")
    system_max.fig.savefig(string("fig/", "miniFE", "_max", "_", system, ".png"), format="png", dpi=100, bbox_inches="tight")
    if output_pdf
        max.fig.savefig(string("fig/", "miniFE", "_flops", "_max", "_", system, ".pdf"), format="pdf", bbox_inches="tight")
        med.fig.savefig(string("fig/", "miniFE", "_flops", "_med", "_", system, ".pdf"), format="pdf", bbox_inches="tight")
    end

    max = nothing
    med = nothing
    speedup_max = nothing
    speedup_med = nothing
    system_max = nothing
    system_med = nothing
    PyPlot.close("all")

    return nothing

end


main()
