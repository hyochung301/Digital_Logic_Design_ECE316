`timescale 1ns / 1ps
module flight_attendant_call_system_dataflow(
input wire clk,
input wire call,
input wire cancel,
output reg light_state
    );
    
 wire next_state;
 
 assign next_state = call || (!cancel && light_state);
 
 always @ (posedge clk) begin
    light_state <= next_state;
end
endmodule
