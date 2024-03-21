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
    # generate CHECK_CLAUSE_N(...)
    for ii in 1:N_max
        print("#define CHECK_CLAUSE_", ii, "(...) CHECK_CLAUSE(__VA_ARGS__)")
        if ii > 1
            print(" CHECK_CLAUSE_", ii - 1, "(ARGS_WITH_NUM(PICKUP_INTERNAL_DIRECTIVE_TAGS(__VA_ARGS__)) APPEND_ARGS(PICKUP_INTERNAL_RETRIEVE_CLAUSE_CANDIDATE(PICKUP_INTERNAL_CLAUSE_ARGS(__VA_ARGS__))))")
        end
        println()
    end
    println("#define APPEND_CLAUSES(...) CHECK_CLAUSE_", N_max, "(__VA_ARGS__)")
end

function main()
    # read options
    argv = parse_cmd()
    N_max = argv["max"]

    generate(N_max)
end

main()
