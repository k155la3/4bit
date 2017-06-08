#include <fcntl.h>
#include "./obj_dir/Vslug.h"

void cycle(Vslug& slug) {
    slug.eval();
    slug.clk = !slug.clk;
    //usleep(1000);
}

int main() {
    fcntl(0, F_SETFL, O_NONBLOCK);
    /*while (true) {
        char c;
        if (read(0, &c, 1)) {
            write(0, &c, 1);
        }
    }*/

    Vslug slug;
    slug.clk = false;
    slug.rst = true;
    while (true) {
        if (slug.port_out & 0x100) {
            char c = slug.port_out;
            slug.port_in &= (~0x100);
            for (int i = 0; i < 1000; ++i) {
                cycle(slug);
            }
            write(0, &c, 1);
        }
        else {
            slug.port_in |= 0x100;
        }
        cycle(slug);
    }
    return 0;
}
