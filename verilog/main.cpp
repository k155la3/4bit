#include <fcntl.h>
#include <termios.h>
#include "./obj_dir/Vslug.h"

#define WR_BUSY 0x100
#define WR_EN  0x100
#define RD_RDY 0x200
#define RD_CLR  0x200

#define UART_CLK_DIV 8681 // 100_000_000 / (115200 / 10)

int main() {
    fcntl(0, F_SETFL, O_NONBLOCK);
    struct termios tio, restore_tio;
    tcgetattr(STDIN_FILENO, &tio);
    restore_tio = tio;
    tio.c_lflag &= (~ICANON & ~ECHO);
    tcsetattr(STDIN_FILENO,TCSANOW, &tio);

    Vslug slug;
    slug.pclk = false;
    slug.uclk = false;
    slug.rclk = false;
    slug.wclk = false;
    slug.rst = true;
    int i = 0;
    do {
        bool uart_clk = (i % UART_CLK_DIV) == 0;
        char rc, wc;
        if (slug.port_in & RD_RDY && slug.port_out & RD_CLR) {
            slug.port_in &= (~RD_RDY);
        }
        else if (uart_clk && read(0, &rc, 1) == 1) {
            slug.port_in &= (~0xff);
            slug.port_in |= rc;
            slug.port_in |= RD_RDY;
        }

        if (slug.port_in & WR_BUSY) {
            if (uart_clk) {
                write(0, &wc, 1);
                slug.port_in &= (~WR_BUSY);
            }
        }
        else if (slug.port_out & WR_EN) {
            slug.port_in |= WR_BUSY;
            wc = slug.port_out & 0xff;
        }
        slug.eval();
        switch (i % 4) {
            case 0: slug.pclk = !slug.pclk; break;
            case 1: slug.uclk = !slug.uclk; break;
            case 2: slug.rclk = !slug.rclk; break;
            case 3: slug.wclk = !slug.wclk; break;
        }
        ++i;
        //usleep(1);
    }
    while (slug.slug__DOT__prog != 0xf);
    tcsetattr(STDIN_FILENO,TCSANOW, &restore_tio);
    return 0;
}
