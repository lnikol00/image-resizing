`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:16:06 06/03/2023
// Design Name:   input_master
// Module Name:   C:/Users/38591/Documents/Faks/PDS/Project/tb_simulation.v
// Project Name:  Project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: input_master
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

`timescale 1ns/1ps 


module tb_simulation;


reg clk, horizontal_reset;

wire          hsync;
wire [ 7 : 0] r;
wire [ 7 : 0] g;
wire [ 7 : 0] b;

wire enc_done;

input_master 
#(.filename("/Users/38591/Documents/Faks/PDS/Project/images/test1/input.hex"))
	image_read
( 
    .horizontal_clock	                (clk    ),
    .horizontal_reset	            (horizontal_reset ),
    .horizontal_sync	                (hsync   ),
    .r	            (r ),
    .g	            (g ),
    .b	            (b ),
   
	.done			(enc_done)
); 

output_master 
#(.infile("/Users/38591/Documents/Faks/PDS/Project/images/test1/output.bmp"))
	image_write
(
	.clock(clk),
	.reset(horizontal_reset),
	.horizontal_sync(hsync),
  .r	            (r ),
     .g	            (g ),
    .b	            (b ),
   
	.done()
);	


initial begin 
    clk = 0;
    forever #10 clk = ~clk;
end

initial begin
    horizontal_reset     = 0;
    #25 horizontal_reset = 1;
end


endmodule


