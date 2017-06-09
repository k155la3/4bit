#include <fcntl.h>
#include <termios.h>
#include "./obj_dir/Vslug.h"

int main() {
    fcntl(0, F_SETFL, O_NONBLOCK);
    struct termios tio;
    tcgetattr(STDIN_FILENO, &tio);
    tio.c_lflag &= (~ICANON & ~ECHO);
    tcsetattr(STDIN_FILENO,TCSANOW, &tio);

    Vslug slug;
    slug.clk = false;
    slug.rst = true;
    while (true) {
        if (slug.clk) {
            char c;
            if (slug.port_in & 0x200) {
                if (slug.port_out & 0x200) {
                    slug.port_in &= (~0x200);
                }
            } else if(read(0, &c, 1) == 1) {
                slug.port_in &= (~0xff);
                slug.port_in |= c;
                slug.port_in |= 0x200;
            }

            if (slug.port_in & 0x100) {
                if (slug.port_out & 0x100) {
                    slug.port_in &= (~0x100);
                }
            } else if (slug.port_out & 0x100) {
                slug.port_in |= 0x100;
                c = slug.port_out & 0xff;
                write(0, &c, 1);
            }
        }
        slug.eval();
        slug.clk = !slug.clk;
        usleep(1000);
    }
    return 0;
}
