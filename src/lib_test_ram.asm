macro   test_ram

        def ctx*4
        def i*4
        def sample*1
        def start*1

        st_v_@x 0x8 sample
        call ctx write

        st_v_@x 0x8 sample
        call ctx read

        st_v_@x 0xa sample
        call ctx write

        st_v_@x 0xa sample
        call ctx read

        st_v_@x 0x5 sample
        call ctx write

        st_v_@x 0x5 sample
        call ctx read

        bu done

write:  st4_v_@x start i

wloop:  ld_c_@x i

        ld_b sample
        ld_a_@b
        st_a_@c
        ror
        st_a_@b

        add4_@x_v i 0x0001
        cmp4_@x_v i 0x1000
        bz wend
        bu wloop

wend:   ret ctx

read:   st4_v_@x start i

rloop:  ld_c_@x i

        ld_b sample
        ld_a_@b
        cmp_@c
        bz match
        hlt

match:  ror
        ld_b sample
        st_a_@b

        add4_@x_v i 0x0001
        cmp4_@x_v i 0x1000
        bz rend
        bu rloop

rend:   ret ctx

done:   nop

end
