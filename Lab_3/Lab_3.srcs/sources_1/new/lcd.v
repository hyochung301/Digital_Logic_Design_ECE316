`timescale 1ns / 1ps


module lcd(
    input [3:0] sw, 
    output  AN3, AN2, AN1, AN0,
    output[6:0] seg,
    output dp
   
    );
    
   assign AN3 = 1;
  assign  AN2 = 1;
  assign  AN1 = 1;
 assign   AN0 = 0;

assign seg[0]= ((~sw[3])&(~sw[2])&(~sw[1])&sw[0]) | ((~sw[3])&sw[2]&(~sw[1])&(~sw[0])); 

assign seg[1]= ((~sw[3])&sw[2]&(~sw[1])&sw[0]) | ((~sw[3])&sw[2]&sw[1]&(~sw[0]));

assign seg[2]= ((~sw[3])&(~sw[2])&sw[1]&(~sw[0])); 

assign seg[3] = ((~sw[3])&(~sw[2])&(~sw[1])&sw[0]) | ((~sw[3])&sw[2]&(~sw[1])&(~sw[0])) | ((~sw[3])&sw[2]&sw[1]&sw[0]);

assign seg[4] = ((~sw[3])&sw[0]) | ((~sw[3])&sw[2]&(~sw[1])) | (~(sw[2])&(~sw[1])&sw[0]);

assign seg[5] = ((~sw[3])&(~sw[2])&sw[0]) | ((~sw[3])&(~sw[2])&sw[1]) | ((~sw[3])&sw[1]&sw[0]); 

assign seg[6] = ((~sw[3])&(~sw[2])&(~sw[1]))|((~sw[3])&sw[2]&sw[1]&sw[0]); 

assign dp = 1;
   
   
   
endmodule
