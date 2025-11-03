package cudacore;

	typedef enum logic [2:0] {
		ADD = 3'b000;
		SUB = 3'b001;
		SHFTL = 3'b010;
		SHFTR = 3'b011;
		AND = 3'b100;
		OR = 3'b101;
		XOR = 3'b110;
	} opcode;

endpackage