macro   defs
        keypad
end

macro   keypad_init
        ctrl_io 0xc
end

macro   keypad_read_code
        call keypad.try_r
end
        
macro   keypad
        def code*1

try_r:  st_v_@x 0x0 io.read
        b_io 0xe 0x0 read
        bu done
read:   in_@p_@x 0x1 code
wait:   b_io 0xe 0x0 wait
        st_v_@x 0x1 io.read
done:   ret

end
