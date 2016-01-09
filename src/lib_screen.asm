macro   defs
        screen
end

macro   screen_init
        call screen.init
end
macro   screen_cmd cmd_param
        st_v_@x cmd_param screen.cmd_param
        call screen.cmd
end
macro   screen_char char_param
        st_v_@x char_param/0 screen.lo_char_param
        st_v_@x char_param/1 screen.hi_char_param
        call screen.char
end

macro   screen_delay count_param
        st4_v_@x count_param screen.count_param
        call screen.delay
end
        
macro   screen
        
        def cmd_param*1
        def lo_char_param*2
        def hi_char_param*2
        def count_param*4

init:   ctrl_io 0xc
        screen_delay 0x1000

        screen_cmd 0x3
        screen_delay 0x1000
        
        screen_cmd 0x3
        screen_delay 0x1000

        screen_cmd 0x3
        screen_delay 0x1000
        
        screen_cmd 0x2
        screen_delay 0x1000

        screen_cmd 0x2
        screen_cmd 0xc

        screen_cmd 0x0
        screen_cmd 0xe
        
        screen_cmd 0x0
        screen_cmd 0x1
        screen_delay 0x1000

        ret

cmd:    out_@x_@p cmd_param 0x1

        ctrl_io 0xe
        ctrl_io 0xc
        screen_delay 0x0100

        ret


char:   ctrl_io 0xd

        out_@x_@p hi_char_param 0x1

        ctrl_io 0xf
        ctrl_io 0xd
        screen_delay 0x0100

        out_@x_@p lo_char_param 0x1

        ctrl_io 0xf
        ctrl_io 0xc
        screen_delay 0x0100

        ret

delay:  add4_@x_v count_param 0xffff
        cmp4_@x_v count_param 0x0000
        bz dend
        bu delay

dend:   ret

end
