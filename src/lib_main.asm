macro __init

  def sp*4
  def cp*4
  def rp*4
  def s_start=0xfff0

  nop
  st4_v_@x s_start sp

  init
  main
  hlt

  defs
  hlt
        
call:
  st4_@x_@@p rp sp
  add_@x_v sp 0x4
  ld_b_@x cp
  bu_b

ret:
  add_@x_v sp 0xc
  ld4_@x_@@p rp sp
  ld_b_@x rp
  bu_b

end

macro init
end     

macro main
end     

macro defs
end     

macro call proc
  st4_v_@x proc __init$cp
  st4_v_@x __end __init$rp
  bu __init$call
end

macro ret
  bu __init$ret
end

