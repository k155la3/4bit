macro __init

        def x=0x5a5a
        def y=0xa5a5

        ld_c x
        ld_a 0xa
lr:     ld_b y
        st_a_@b
        ror
        st_a_@c
        ror
        cmp_@b
        bz l0
        hlt
l0:     ror
        cmp_@c
        bz l1
        hlt
l1:     bu lr
end
