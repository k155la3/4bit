macro   main

        usb_init
        screen_init
        usb_write_char_v 0x0d
        usb_write_char_v 0x0a
        usb_write_char_v "o"
        usb_write_char_v "k"
        usb_write_char_v "."
        usb_write_char_v 0x0d
        usb_write_char_v 0x0a
x:      usb_read_char
        is_read y
        bu x
y:      st2_@x_@y usb.char screen.char
        screen_char
        usb_write_char
        bu x
end
