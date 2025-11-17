package cudacore;

	typedef enum logic [3:0] {
		ADD = 4'b0000;
		SUB = 4'b0001;

		MUL = 4'b0010;
		MAD = 4'b0011;

		SHFTL = 4'b0100;
		SHFTR = 4'b0101;

		AND = 4'b0110;
		OR = 4'b0111;
		XOR = 4'b1000;
	} opcode;

endpackage