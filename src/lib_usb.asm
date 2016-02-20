macro defs
  usb
end

macro usb_write_char
  call usb$wait_w
end

macro usb_write_char_v char
  st2_v_@x char usb$char
  call usb$wait_w
end

macro usb_read_char
  call usb$try_r
end
  
macro usb
  def char*2

wait_w:
  b_io 0x9 0x6 write
  bu wait_w

write:
  out_@x_@p char 0x2
  out_@x_@p char+0x1 0x3
  ctrl_io 0x8
  ctrl_io 0x0
  ret

try_r:
  st_v_@x 0x0 io$read
  b_io 0x5 0xa read
  bu done

read:
  ctrl_io 0x4
  nop
  in_@p_@x 0x2 char
  in_@p_@x 0x3 char+0x1
  ctrl_io 0x0
  st_v_@x 0x1 io$read

done:
  ret

end
