#include <iostream>
#include "./obj_dir/Vslug.h"

int main() {
    Vslug slug;
    slug.clk = false;
    slug.rst = true;
    for (int i = 0; i < 128; ++i) {
        slug.eval();
        slug.clk = !slug.clk;
    }
    return 0;
}