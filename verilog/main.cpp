#include <iostream>
#include "./obj_dir/Vslug.h"

int main() {
    Vslug slug;
    slug.clk = false;
    slug.rst = true;
    slug.port_in = 0xf;
    for (int i = 0; i < 64; ++i) {
        slug.eval();
        slug.clk = !slug.clk;
    }
    return 0;
}