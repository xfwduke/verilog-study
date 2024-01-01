`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/28 21:54:18
// Design Name: 
// Module Name: tb_seg_led
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


module tb_seg_led ();
  reg        key0;
  reg        clk;
  reg        rst_n;

  wire [5:0] tled_enable;

  initial begin
    clk   <= 1'b0;
    rst_n <= 1'b1;
    key0  <= 1'b1;

    #10;
    rst_n <= 1'b0;

    #5;
    rst_n <= 1'b1;

    #5;
    key0 <= 1'b0;
    #5;
    key0 <= 1'b1;

    #5;
    key0 <= 1'b0;
    #5;
    key0 <= 1'b1;

    #5;
    key0 <= 1'b0;
    #5;
    key0 <= 1'b1;

    #5;
    key0 <= 1'b0;
    #5;
    key0 <= 1'b1;

    #5;
    key0 <= 1'b0;
    #5;
    key0 <= 1'b1;

    #5;
    key0 <= 1'b0;
    #5;
    key0 <= 1'b1;

    #5;
    key0 <= 1'b0;
    #5;
    key0 <= 1'b1;
  end

  always #1 clk = ~clk;

  seg_led u_seg_leg (
      .key0      (key0),
      .rst_n     (rst_n),
      .clk       (clk),
      .led_enable(tled_enable)
  );
endmodule
