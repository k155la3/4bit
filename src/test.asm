macro   main
        test_branch
        test_alu
        test_ram

        screen_init
        screen_char 0x4f
        screen_char 0x4b
        screen_char 0x2e

        hlt
end
