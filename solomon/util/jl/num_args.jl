using ArgParse
function parse_cmd()
    cfg = ArgParseSettings()
    @add_arg_table cfg begin
        "--max"
        help = "maximum number"
        arg_type = Int
        default = 8
    end
    return parse_args(cfg)
end

function generate(N_max::Int)
    # generate _NUM_ARGS(...)
    print("#define _NUM_ARGS(")
    for ii in 0:N_max
        print("_", ii, ", ")
    end
    println("N, ...) N")

    # generate NUM_ARGS(...)
    print("#define NUM_ARGS(...) _NUM_ARGS(0, ##__VA_ARGS__")
    for ii in N_max:-1:0
        print(", ", ii)
    end
    println(")")
end

function main()
    # read options
    argv = parse_cmd()
    N_max = argv["max"]
    # println(N_max)

    generate(N_max)
end

main()
