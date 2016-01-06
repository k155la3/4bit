macro main

        ld_a 0xc
        out 0x0
        delay 0xf000

        write_screen_cmd 0x3
        delay 0xf000
        
        write_screen_cmd 0x3
        delay 0xf000

        write_screen_cmd 0x3
        delay 0xf000
        
        write_screen_cmd 0x2
        delay 0xf000

        write_screen_cmd 0x2
        write_screen_cmd 0xc

        write_screen_cmd 0x0
        write_screen_cmd 0xe
        
        write_screen_cmd 0x0
        write_screen_cmd 0x1
        delay 0xf000
        
        write_screen_char 0x4f
        write_screen_char 0x4b
        write_screen_char 0x2e

wait0:  in 0x0
        nor 0xe
        cmp 0x0
        bz read
        bu wait0

read:   ld_a 0xd
        out 0x0

        ld_a 0x3
        out 0x1
        ld_a 0xf
        out 0x0
        ld_a 0xd
        out 0x0

        delay 0xff00

        in 0x1
        out 0x1
        ld_a 0xf
        out 0x0
        ld_a 0xc
        out 0x0

        delay 0xff00
        
wait1:  in 0x0
        nor 0xe
        cmp 0x0
        bz wait1
        bu wait0

end

macro   write_screen_cmd v

        ld_a v
        out 0x1

        ld_a 0xe
        out 0x0
        ld_a 0xc
        out 0x0

        delay 0xff00

end 

macro   write_screen_char v

        ld_a 0xd
        out 0x0

        ld_a v/1
        out 0x1
        ld_a 0xf
        out 0x0
        ld_a 0xd
        out 0x0

        delay 0xff00

        ld_a v/0
        out 0x1
        ld_a 0xf
        out 0x0
        ld_a 0xc
        out 0x0

        delay 0xff00
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
