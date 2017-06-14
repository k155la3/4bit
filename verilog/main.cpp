#include <fcntl.h>
#include <termios.h>
#include "./obj_dir/Vslug.h"

#define TXE 0x100
#define WR  0x100
#define RXF 0x200
#define RD  0x200

#define TXE_DELAY 5000
#define RXF_DELAY 5000

int main() {
    fcntl(0, F_SETFL, O_NONBLOCK);
    struct termios tio, restore_tio;
    tcgetattr(STDIN_FILENO, &tio);
    restore_tio = tio;
    tio.c_lflag &= (~ICANON & ~ECHO);
    tcsetattr(STDIN_FILENO,TCSANOW, &tio);

    Vslug slug;
    slug.clk = false;
    slug.rst = true;
    slug.port_in |= RXF;
    bool wr = false, rd = false;
    int i = 0, rxf = -1, txe = -1;
    do {
        char rc, wc;
        if (slug.port_in & RXF) {
            if (i > rxf && read(0, &rc, 1) == 1) {
                slug.port_in &= (~RXF);
            }
        }
        else if (slug.port_out & RD) {
            rd = true;
        }
        else if (rd) {
            slug.port_in &= (~0xff);
            slug.port_in |= rc;
            slug.port_in |= RXF;
            rxf = i + (RXF_DELAY * (rand() % 10));
            rd = false;
        }

        if (slug.port_in & TXE) {
            if (i >= txe) {
                write(0, &wc, 1);
                slug.port_in &= (~TXE);
            }
        } else if (slug.port_out & WR) {
            wr = true;
        }
        else if (wr) {
            wr = false;
            slug.port_in |= TXE;
            wc = slug.port_out & 0xff;
            txe = i + (TXE_DELAY * (rand() % 10));
        }
        slug.eval();
        slug.clk = !slug.clk;
        ++i;
        //usleep(1000);
    }
    while (slug.slug__DOT__prog != 0xf);
    tcsetattr(STDIN_FILENO,TCSANOW, &restore_tio);
    return 0;
}
