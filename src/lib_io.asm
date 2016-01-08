macro   out_v_@p v p

        ld_a v
        out p

end

macro   ctrl_io v

        out_v_@p v 0x0
end

macro   delay v

        def i*1
        def k*1
        def l*1
        def m*1

        ld_b i
        ld_a v/3
        st_a_@b

loop0:  ld_b k
        ld_a v/2
        st_a_@b

loop1:  ld_b l
        ld_a v/1
        st_a_@b

loop2:  ld_b m
        ld_a v/0
        st_a_@b

loop3:  ld_b m
        ld_a_@b
        add 0x1
        bc end3
        ld_b m
        st_a_@b
        bu loop3

end3:   ld_b l
        ld_a_@b
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

end0:   nop

end
