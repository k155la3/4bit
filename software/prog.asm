names
        l=0x010
        m=0x020
end

main
k:      nop
        ld_b m
        bu_b
l:      nop
        ld_b k
        bu_b
m:      nop
        ld_b l
        bu_b
end

macro ld_b x
        ld_b0 x/0+1
        ld_b1 x/1
        ld_b2 x/2
end
