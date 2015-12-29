macro main
        def sample*1
        def i*4
        def start*1

repeat: ld_b sample
        ld_a 0x8
        st_a_@b
        call write

        ld_b sample
        ld_a 0x8
        st_a_@b
        call read

        ld_b sample
        ld_a 0xa
        st_a_@b
        call write

        ld_b sample
        ld_a 0xa
        st_a_@b
        call read

        ld_b sample
        ld_a 0x5
        st_a_@b
        call write

        ld_b sample
        ld_a 0x5
        st_a_@b
        call read

        bu repeat

write:  st_4d start i

wloop:  ld_b i
        ld_c0_@b
        ld_b0 i/0+1
        ld_c1_@b
        ld_b0 i/0+2
        ld_c2_@b

        ld_b sample
        ld_a_@b
        st_a_@c
        ror
        st_a_@b

        add_d4 i 0x0001
        cmp_d4 i 0x0ffc
        bz wend
        bu wloop
wend:   ret

read:   st_4d start i

rloop:  ld_b i
        ld_c0_@b
        ld_b0 i/0+1
        ld_c1_@b
        ld_b0 i/0+2
        ld_c2_@b

        ld_b sample
        ld_a_@b
        cmp_@c
        bz match
        hlt
match:  ror
        ld_b sample
        st_a_@b

        add_d4 i 0x0001
        cmp_d4 i 0x0ffc
        bz rend
        bu rloop
rend:   ret

end
