`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/20 14:57:05
// Design Name: 
// Module Name: tb_rising_edge_detector
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


module rising_edge_tb;

reg clk;
reg signal;
reg reset;

wire outedge;

rising_edge_detector ul (
.clk(clk),
.signal(signal),
.reset(reset),
.outedge(outedge)
);

initial begin
    
    clk = 0;
    signal = 0;
    reset = 0;
    
    #10;
    
    signal = 1;
    reset = 0;
    
    #10;
    
    signal = 0;
    reset = 1;
    
    #10;
    
    signal = 1;
    reset = 1;
    
    #10;
    
    signal = 0;
    reset = 0;
    
    #10;
    
    signal = 1;
    reset = 0;
    
    #10
    
    reset = 1;
    
    #20;
    
    reset = 0;
    
    #20;
    
    signal = 0;
    reset = 1;
    
    #20;
    
    signal = 0;
    reset = 0;
    
end
always
    #5 clk = ~clk;

endmodule