macro   out_v_@p v p
        ld_a v
        out p
end

macro   out_@x_@p x p
        ld_b x
        ld_a_@b
        out p
end

macro   ctrl_io v
        out_v_@p v 0x0
end

