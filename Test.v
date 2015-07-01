// Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, the Altera Quartus II License Agreement,
// the Altera MegaCore Function License Agreement, or other 
// applicable license agreement, including, without limitation, 
// that your use is for the sole purpose of programming logic 
// devices manufactured by Altera and sold by Altera or its 
// authorized distributors.  Please refer to the applicable 
// agreement for further details.

// PROGRAM		"Quartus II 64-Bit"
// VERSION		"Version 14.1.0 Build 186 12/03/2014 SJ Full Version"
// CREATED		"Thu Apr 30 15:58:35 2015"

`timescale 1ns/1ps

module Test(
	clk,
	rst,
	LED
);


input clk;
input rst;
output [4:0] LED;

reg [31:0] timer;
reg [31:0] duty;
integer deltaDuty;
reg [4:0] LED;

always @(posedge clk or negedge rst)
	begin
		if(~rst)
			timer <= 0;
		else if (timer == 50000)
			begin
			timer <= 0;
			duty <= duty + deltaDuty;
			end
		else
			timer <= timer + 1;
		
		if(~rst)
			begin
			duty <= 0;
			deltaDuty <= 0;
			end		
		else if(duty == 0)
			deltaDuty <= 50;
		else if(duty == 50000)
			deltaDuty <= -50;
			
	end
	
always @(posedge clk or negedge rst)
	begin
		if(~rst)
			LED <= 5'b11111;
		else if(timer <= duty)
			LED <= 5'b00001;
		else
			LED <= 5'b11111;
	end
	
endmodule
