macro defs
  screen
end

macro screen_init
  call screen$init
end
macro screen_cmd
  call screen$wcmd
end
macro screen_cmd_v cmd
  st_v_@x cmd screen$cmd
  call screen$wcmd
end
macro screen_char
  call screen$wchar
end
macro screen_char_v char
  st2_v_@x char screen$char
  call screen$wchar
end
  
macro screen
  
  def cmd*1
  def char*2

init:
  ctrl_io 0xc
  io_delay_v 0x1000

  screen_cmd_v 0x3
  io_delay_v 0x1000
  
  screen_cmd_v 0x3
  io_delay_v 0x1000

  screen_cmd_v 0x3
  io_delay_v 0x1000
  
  screen_cmd_v 0x2
  io_delay_v 0x1000

  screen_cmd_v 0x2
  screen_cmd_v 0xc

  screen_cmd_v 0x0
  screen_cmd_v 0xe
  
  screen_cmd_v 0x0
  screen_cmd_v 0x1
  io_delay_v 0x1000

  ret

wcmd:
  out_@x_@p cmd 0x1

  ctrl_io 0xe
  ctrl_io 0xc
  io_delay_v 0x0100

  ret


wchar:
  ctrl_io 0xd

  out_@x_@p char+0x1 0x1

  ctrl_io 0xf
  ctrl_io 0xd
  io_delay_v 0x0100

  out_@x_@p char 0x1

  ctrl_io 0xf
  ctrl_io 0xc
  io_delay_v 0x0100

  ret

end
