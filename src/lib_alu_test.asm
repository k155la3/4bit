macro   alu_test

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

l8:     ld_a 0x1
        ror
        cmp 0x8
        bz l9
        hlt

l9:     ror
        cmp 0x4
        bz l10
        hlt

l10:    ror
        cmp 0x2
        bz l11
        hlt

l11:    ror
        cmp 0x1
        bz l12
        hlt

l12:    nop

end
