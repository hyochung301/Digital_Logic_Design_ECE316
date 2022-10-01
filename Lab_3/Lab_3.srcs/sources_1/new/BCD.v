`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 09/29/2022 06:42:49 PM
// Design Name:
// Module Name: lcd
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


module lcd(
    input [3:0] sw, // binary input
    output  AN3, AN2, AN1, AN0,
    output[6:0] seg,
    output dp
   
    );
   assign AN3 = 1;
  assign  AN2 = 1;
  assign  AN1 = 1;
 assign   AN0 = 0;
   
    wire[6:0] seg;
    assign seg[0]= ((~sw[3])&(~sw[2])&(~sw[1])&sw[0]) | ((~sw[3])&sw[2]&(~sw[1])&(~sw[0])); //Logical expression for segment0 (Segment A)

assign seg[1]= ((~sw[3])&sw[2]&(~sw[1])&sw[0]) | ((~sw[3])&sw[2]&sw[1]&(~sw[0])); //Logical expression for segment1 (Segment B)

assign seg[2]= ((~sw[3])&(~sw[2])&sw[1]&(~sw[0])); //Logical expression for segment2 (Segment C)

assign seg[3] = ((~sw[3])&(~sw[2])&(~sw[1])&sw[0]) | ((~sw[3])&sw[2]&(~sw[1])&(~sw[0])) | ((~sw[3])&sw[2]&sw[1]&sw[0]); //Logical expression for segment3 (Segment D)

assign seg[4] = ((~sw[3])&sw[0]) | ((~sw[3])&sw[2]&(~sw[1])) | (~(sw[2])&(~sw[1])&sw[0]); //Logical expression for segment4 (Segment E)

assign seg[5] = ((~sw[3])&(~sw[2])&sw[0]) | ((~sw[3])&(~sw[2])&sw[1]) | ((~sw[3])&sw[1]&sw[0]); //Logical expression for segment5 (Segment F)

assign seg[6] = ((~sw[3])&(~sw[2])&(~sw[1]))|((~sw[3])&sw[2]&sw[1]&sw[0]); //Logical expression for segment6 (Segment G)

assign dp = 1;
   
   
   
endmodule
