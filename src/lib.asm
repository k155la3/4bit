macro   bu x
        ld_b x
        bu_b
end

macro   bz x
        ld_b x
        bz_b
end

macro   bc x
        ld_b x
        bc_b
end

macro   ld_b x
        ld_b0 x/0
        ld_b1 x/1
        ld_b2 x/2
end

macro   ld_c x
        ld_c0 x/0
        ld_c1 x/1
        ld_c2 x/2
end

macro   call v
        def curr_return=0x0ffc

        st_a_@b
        st_4d return curr_return
        bu v
return: nop
end

macro   ret
        def curr_return=0x0ffc

        ld_c curr_return
        ld_b0_@c
        ld_c0 curr_return/0+1
        ld_b1_@c
        ld_c0 curr_return/0+2
        ld_b2_@c
        bu_b
end

macro   cmp_d4 x v
        ld_c x
        ld_a_@c
        cmp v/0
        bz cmp1
        bu done
cmp1:   ld_c0 x/0+1
        ld_a_@c
        cmp v/1
        bz cmp2
        bu done
cmp2:   ld_c0 x/0+2
        ld_a_@c
        cmp v/2
        bz cmp3
        bu done
cmp3:   ld_c0 x/0+3
        ld_a_@c
        cmp v/3
done:   nop
end

macro   cmp_dd x y
        ld_c x
        ld_a_@c
        ld_c y
        cmp_@c
        bz cmp1
        bu done
cmp1:   ld_c x
        ld_c0 x/0+1
        ld_a_@c
        ld_c y
        ld_c0 y/0+1
        cmp_@c
        bz cmp2
        bu done
cmp2:   ld_c x
        ld_c0 x/0+2
        ld_a_@c
        ld_c y
        ld_c0 y/0+2
        cmp_@c
        bz cmp3
        bu done
cmp3:   ld_c x
        ld_c0 x/0+3
        ld_a_@c
        ld_c y
        ld_c0 y/0+3
        cmp_@c
done:   nop
end

macro   add_d4 x v
        ld_c x
        ld_a_@c
        add v/0
        st_a_@c

        ld_c0 x/0+1
        bc car1
        ld_a_@c
        add v/1
        st_a_@c
        bu add2
car1:   ld_a_@c
        cmp 0xf
        bz ecar1
        add 0x1
        add v/1
        st_a_@c
        bu add2
ecar1:  ld_a v/1
        st_a_@c
        ld_a 0xf
        add 0x1

add2:   ld_c0 x/0+2
        bc car2
        ld_a_@c
        add v/1
        st_a_@c
        bu add3
car2:   ld_a_@c
        cmp 0xf
        bz ecar2
        add 0x1
        add v/1
        st_a_@c
        bu add3
ecar2:  ld_a v/1
        st_a_@c
        ld_a 0xf
        add 0x1

add3:   ld_c0 x/0+3
        bc car3
        ld_a_@c
        add v/1
        st_a_@c
        bu done
car3:   ld_a_@c
        cmp 0xf
        bz ecar3
        add 0x1
        add v/1
        st_a_@c
        bu done
ecar3:  ld_a v/1
        st_a_@c
        ld_a 0xf
        add 0x1
done:   nop

        end

macro   st_4d v x
        ld_c x
        ld_a v/0
        st_a_@c

        ld_c0 x/0+1
        ld_a v/1
        st_a_@c

        ld_c0 x/0+2
        ld_a v/2
        st_a_@c

        ld_c0 x/0+3
        ld_a v/3
        st_a_@c
end

macro   st_4i v p
        ld_b p
        ld_c0_@b

        ld_b0 p/0+1
        ld_c1_@b

        ld_b0 p/0+2
        ld_c2_@b

        ld_a v/0
        st_a_@c

        ld_b0 p/0
        ld_a_@b
        add 0x1
        ld_c0_a

        ld_a v/1
        st_a_@c

        ld_b0 p/0
        ld_a_@b
        add 0x2
        ld_c0_a

        ld_a v/2
        st_a_@c

        ld_b0 p/0
        ld_a_@b
        add 0x3
        ld_c0_a

        ld_a v/3
        st_a_@c
end

macro   st_di x p
        ld_b p
        ld_c0_@b

        ld_b0 p/0+1
        ld_c1_@b

        ld_b0 p/0+2
        ld_c2_@b

        ld_b x
        ld_a_@b
        st_a_@c

        ld_b p
        ld_a_@b
        add 0x1
        ld_c0_a

        ld_b x
        ld_b0 x/0+1
        ld_a_@b
        st_a_@c

        ld_b p
        ld_a_@b
        add 0x2
        ld_c0_a

        ld_b x
        ld_b0 x/0+2
        ld_a_@b
        st_a_@c

        ld_b p
        ld_a_@b
        add 0x3
        ld_c0_a

        ld_b x
        ld_b0 x/0+3
        ld_a_@b
        st_a_@c
end

macro   ld_di x p
        ld_b p
        ld_c0_@b

        ld_b0 p/0+1
        ld_c1_@b

        ld_b0 p/0+2
        ld_c2_@b

        ld_a_@c
        ld_b x
        st_a_@b

        ld_b p
        ld_a_@b
        add 0x1
        ld_c0_a

        ld_a_@c
        ld_b x
        ld_b0 x/0+1
        st_a_@b

        ld_b p
        ld_a_@b
        add 0x2
        ld_c0_a

        ld_a_@c
        ld_b x
        ld_b0 x/0+2
        st_a_@b

        ld_b p
        ld_a_@b
        add 0x3
        ld_c0_a

        ld_a_@c
        ld_b x
        ld_b0 x/0+3
        st_a_@b
end
