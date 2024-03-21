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
    # generate PICKUP_INTERNAL_EXPAND_FLAGS_N(...)
    println("#define PICKUP_INTERNAL_EXPAND_FLAGS_1(...) PICKUP_INTERNAL_FLAG_MATCHING(__VA_ARGS__)")
    for ii in 2:N_max
        println("#define PICKUP_INTERNAL_EXPAND_FLAGS_", ii, "(...) PICKUP_INTERNAL_BITOR(PICKUP_INTERNAL_EXPAND_FLAGS_1(EXTRACT_ARGS_1(__VA_ARGS__), RETRIEVE_ARGS_", ii, "(__VA_ARGS__)))(PICKUP_INTERNAL_EXPAND_FLAGS_", ii - 1, "(RETRIEVE_ARGS_1(__VA_ARGS__)))")
    end
end

function main()
    # read options
    argv = parse_cmd()
    N_max = argv["max"]

    generate(N_max)
end

main()
