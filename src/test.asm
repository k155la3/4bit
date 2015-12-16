macro main
        def i*4
        def k*4
        def p*4
        def q*4
        def x*4
        def y*4
        def x2*4
        def y2*4

        st_4d i p
        st_4d k q

        st_4d 0xaaaa x
        st_4d 0x5555 y

        st_di x p
        st_di y q

        ld_di x2 p
        ld_di y2 q

        cmp_dd x x2
        bz l0
        hlt
l0:     cmp_dd y y2
        bz l1
        hlt
l1:     hlt
end
