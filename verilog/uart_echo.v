`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2017 08:33:01 PM
// Design Name: 
// Module Name: uart
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module uart_arty(
    input sysclk,
    output uart_rxd,
    input uart_txd
    );
    
    wire rdy;
    wire tx_busy;
    wire[7:0] data;

    uart uart(
        .clk_50m(sysclk),
        .tx(uart_rxd),
        .rx(uart_txd),
        .din(data),
        .dout(data),
        .wr_en(rdy),
        .tx_busy(tx_busy),
        .rdy(rdy),
        .rdy_clr(tx_busy));
endmodule
