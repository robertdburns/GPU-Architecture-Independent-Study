`timescale 1ns / 1ps
`include "cudacore.svh"

module intalu (

	input logic [31:0]	A,
	input logic [31:0] 	B,
	input logic [31:0]	C,
	input logic [3:0]	op,

	output logic [31:0] Y
)

always_comb begin

	case (op)
		ADD: 	Y = ($signed(A)) + ($signed(B));
		SUB: 	Y = ($signed(A)) - ($signed(B));

		MUL: 	Y = A * B;
		MAD: 	Y = (A * B) + C;

		SHFTL:	Y = A << B[4:0];
		SHFTR: 	Y = B >> B[4:0];

		AND: 	Y = A & B;
		OR: 	Y = A | B;
		XOR:	Y = A ^ B;
		
		default: Y = 32'hDEADDEAD;
	endcase

end


endmodule
