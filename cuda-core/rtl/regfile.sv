`timescale 1ns / 1ps

module regfile(
    
	input logic clk,
    input logic RF_WE,
	
    input logic [4:0] adr,
    input logic [4:0] w_adr,
    input logic [31:0] w_data,
    
    output logic [31:0] rs
    );
    
    logic [31:0] RAM [0:31];                    //Create RAM
    
    initial begin
        int i;
        for (i=0; i<32; i=i+1) begin
            RAM[i] = 0;
        end
    end
    
    
    always_ff @ (negedge clk) begin             //Write
    
        if ((RF_WE == 1) && (w_adr != 0))
            RAM[w_adr] <= w_data;
           
        else
            RAM[w_adr] <= RAM[w_adr];
            
    end
    

    assign rs = RAM[adr1];
    
    
endmodule