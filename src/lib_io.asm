macro   defs
        io
end

macro   io
        def read*1
end

macro   is_read x
        cmp_@x_v io.read 0x0
        bz __end
        bu x
end

macro   out_v_@p v p
        ld_a v
        out p
end

macro   out_@x_@p x p
        ld_b x
        ld_a_@b
        out p
end

macro   in_@p_@x p x
        in p
        ld_b x
        st_a_@b
end

macro   ctrl_io v
        out_v_@p v 0x0
end

macro   b_io m0 m1 x
        in 0x0
        nor m0
        cmp m1
        bz x
end
