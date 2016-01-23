macro ram_test
  call ram$test
end

macro ram_write sample
  st_v_@x sample ram$sample
  call ram$write
end

macro ram_read sample
  st_v_@x sample ram$sample
  call ram$read
end

macro defs
  ram
end

macro ram

  def i*4
  def sample*1
  def start*1

test:
  ram_write 0x8
  ram_read 0x8

  ram_write 0xa
  ram_read 0xa

  ram_write 0x5
  ram_read 0x5
  
  ram_write 0xf
  ram_read 0xf
  
  ram_write 0x0
  ram_read 0x0

  ret

write:
  st4_v_@x start i

wloop:
  ld_c_@x i

  ld_b sample
  ld_a_@b
  st_a_@c
  ror
  st_a_@b

  add4_@x_v i 0x0001
  cmp4_@x_v i __init$s_start
  bz wend
  bu wloop

wend:
  ret

read:
  st4_v_@x start i

rloop:
  ld_c_@x i

  ld_b sample
  ld_a_@b
  cmp_@c
  bz match
  hlt

match:
  ror
  ld_b sample
  st_a_@b

  add4_@x_v i 0x0001
  cmp4_@x_v i __init$s_start
  bz rend
  bu rloop

rend:
  ret

end
