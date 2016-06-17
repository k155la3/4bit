macro main

wait:
  usb_read_char
  is_read read
  bu wait

read:
  usb_write_char
  bu wait

end
