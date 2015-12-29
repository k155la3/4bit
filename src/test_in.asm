macro main

wait:   in 0x0
        cmp 0x1
        bz read
        bu wait
read:   in 0x1
        out 0x0
        bu wait

end
