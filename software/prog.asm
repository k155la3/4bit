names
        i*4
        l=0x0300
        m=0x0f00
end

main
l0:     ld_a 0x0
        out_a 0xe
        test_alu
        ld_a 0x4
        out_a 0xe
        bu l0
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

macro   bu x
        ld_b x
        bu_b
end

macro   bz x
        ld_b x
        bz_b
end

macro   bc x
        ld_b x
        bc_b
end

macro   ld_b x
        ld_b0 x/0
        ld_b1 x/1
        ld_b2 x/2
end

macro   ld_c x
        ld_c0 x/0
        ld_c1 x/1
        ld_c2 x/2
end

macro   st4 v x
        ld_c x
        ld_a v/0
        st_a_@c
        ld_c0 x/0+1
        ld_a v/1
        st_a_@c
        ld_c0 x/0+2
        ld_a v/2
        st_a_@c
        ld_c0 x/0+3
        ld_a v/3
        st_a_@c
end
