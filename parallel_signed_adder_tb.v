`timescale 1ns / 1ps
`define clkperiodby2 10
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/14/2023 10:12:06 AM
// Design Name: 
// Module Name: parallel_signed_adder_tb
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


module parallel_signed_adder_tb();
wire [14:0] sum; 
reg clk ; 
reg [11:0] n0 ; 
reg [11:0] n1 ; 
reg [11:0] n2 ; 
reg [11:0] n3 ; 
reg [11:0] n4 ; 
reg [11:0] n5 ; 
reg [11:0] n6 ; 
reg [11:0] n7 ; 

parallel_signed_adder u1( 
 .clk(clk),
 .n0(n0), 
 .n1(n1), 
 .n2(n2), 
 .n3(n3), 
 .n4(n4), 
 .n5(n5), 
 .n6(n6), 
 .n7(n7), 
 .sum(sum) 
 ); 
 
initial 
 begin 
  clk = 1'b0 ; 
  n0 = 12'h0 ;  
  n1 = 12'h0 ; 
  n2 = 12'h0 ; 
  n3 = 12'h0 ; 
  n4 = 12'h0 ; 
  n5 = 12'h0 ; 
  n6 = 12'h0 ; 
  n7 = 12'h0 ; 
  
  
  #17 n0 = 12'hfff ; //2nd set of inputs 
  n1 = 12'hfff ; 
  n2 = 12'hfff ; 
  n3 = 12'hfff ; 
  n4 = 12'hfff ; 
  n5 = 12'hfff ; 
  n6 = 12'hfff ; 
  n7 = 12'hfff ; 
  
  
 #20 n0 = 12'h7ff ; // 3rd set of inputs 
  n1 = 12'h7ff ; 
  n2 = 12'h7ff ; 
  n3 = 12'h7ff ; 
  n4 = 12'h7ff ; 
  n5 = 12'h7ff ; 
  n6 = 12'h7ff ; 
  n7 = 12'h7ff ; 
  
  
 #20 n0 = 12'h800 ; //4th set of inputs
  n1 = 12'h800 ; 
  n2 = 12'h800 ; 
  n3 = 12'h800 ; 
  n4 = 12'h800 ; 
  n5 = 12'h800 ; 
  n6 = 12'h800 ; 
  n7 = 12'h800 ; 
  
  #20 n0 = 12'h001 ; 
  n1 = 12'h001 ; 
  n2 = 12'h001 ; 
  n3 = 12'h001 ; 
  n4 = 12'h001 ; 
  n5 = 12'h001 ; 
  n6 = 12'h001 ; 
  n7 = 12'h001 ; 
  
  
  #20 n0 = 12'h001 ; 
  n1 = 12'hfff ; 
  n2 = 12'h001 ; 
  n3 = 12'hfff ; 
  n4 = 12'h001 ; 
  n5 = 12'hfff ; 
  n6 = 12'h001 ; 
  n7 = 12'hfff ; 
  #20 n0 = 12'h7ff ;  
  n1 = 12'h7ff ; 
  n2 = 12'h7ff ; 
  n3 = 12'h7ff ; 
  n4 = 12'h801 ; 
  n5 = 12'h801 ; 
  n6 = 12'h801 ; 
  n7 = 12'h801 ; 
 
  #20 n0 = 12'h0 ; 
  n1 = 12'h0 ; 
  n2 = 12'h0 ; 
  n3 = 12'h0 ; 
  n4 = 12'h0 ; 
  n5 = 12'h0 ; 
  n6 = 12'h0 ; 
  n7 = 12'h0 ; 
  #400
  $stop ; 
end 
always 
 #`clkperiodby2 clk <= ~clk ; // Toggle the clock. 
endmodule
