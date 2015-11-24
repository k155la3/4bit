names
        l=0x00a0
        m=0x0a00
end

main

k:      nop
        nop
        bu m
l:      nop
        nop
        bu k
m:      nop
        nop
        bu l
end

macro   bu x
        ld_b x
        bu_b
end

macro   ld_b x
        ld_b0 x/0
        ld_b1 x/1
        ld_b2 x/2
end
