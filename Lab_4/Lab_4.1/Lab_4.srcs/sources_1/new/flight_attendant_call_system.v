`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/21 22:30:07
// Design Name: 
// Module Name: flight_attendant_call_system
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



module flight_attendant_call_system(
input wire clk,
input wire call,
input wire cancel,
output reg light_state
    );
    
reg next_state;
    
// combinational block
always@(*)begin
    case({call, cancel, light_state})
    3'b000: next_state = 1'b0;
    3'b001: next_state = 1'b1;
    3'b010: next_state = 1'b0;
    3'b011: next_state = 1'b0;
    3'b100: next_state = 1'b1;
    3'b101: next_state = 1'b1;
    3'b110: next_state = 1'b1;
    3'b111: next_state = 1'b1;
    default : next_state = 1'b0;
    endcase
end    

//sequential block
always @ (posedge clk) begin
    light_state <= next_state;
end

endmodule

