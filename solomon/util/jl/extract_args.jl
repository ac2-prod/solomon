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
    # generate EXTRACT_ARGS_N(...)
    for ii in 0:N_max
        print("#define EXTRACT_ARGS_", ii, "(")
        for jj in 1:ii
            print("arg", jj, ", ")
        end
        print("...) ")
        for jj in 1:ii
            print("arg", jj)
            if jj < ii
                print(", ")
            end
        end
        println()
    end

    # generate RETRIEVE_ARGS_N(...)
    for ii in 0:N_max
        print("#define RETRIEVE_ARGS_", ii, "(")
        for jj in 1:ii
            print("arg", jj, ", ")
        end
        println("...) __VA_ARGS__")
    end
end

function main()
    # read options
    argv = parse_cmd()
    N_max = argv["max"]

    generate(N_max)
end

main()
