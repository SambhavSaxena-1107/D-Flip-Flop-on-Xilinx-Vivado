`timescale 1ns / 1ps


module DFF(
    input wire clk, reset,
    input wire en,
    input wire d,
    output reg q);

reg r_reg, r_next;
// body
always @(posedge clk, posedge reset)
    if(reset)
    r_reg<=1'b0;
    else
    r_reg<=r_next;
//next-state logic
always @*
    if(en)
    r_next=d;
    else
    r_next=r_reg;
//output logic
always @*
    q=r_reg;
    
endmodule
