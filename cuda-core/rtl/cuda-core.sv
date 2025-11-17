`timescale 1ns / 1ps
`include "cudacore.svh" 

module cudacore (

	input logic 		clk,
	input logic 		rst,

	input logic [31:0]	I_dataA,
	input logic [31:0]	I_dataB,
	input logic [31:0]	I_dataC,
	input logic [3:0]	I_opcode,
	input logic 		I_ctrl,

	output logic [31:0]	O_data,
	output logic 		O_ctrl
);

	logic 			pipe_full;
	logic [31:0] 	pipe_result;
	logic [31:0]	L_data;

	logic push;
	logic pop;



	intalu intalu (
		.A(I_dataA),
		.B(I_dataB),
		.C(I_dataC),
		.op(I_opcode),

		.Y(L_data)
	)

	regfile regfile (
		.clk(clk),
		.RF_WE(1),
		
		.adr(),
		.w_adr(),
		.w_data(),

		.rs()
	)

endmodule