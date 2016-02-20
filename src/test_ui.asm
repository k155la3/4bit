macro main

  screen_init

wait:
  keypad_read_code 
  is_read r_key
  bu wait

r_key:
  st_@x_@y keypad$code screen$char
  st_v_@x 0x4 screen$char+0x1

  screen_char
  bu wait
end
