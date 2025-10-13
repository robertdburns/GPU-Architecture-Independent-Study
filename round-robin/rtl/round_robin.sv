struct {
	int id;
	int priority;
} thread;


module round_robin # (
	parameter NumRequests = 8
) (
	input logic 				   clk,
	input logic 				   rst,
	input logic	 [NumRequests-1:0] req_i,			// bitmap of requests from upstream
	input logic  [NumRequests-1:0] en_mask_i,		// bitmap of which requests are enabled
	input logic                    accept_i			// downstream accepts grant

	output logic [NumRequests-1:0] grnt_o			// bitmap of which request is granted (one-hot encoded)
)

	function automatic int unsigned msb_idx(input logic [NumRequests-1:0] v);
		int unsigned idx = 0;
		for (int i = 0; i < NumRequests; i++) 
			if (v[i]) 
				idx = i;
		return idx;
	endfunction

	function automatic int unsigned lsb_idx(input logic [NumRequests-1:0] v);
		int unsigned idx = 0;
		for (int i = NumRequests; i > 0; i--) 
			if (v[i]) 
				idx = i;
		return idx;
	endfunction

	grnt_o = msb_idx(req_i & en_mask_i);


endmodule