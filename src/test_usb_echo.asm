macro main
        def lo*1
        def hi*1

        ld_a 0xc
        out 0x0
wait_r: in 0x0
        nor 0x5
        cmp 0xa
        bz read
        bu wait_r
read:   ld_a 0x8
        out 0x0
        in 0x2
        ld_b lo
        st_a_@b
        in 0x3
        ld_b hi
        st_a_@b
        ld_a 0xc
        out 0x0


wait_w: in 0x0
        nor 0x9
        cmp 0x6
        bz write
        bu wait_w
write:  ld_b lo
        ld_a_@b
        out 0x2
        ld_b hi
        ld_a_@b
        out 0x3
        ld_a 0x4
        out 0x0
        ld_a 0xc
        out 0x0
        bu wait_r

end
