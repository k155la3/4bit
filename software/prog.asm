names
        l=0x010
        m=0x100
        x*4
end

prog
k:      ld_b0 m/0
        ld_b1 m/1
        ld_b2 m/2
        bu_b
l:      ld_b0 k/0
        ld_b1 k/1
        ld_b2 k/2
        bu_b
m:      ld_b0 l/0
        ld_b1 l/1
        ld_b2 l/2
        ld_a 0xf
        bu_b
end
