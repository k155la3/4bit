macro   hlt_pad

        hlt
        hlt
end

macro   test_branch

        bu l0
        hlt_pad
l0:     bu l19
        hlt_pad
l1:     bu l18
        hlt_pad
l2:     bu l17
        hlt_pad
l3:     bu l16
        hlt_pad
l4:     bu l15
        hlt_pad
l5:     bu l14
        hlt_pad
l6:     bu l13
        hlt_pad
l7:     bu l12
        hlt_pad
l8:     bu l11
        hlt_pad
l9:     bu l10
        hlt_pad
l10:    bu done
        hlt_pad
l11:    bu l9
        hlt_pad
l12:    bu l8
        hlt_pad
l13:    bu l7
        hlt_pad
l14:    bu l6
        hlt_pad
l15:    bu l5
        hlt_pad
l16:    bu l4
        hlt_pad
l17:    bu l3
        hlt_pad
l18:    bu l2
        hlt_pad
l19:    bu l1
        hlt_pad
done:   nop

end
