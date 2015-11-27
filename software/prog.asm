macro main
        test_alu
        test_ram
        clear_error
end

macro   clear_error
        ld_a 0x4
        out_a 0xe
end

macro   test_ram

        def i*4
        def k*4
        def s*4

        st4 s i
loop:   add4 i 0x0004
        rst4 0xa55a i
        rld4 k i
        cmp4 k 0xa55a
        bz cont
        hlt
        rst4 0x5aa5 i
        rld4 k i
        cmp4 k 0x5aa5
        bz cont
        hlt
cont:   cmp4 i 0x0ffc
        bz done
        bu loop
done:   nop
        end

macro   test_alu
        ld_a 0x1
        add 0x2
        cmp 0x3
        bz l0
        hlt
l0:     ld_a 0x2
        add 0xf
        bc l1
        hlt
l1:     cmp 0x1
        bz l2
        hlt
l2:     ld_a 0xa
        add 0xa
        bc l3
        hlt
l3:     cmp 0x4
        bz l4
        hlt
l4:     ld_a 0xf
        add 0xf
        bc l5
        hlt
l5:     cmp 0xe
        bz l6
        hlt
l6:     ld_a 0xa
        nor 0xa
        cmp 0x5
        bz l7
        hlt
l7:     ld_a 0xa
        nor 0x4
        cmp 0x1
        bz l8
        hlt
l8:     nop
end
