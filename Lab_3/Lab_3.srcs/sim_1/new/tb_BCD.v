`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/09/30 13:25:56
// Design Name: 
// Module Name: tb_BCD
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


module tb_BCD;
    reg [3:0] SW;
    wire [6:0]seg;
    wire AN0;
    wire AN1;
    wire AN2;
    wire AN3;
    
    BCD uut (
            .SW(SW),
            .seg(seg),
            .AN0(AN0),
            .AN1(AN1),
            .AN2(AN2),
            .AN3(AN3)
    );
    
    initial begin
    #50;        // initial wait
    
    // Iterate through all values 0-9
    
    SW[0] = 1'b0;
    SW[1] = 1'b0;
    SW[2] = 1'b0;
    SW[3] = 1'b0;
    #50;
    
    SW[0] = 1'b0;
    SW[1] = 1'b0;
    SW[2] = 1'b0;
    SW[3] = 1'b1;
    #50;
    
    SW[0] = 1'b0;
    SW[1] = 1'b0;
    SW[2] = 1'b1;
    SW[3] = 1'b0;
    #50;
    
    SW[0] = 1'b0;
    SW[1] = 1'b0;
    SW[2] = 1'b1;
    SW[3] = 1'b1;
    #50;
    SW[0] = 1'b0;
    SW[1] = 1'b1;
    SW[2] = 1'b0;
    SW[3] = 1'b0;
    #50;
        
    SW[0] = 1'b0;
    SW[1] = 1'b1;
    SW[2] = 1'b0;
    SW[3] = 1'b1;
    #50;    
    
    SW[0] = 1'b0;
    SW[1] = 1'b1;
    SW[2] = 1'b1;
    SW[3] = 1'b0;
    #50;
    
    SW[0] = 1'b0;
    SW[1] = 1'b1;
    SW[2] = 1'b1;
    SW[3] = 1'b1;
    #50;
    
    SW[0] = 1'b1;
    SW[1] = 1'b0;
    SW[2] = 1'b0;
    SW[3] = 1'b0;
    #50;
    
    SW[0] = 1'b1;
    SW[1] = 1'b0;
    SW[2] = 1'b0;
    SW[3] = 1'b1;
    #50;
    
    SW[0] = 1'b1;
    SW[1] = 1'b0;
    SW[2] = 1'b1;
    SW[3] = 1'b0;
    #50;
    
    SW[0] = 1'b1;
    SW[1] = 1'b0;
    SW[2] = 1'b1;
    SW[3] = 1'b1;
    #50;
    SW[0] = 1'b1;
    SW[1] = 1'b1;
    SW[2] = 1'b0;
    SW[3] = 1'b0;
    #50;
        
    SW[0] = 1'b1;
    SW[1] = 1'b1;
    SW[2] = 1'b0;
    SW[3] = 1'b1;
    #50;    
    
    SW[0] = 1'b1;
    SW[1] = 1'b1;
    SW[2] = 1'b1;
    SW[3] = 1'b0;
    #50;
    
    SW[0] = 1'b1;
    SW[1] = 1'b1;
    SW[2] = 1'b1;
    SW[3] = 1'b1;
    #50;
    
    end
endmodule
