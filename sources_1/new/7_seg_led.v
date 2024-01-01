`timescale 1ns / 1ps 
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2023/12/28 19:41:54
// Design Name:
// Module Name: 7_seg_led
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


module seg_led (
           input key0, rst_n, clk,
           // [A,B,C,D,E,F,G]
           output reg [6: 0] led_value,
           output reg [5: 0] led_enable
       );

// reg [5:0] led_enable_reg = 6'b111110;
reg key_d0, key_d1;

// always @(negedge key0) begin
//   led_enable_reg <= {led_enable_reg[4:0], led_enable_reg[5]};
// end

// always @(posedge clk, negedge rst_n) begin
//   if (!rst_n) begin
//     led_enable_reg <= 6'b111110;
//   end
// end
always @(posedge clk, negedge rst_n) begin
    if (!rst_n) begin
        led_enable <= 6'b111110;
    end
    else begin
        if (key_d0 != key_d1) begin
            led_enable <= {led_enable[4: 0], led_enable[5] };
        end
    end
end

always @(posedge clk, negedge rst_n) begin
    if (!rst_n) begin
        led_value <= 7'b0;
        key_d0 <= 1'b1;
        key_d1 <= 1'b1;
        // led_enable <= 6'b111110;
    end
    else begin
        key_d0 <= key0;
        key_d1 <= key_d0;
    end
end

endmodule
