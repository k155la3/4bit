macro defs
  io
end

macro io
  def read*1
  def count*4

delay:
  add4_@x_v count 0xffff
  cmp4_@x_v count 0x0000
  bz done
  bu delay

done:
  ret

end

macro io_delay_v count
  st4_v_@x count io$count
  call io$delay
end

macro is_read x
  cmp_@x_v io$read 0x0
  bz __end
  bu x
end

macro out_v_@p v p
  ld_a v
  out p
end

macro out_@x_@p x p
  ld_b x
  ld_a_@b
  out p
end

macro in_@p_@x p x
  in p
  ld_b x
  st_a_@b
end

macro ctrl_io v
  out_v_@p v 0x0
end

macro b_io m0 m1 x
  in 0x0
  nor m0
  cmp m1
  bz x
end
