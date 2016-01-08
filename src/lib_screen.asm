macro   screen_init

        ctrl_io 0xc
        delay 0xf000

        screen_cmd 0x3
        delay 0xf000
        
        screen_cmd 0x3
        delay 0xf000

        screen_cmd 0x3
        delay 0xf000
        
        screen_cmd 0x2
        delay 0xf000

        screen_cmd 0x2
        screen_cmd 0xc

        screen_cmd 0x0
        screen_cmd 0xe
        
        screen_cmd 0x0
        screen_cmd 0x1
        delay 0xf000

end

macro   screen_cmd v

        out_v_@p v 0x1

        ctrl_io 0xe
        ctrl_io 0xc
        delay 0xff00

end 

macro   screen_char v

        ctrl_io 0xd

        out_v_@p v/1 0x1

        ctrl_io 0xf
        ctrl_io 0xd
        delay 0xff00

        out_v_@p v/0 0x1

        ctrl_io 0xf
        ctrl_io 0xc
        delay 0xff00
end 

