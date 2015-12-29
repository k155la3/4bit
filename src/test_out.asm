macro main

        def i*1
        def k*1
        def l*1

rep0:   ld_b i
        ld_a 0x0
        st_a_@b

loop0:  ld_b i
        ld_a_@b
        out 0x0

        ld_b k
        ld_a 0x0
        st_a_@b

loop1:  ld_b k
        ld_a_@b
        out 0x1

        ld_b l
        ld_a 0x0
        st_a_@b

loop2:  ld_b l
        ld_a_@b
        out 0x2

        add 0x1
        bc end2
        ld_b l
        st_a_@b

        bu loop2

end2:   ld_b k
        ld_a_@b
        add 0x1
        bc end1
        ld_b k
        st_a_@b
        bu loop1

end1:   ld_b i
        ld_a_@b
        add 0x1
        bc end0
        ld_b i
	st_a_@b
        bu loop0

end0:   bu rep0

end
