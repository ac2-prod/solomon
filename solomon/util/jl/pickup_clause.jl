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
    # generate PICKUP_CLAUSE_N(...)
    for ii in 1:N_max
        # println("#define PICKUP_CLAUSE_", ii, "(...) APPEND_CLAUSE(PICKUP_INTERNAL_EXPAND_FLAGS_", ii, "(EXTRACT_ARGS_", ii, "(__VA_ARGS__), RETRIEVE_ARGS_", ii + 1, "(__VA_ARGS__)), EXTRACT_ARGS_1(RETRIEVE_ARGS_", ii, "(__VA_ARGS__)))")
        print("#define PICKUP_CLAUSE_", ii, "(")
        for jj in 1:ii
            print("tag", jj, ", ")
        end
        print("clause, ...) APPEND_CLAUSE(PICKUP_INTERNAL_EXPAND_FLAGS_", ii, "(")
        for jj in 1:ii
            print("tag", jj, ", ")
        end
        println("__VA_ARGS__), clause)")
    end
end

function main()
    # read options
    argv = parse_cmd()
    N_max = argv["max"]

    generate(N_max)
end

main()
