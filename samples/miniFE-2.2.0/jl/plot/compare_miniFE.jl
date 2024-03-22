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
        # println(contents)
        # println(contents[begin])
        for line in contents
            # println(line)
            # str = split(line, ":")
            # println(strip(str[begin], ' '))
            # println(strip(str[end], ' '))
            # if (strip(str[begin], ' ') == "Total CG Mflops")
            #     println(strip(str[end], ' '))
            # end
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
    output_pdf = argv["pdf"]

    n3_cuda_a100s, perf_max_cuda_a100s, perf_med_cuda_a100s = read_results(glob(string("cuda/src/wisteria_csr/", "*.yaml")))
    n3_cuda_h100p, perf_max_cuda_h100p, perf_med_cuda_h100p = read_results(glob(string("cuda/src/pegasus/", "*.yaml")))
    n3_cuda_h100s, perf_max_cuda_h100s, perf_med_cuda_h100s = read_results(glob(string("cuda/src/mercury/", "*.yaml")))
    n3_omp_45opt_a100s, perf_max_omp_45opt_a100s, perf_med_omp_45opt_a100s = read_results(glob(string("openmp45-opt/src/wisteria_O3/", "*.yaml")))
    n3_omp_45opt_h100p, perf_max_omp_45opt_h100p, perf_med_omp_45opt_h100p = read_results(glob(string("openmp45-opt/src/pegasus/", "*.yaml")))
    n3_omp_45opt_h100s, perf_max_omp_45opt_h100s, perf_med_omp_45opt_h100s = read_results(glob(string("openmp45-opt/src/mercury/", "*.yaml")))
    n3_omp_45opt_mi100, perf_max_omp_45opt_mi100, perf_med_omp_45opt_mi100 = read_results(glob(string("openmp45-opt/src/milan2_mi100/", "*.yaml")))
    n3_omp_45opt_mi210, perf_max_omp_45opt_mi210, perf_med_omp_45opt_mi210 = read_results(glob(string("openmp45-opt/src/milan2_mi210/", "*.yaml")))
    n3_omp_dist_a100s, perf_max_omp_dist_a100s, perf_med_omp_dist_a100s = read_results(glob(string("pragma/src/wisteria/omp_dist/", "*.yaml")))
    n3_omp_dist_h100p, perf_max_omp_dist_h100p, perf_med_omp_dist_h100p = read_results(glob(string("pragma/src/pegasus/omp_dist/", "*.yaml")))
    n3_omp_dist_h100s, perf_max_omp_dist_h100s, perf_med_omp_dist_h100s = read_results(glob(string("pragma/src/mercury/omp_dist/", "*.yaml")))
    n3_omp_dist_mi100, perf_max_omp_dist_mi100, perf_med_omp_dist_mi100 = read_results(glob(string("pragma/src/milan2/mi100/omp_dist/", "*.yaml")))
    n3_omp_dist_mi210, perf_max_omp_dist_mi210, perf_med_omp_dist_mi210 = read_results(glob(string("pragma/src/milan2/mi210/omp_dist/", "*.yaml")))
    n3_omp_loop_a100s, perf_max_omp_loop_a100s, perf_med_omp_loop_a100s = read_results(glob(string("pragma/src/wisteria/omp_loop/", "*.yaml")))
    n3_omp_loop_h100p, perf_max_omp_loop_h100p, perf_med_omp_loop_h100p = read_results(glob(string("pragma/src/pegasus/omp_loop/", "*.yaml")))
    n3_omp_loop_h100s, perf_max_omp_loop_h100s, perf_med_omp_loop_h100s = read_results(glob(string("pragma/src/mercury/omp_loop/", "*.yaml")))
    n3_omp_loop_mi100, perf_max_omp_loop_mi100, perf_med_omp_loop_mi100 = read_results(glob(string("pragma/src/milan2/mi100/omp_loop/", "*.yaml")))
    n3_omp_loop_mi210, perf_max_omp_loop_mi210, perf_med_omp_loop_mi210 = read_results(glob(string("pragma/src/milan2/mi210/omp_loop/", "*.yaml")))
    n3_acc_a100s, perf_max_acc_a100s, perf_med_acc_a100s = read_results(glob(string("pragma/src/wisteria/acc/", "*.yaml")))
    n3_acc_h100p, perf_max_acc_h100p, perf_med_acc_h100p = read_results(glob(string("pragma/src/pegasus/acc/", "*.yaml")))
    n3_acc_h100s, perf_max_acc_h100s, perf_med_acc_h100s = read_results(glob(string("pragma/src/mercury/acc/", "*.yaml")))

    # initialize matplotlib
    util_pyplot.config()

    max = util_pyplot.set_Panel()
    med = util_pyplot.set_Panel()

    # best performance
    max.ax[begin].plot(n3_omp_loop_h100s, perf_max_omp_loop_h100s, util_pyplot.call(max.point, id=1), markersize=max.ms, linestyle=util_pyplot.call(max.line, id=3), linewidth=max.lw, color=util_pyplot.call(max.color, id=4), label="omp (loop), H100 SXM")
    max.ax[begin].plot(n3_omp_loop_h100p, perf_max_omp_loop_h100p, util_pyplot.call(max.point, id=1), markersize=max.ms, linestyle=util_pyplot.call(max.line, id=3), linewidth=max.lw, color=util_pyplot.call(max.color, id=6), label="omp (loop), H100 PCIe")
    max.ax[begin].plot(n3_omp_loop_a100s, perf_max_omp_loop_a100s, util_pyplot.call(max.point, id=1), markersize=max.ms, linestyle=util_pyplot.call(max.line, id=3), linewidth=max.lw, color=util_pyplot.call(max.color, id=0), label="omp (loop), A100 SXM")
    max.ax[begin].plot(n3_omp_loop_mi210, perf_max_omp_loop_mi210, util_pyplot.call(max.point, id=1), markersize=max.ms, linestyle=util_pyplot.call(max.line, id=3), linewidth=max.lw, color=util_pyplot.call(max.color, id=1), label="omp (loop), MI210")
    max.ax[begin].plot(n3_omp_loop_mi100, perf_max_omp_loop_mi100, util_pyplot.call(max.point, id=1), markersize=max.ms, linestyle=util_pyplot.call(max.line, id=3), linewidth=max.lw, color=util_pyplot.call(max.color, id=7), label="omp (loop), MI100")
    max.ax[begin].plot(n3_omp_dist_h100s, perf_max_omp_dist_h100s, util_pyplot.call(max.point, id=0), markersize=max.ms, linestyle=util_pyplot.call(max.line, id=4), linewidth=max.lw, color=util_pyplot.call(max.color, id=4), label="omp (dist), H100 SXM")
    max.ax[begin].plot(n3_omp_dist_h100p, perf_max_omp_dist_h100p, util_pyplot.call(max.point, id=0), markersize=max.ms, linestyle=util_pyplot.call(max.line, id=4), linewidth=max.lw, color=util_pyplot.call(max.color, id=6), label="omp (dist), H100 PCIe")
    max.ax[begin].plot(n3_omp_dist_a100s, perf_max_omp_dist_a100s, util_pyplot.call(max.point, id=0), markersize=max.ms, linestyle=util_pyplot.call(max.line, id=4), linewidth=max.lw, color=util_pyplot.call(max.color, id=0), label="omp (dist), A100 SXM")
    max.ax[begin].plot(n3_omp_dist_mi210, perf_max_omp_dist_mi210, util_pyplot.call(max.point, id=0), markersize=max.ms, linestyle=util_pyplot.call(max.line, id=4), linewidth=max.lw, color=util_pyplot.call(max.color, id=1), label="omp (dist), MI210")
    max.ax[begin].plot(n3_omp_dist_mi100, perf_max_omp_dist_mi100, util_pyplot.call(max.point, id=0), markersize=max.ms, linestyle=util_pyplot.call(max.line, id=4), linewidth=max.lw, color=util_pyplot.call(max.color, id=7), label="omp (dist), MI100")
    max.ax[begin].plot(n3_acc_h100s, perf_max_acc_h100s, util_pyplot.call(max.point, id=2), markersize=max.ms, linestyle=util_pyplot.call(max.line, id=2), linewidth=max.lw, color=util_pyplot.call(max.color, id=4), label="acc, H100 SXM")
    max.ax[begin].plot(n3_acc_h100p, perf_max_acc_h100p, util_pyplot.call(max.point, id=2), markersize=max.ms, linestyle=util_pyplot.call(max.line, id=2), linewidth=max.lw, color=util_pyplot.call(max.color, id=6), label="acc, H100 PCIe")
    max.ax[begin].plot(n3_acc_a100s, perf_max_acc_a100s, util_pyplot.call(max.point, id=2), markersize=max.ms, linestyle=util_pyplot.call(max.line, id=2), linewidth=max.lw, color=util_pyplot.call(max.color, id=0), label="acc, A100 SXM")
    max.ax[begin].plot(n3_cuda_h100s, perf_max_cuda_h100s, util_pyplot.call(max.point, id=3), markersize=max.ms, linestyle=util_pyplot.call(max.line, id=0), linewidth=max.lw, color=util_pyplot.call(max.color, id=4), label="CUDA (miniFE 2.2.0), H100 SXM", markerfacecolor="none")
    max.ax[begin].plot(n3_cuda_h100p, perf_max_cuda_h100p, util_pyplot.call(max.point, id=3), markersize=max.ms, linestyle=util_pyplot.call(max.line, id=0), linewidth=max.lw, color=util_pyplot.call(max.color, id=6), label="CUDA (miniFE 2.2.0), H100 PCIe", markerfacecolor="none")
    max.ax[begin].plot(n3_cuda_a100s, perf_max_cuda_a100s, util_pyplot.call(max.point, id=3), markersize=max.ms, linestyle=util_pyplot.call(max.line, id=0), linewidth=max.lw, color=util_pyplot.call(max.color, id=0), label="CUDA (miniFE 2.2.0), A100 SXM", markerfacecolor="none")
    max.ax[begin].plot(n3_omp_45opt_h100s, perf_max_omp_45opt_h100s, util_pyplot.call(max.point, id=0), markersize=max.ms, linestyle=util_pyplot.call(max.line, id=1), linewidth=max.lw, color=util_pyplot.call(max.color, id=4), label="omp (miniFE 2.2.0), H100 SXM", markerfacecolor="none")
    max.ax[begin].plot(n3_omp_45opt_h100p, perf_max_omp_45opt_h100p, util_pyplot.call(max.point, id=0), markersize=max.ms, linestyle=util_pyplot.call(max.line, id=1), linewidth=max.lw, color=util_pyplot.call(max.color, id=6), label="omp (miniFE 2.2.0), H100 PCIe", markerfacecolor="none")
    max.ax[begin].plot(n3_omp_45opt_a100s, perf_max_omp_45opt_a100s, util_pyplot.call(max.point, id=0), markersize=max.ms, linestyle=util_pyplot.call(max.line, id=1), linewidth=max.lw, color=util_pyplot.call(max.color, id=0), label="omp (miniFE 2.2.0), A100 SXM", markerfacecolor="none")
    max.ax[begin].plot(n3_omp_45opt_mi210, perf_max_omp_45opt_mi210, util_pyplot.call(max.point, id=0), markersize=max.ms, linestyle=util_pyplot.call(max.line, id=1), linewidth=max.lw, color=util_pyplot.call(max.color, id=1), label="omp (miniFE 2.2.0), MI210", markerfacecolor="none")
    max.ax[begin].plot(n3_omp_45opt_mi100, perf_max_omp_45opt_mi100, util_pyplot.call(max.point, id=0), markersize=max.ms, linestyle=util_pyplot.call(max.line, id=1), linewidth=max.lw, color=util_pyplot.call(max.color, id=7), label="omp (miniFE 2.2.0), MI100", markerfacecolor="none")

    # median performance
    med.ax[begin].plot(n3_omp_loop_h100s, perf_med_omp_loop_h100s, util_pyplot.call(med.point, id=1), markersize=med.ms, linestyle=util_pyplot.call(med.line, id=3), linewidth=med.lw, color=util_pyplot.call(med.color, id=4), label="omp (loop), H100 SXM")
    med.ax[begin].plot(n3_omp_loop_h100p, perf_med_omp_loop_h100p, util_pyplot.call(med.point, id=1), markersize=med.ms, linestyle=util_pyplot.call(med.line, id=3), linewidth=med.lw, color=util_pyplot.call(med.color, id=6), label="omp (loop), H100 PCIe")
    med.ax[begin].plot(n3_omp_loop_a100s, perf_med_omp_loop_a100s, util_pyplot.call(med.point, id=1), markersize=med.ms, linestyle=util_pyplot.call(med.line, id=3), linewidth=med.lw, color=util_pyplot.call(med.color, id=0), label="omp (loop), A100 SXM")
    med.ax[begin].plot(n3_omp_loop_mi210, perf_med_omp_loop_mi210, util_pyplot.call(med.point, id=1), markersize=med.ms, linestyle=util_pyplot.call(med.line, id=3), linewidth=med.lw, color=util_pyplot.call(med.color, id=1), label="omp (loop), MI210")
    med.ax[begin].plot(n3_omp_loop_mi100, perf_med_omp_loop_mi100, util_pyplot.call(med.point, id=1), markersize=med.ms, linestyle=util_pyplot.call(med.line, id=3), linewidth=med.lw, color=util_pyplot.call(med.color, id=7), label="omp (loop), MI100")
    med.ax[begin].plot(n3_omp_dist_h100s, perf_med_omp_dist_h100s, util_pyplot.call(med.point, id=0), markersize=med.ms, linestyle=util_pyplot.call(med.line, id=4), linewidth=med.lw, color=util_pyplot.call(med.color, id=4), label="omp (dist), H100 SXM")
    med.ax[begin].plot(n3_omp_dist_h100p, perf_med_omp_dist_h100p, util_pyplot.call(med.point, id=0), markersize=med.ms, linestyle=util_pyplot.call(med.line, id=4), linewidth=med.lw, color=util_pyplot.call(med.color, id=6), label="omp (dist), H100 PCIe")
    med.ax[begin].plot(n3_omp_dist_a100s, perf_med_omp_dist_a100s, util_pyplot.call(med.point, id=0), markersize=med.ms, linestyle=util_pyplot.call(med.line, id=4), linewidth=med.lw, color=util_pyplot.call(med.color, id=0), label="omp (dist), A100 SXM")
    med.ax[begin].plot(n3_omp_dist_mi210, perf_med_omp_dist_mi210, util_pyplot.call(med.point, id=0), markersize=med.ms, linestyle=util_pyplot.call(med.line, id=4), linewidth=med.lw, color=util_pyplot.call(med.color, id=1), label="omp (dist), MI210")
    med.ax[begin].plot(n3_omp_dist_mi100, perf_med_omp_dist_mi100, util_pyplot.call(med.point, id=0), markersize=med.ms, linestyle=util_pyplot.call(med.line, id=4), linewidth=med.lw, color=util_pyplot.call(med.color, id=7), label="omp (dist), MI100")
    med.ax[begin].plot(n3_acc_h100s, perf_med_acc_h100s, util_pyplot.call(med.point, id=2), markersize=med.ms, linestyle=util_pyplot.call(med.line, id=2), linewidth=med.lw, color=util_pyplot.call(med.color, id=4), label="acc, H100 SXM")
    med.ax[begin].plot(n3_acc_h100p, perf_med_acc_h100p, util_pyplot.call(med.point, id=2), markersize=med.ms, linestyle=util_pyplot.call(med.line, id=2), linewidth=med.lw, color=util_pyplot.call(med.color, id=6), label="acc, H100 PCIe")
    med.ax[begin].plot(n3_acc_a100s, perf_med_acc_a100s, util_pyplot.call(med.point, id=2), markersize=med.ms, linestyle=util_pyplot.call(med.line, id=2), linewidth=med.lw, color=util_pyplot.call(med.color, id=0), label="acc, A100 SXM")
    med.ax[begin].plot(n3_cuda_h100s, perf_med_cuda_h100s, util_pyplot.call(med.point, id=3), markersize=med.ms, linestyle=util_pyplot.call(med.line, id=0), linewidth=med.lw, color=util_pyplot.call(med.color, id=4), label="CUDA (miniFE 2.2.0), H100 SXM", markerfacecolor="none")
    med.ax[begin].plot(n3_cuda_h100p, perf_med_cuda_h100p, util_pyplot.call(med.point, id=3), markersize=med.ms, linestyle=util_pyplot.call(med.line, id=0), linewidth=med.lw, color=util_pyplot.call(med.color, id=6), label="CUDA (miniFE 2.2.0), H100 PCIe", markerfacecolor="none")
    med.ax[begin].plot(n3_cuda_a100s, perf_med_cuda_a100s, util_pyplot.call(med.point, id=3), markersize=med.ms, linestyle=util_pyplot.call(med.line, id=0), linewidth=med.lw, color=util_pyplot.call(med.color, id=0), label="CUDA (miniFE 2.2.0), A100 SXM", markerfacecolor="none")
    med.ax[begin].plot(n3_omp_45opt_h100s, perf_med_omp_45opt_h100s, util_pyplot.call(med.point, id=0), markersize=med.ms, linestyle=util_pyplot.call(med.line, id=1), linewidth=med.lw, color=util_pyplot.call(med.color, id=4), label="omp (miniFE 2.2.0), H100 SXM", markerfacecolor="none")
    med.ax[begin].plot(n3_omp_45opt_h100p, perf_med_omp_45opt_h100p, util_pyplot.call(med.point, id=0), markersize=med.ms, linestyle=util_pyplot.call(med.line, id=1), linewidth=med.lw, color=util_pyplot.call(med.color, id=6), label="omp (miniFE 2.2.0), H100 PCIe", markerfacecolor="none")
    med.ax[begin].plot(n3_omp_45opt_a100s, perf_med_omp_45opt_a100s, util_pyplot.call(med.point, id=0), markersize=med.ms, linestyle=util_pyplot.call(med.line, id=1), linewidth=med.lw, color=util_pyplot.call(med.color, id=0), label="omp (miniFE 2.2.0), A100 SXM", markerfacecolor="none")
    med.ax[begin].plot(n3_omp_45opt_mi210, perf_med_omp_45opt_mi210, util_pyplot.call(med.point, id=0), markersize=med.ms, linestyle=util_pyplot.call(med.line, id=1), linewidth=med.lw, color=util_pyplot.call(med.color, id=1), label="omp (miniFE 2.2.0), MI210", markerfacecolor="none")
    med.ax[begin].plot(n3_omp_45opt_mi100, perf_med_omp_45opt_mi100, util_pyplot.call(med.point, id=0), markersize=med.ms, linestyle=util_pyplot.call(med.line, id=1), linewidth=med.lw, color=util_pyplot.call(med.color, id=7), label="omp (miniFE 2.2.0), MI100", markerfacecolor="none")

    max.ax[begin].semilogx()
    med.ax[begin].semilogx()
    max.ax[begin].set_xticks([128^3, 192^3, 256^3, 384^3])
    med.ax[begin].set_xticks([128^3, 192^3, 256^3, 384^3])
    max.ax[begin].set_xticklabels([L"$128^3$", L"$192^3$", L"$256^3$", L"$384^3$"])
    med.ax[begin].set_xticklabels([L"$128^3$", L"$192^3$", L"$256^3$", L"$384^3$"])
    max.ax[begin].grid()
    med.ax[begin].grid()

    max.ax[begin].set_xlabel(L"$N_x \times N_y \times N_z$", fontsize=max.fs)
    med.ax[begin].set_xlabel(L"$N_x \times N_y \times N_z$", fontsize=med.fs)
    max.ax[begin].set_ylabel(L"\unit{GFlop/s}", fontsize=max.fs)
    med.ax[begin].set_ylabel(L"\unit{GFlop/s}", fontsize=med.fs)

    # set label
    at = max.ax[begin]
    handles, labels = at.get_legend_handles_labels()
    at.legend(handles, labels, numpoints=1, handlelength=2.0, bbox_to_anchor=(1, 1), loc="upper left", fontsize=0.8 * max.fs)
    handles = nothing
    labels = nothing
    at = med.ax[begin]
    handles, labels = at.get_legend_handles_labels()
    at.legend(handles, labels, numpoints=1, handlelength=2.0, bbox_to_anchor=(1, 1), loc="upper left", fontsize=0.8 * med.fs)
    handles = nothing
    labels = nothing

    # save figures
    max.fig.savefig(string("fig/", "miniFE", "_", "flops", "_max", ".png"), format="png", dpi=100, bbox_inches="tight")
    med.fig.savefig(string("fig/", "miniFE", "_", "flops", "_med", ".png"), format="png", dpi=100, bbox_inches="tight")
    if output_pdf
        max.fig.savefig(string("fig/", "miniFE", "_", "flops", "_max", ".pdf"), format="pdf", bbox_inches="tight")
        med.fig.savefig(string("fig/", "miniFE", "_", "flops", "_med", ".pdf"), format="pdf", bbox_inches="tight")
    end

    max = nothing
    med = nothing
    PyPlot.close("all")

    return nothing

end


main()
