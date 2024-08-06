`timescale 1ns / 1ps

module Testbench();

    reg clk, reset;
    reg en;
    reg d;
    wire q;
    
    DFF UUT(clk,reset,en,d,q);
    
    always #5 clk=~clk;
    
    initial
    begin
    
        clk=0;
        reset=1;
        en=0;
        d=1;
        
        #100;
        reset=0;
        en=0;
        d=1;
        
        #100;
        reset=0;
        en=1;
        d=1;
    
    end
    
endmodule
