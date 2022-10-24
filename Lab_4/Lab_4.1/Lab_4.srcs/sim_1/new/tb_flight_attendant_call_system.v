`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/21 22:32:41
// Design Name: 
// Module Name: tb_flight_attendant_call_system
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


module tb_flight_attendant_call_system;

reg clk;
reg call;
reg cancel;

wire light_state;

flight_attendant_call_system_dataflow u1 (
    .clk(clk),
    .call(call),
    .cancel(cancel),
    .light_state(light_state)
);

initial
begin

clk = 0;
call = 0;
cancel = 0;

#10

call = 1; 
cancel = 0;

#10

call = 0; 
cancel = 1;

#10

call = 1; 
cancel = 1;

#10

call = 0; 
cancel = 0;

#10

call = 1; 
cancel = 0;

#10

cancel = 1;

#20

cancel = 0;

#20

call = 0; 
cancel = 1;

#20

call = 0; 
cancel = 0;

end

always
#5 clk = ~clk;

endmodule
