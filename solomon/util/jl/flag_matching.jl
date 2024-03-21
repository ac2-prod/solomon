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
    # generate PICKUP_INTERNAL_FLAG_MATCHING_N(...)
    println("#define PICKUP_INTERNAL_FLAG_MATCHING_0(directive_tag) 0")
    println("#define PICKUP_INTERNAL_FLAG_MATCHING_1(directive_tag, clause_tag) PICKUP_INTERNAL_BITOR_0(UTIL_CLOAK_EQUAL(directive_tag, clause_tag))")
    for ii in 2:N_max
        println("#define PICKUP_INTERNAL_FLAG_MATCHING_", ii, "(directive_tag, clause_tag, ...) PICKUP_INTERNAL_BITOR(UTIL_CLOAK_EQUAL(directive_tag, clause_tag))(PICKUP_INTERNAL_FLAG_MATCHING_", ii - 1, "(directive_tag, __VA_ARGS__))")
    end
end

function main()
    # read options
    argv = parse_cmd()
    N_max = argv["max"]

    generate(N_max)
end

main()
