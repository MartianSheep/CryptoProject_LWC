`timescale 1ns / 1ps
`define PT_PATTERN_NUM 5
`define AD_PATTERN_NUM 5
`define INPUT "./pattern/input_5.txt"
`define ANS  "./pattern/ans_5.txt"

module ascon_tb;
	// Inputs
	reg clk,rst,i_start;
	reg i_a_end,i_m_end;//,i_data_end_nxt;
	//reg i_data_ready,i_data_ready_nxt;
	wire i_data_ready;
	reg [127:0] i_data,i_n,i_k;

	// Outputs
	wire o_nxt_data,o_fin,o_c;
	wire [127:0] o_data;
	
	//check
	reg  [127:0] ans [0:`PT_PATTERN_NUM]; //one more for tag
	reg  [127:0] output_data[0:`PT_PATTERN_NUM];
	reg  [127:0] input_data[0:`AD_PATTERN_NUM+`PT_PATTERN_NUM-1];
	
	reg [9:0] ctr_in,ctr_in_nxt;
	reg [9:0] ctr_out,ctr_out_nxt;
	integer i,error;
	realtime sim_start,sim_end;
	initial begin
		$fsdbDumpfile("ascon.fsdb");
		$fsdbDumpvars(0,ascon_tb,"+mda");
	end


	// Instantiate the Unit Under Test (UUT)
	ascon_enc G(
		.i_data(i_data),
		.i_n(i_n),
		.i_k(i_k),
		.clk(clk),
		.i_rst(rst),
		.i_start(i_start),
		.i_a_len(`AD_PATTERN_NUM),
		.i_m_len(`PT_PATTERN_NUM),
		.o_nxt_data(o_nxt_data),
		.o_c(o_c),
		.o_data(o_data),
		.o_fin(o_fin)
		);

	assign i_data_ready = o_nxt_data;
	initial begin //input data
		//$monitor("%0dns : check=%X "  , $stime, check); 
		clk <= 0;
		rst <= 1;
		i_start <= 0;
		#10
		rst <= 0;
		i_k <= 128'h42414e414e415353535151343332316b;
		i_n <= 128'h574150504c4558595a5151313233356b;
		#10
		rst <= 1;
		#10
		sim_start = $realtime();
		i_start <= 1;
		#10
		i_start <= 0;
		@(o_fin)
		sim_end = $realtime();
		#100 //wait for write tag
		error = 0;
		for(i=0;i<=`PT_PATTERN_NUM;i=i+1) begin
			if(i==`PT_PATTERN_NUM-1) begin
				if(ans[i]!=output_data[i]>>8) begin //last block loss 8 bit
					error = error + 1;
					$display("False! at %d th PT\n, expected:%x, result:%x",i,ans[i],output_data[i]>>8);
				end
				else begin
					error = error;
					$display("Correct! at %d th PT\n",i);
				end
			end
			else if(ans[i]!=output_data[i]) begin
				error = error + 1;
				$display("False! at %d th PT\n, expected:%x, result:%x",i,ans[i],output_data[i]);
			end
			else begin
				error = error;
				$display("Correct! at %d th PT\n",i);
			end
		end
		if(error==0) begin
			$display("Success! Execution");
		end
        $display("Finish.");
        $display("Execution cycle = %g",(sim_end - sim_start)/10 - 0.5); //-0.5: i_start signal is send at negedge
        $finish;
	end

    initial begin
    	$readmemh (`INPUT, input_data);
    	$readmemh (`ANS, ans);
    	#50000
    	$display("too long");
    	$finish;
    end

    always @(posedge o_nxt_data or negedge rst) begin
    	if(~rst) begin
    		ctr_in <= 0;
    		i_data = 0;
    	end
    	else begin
    		ctr_in <= ctr_in + 1;
    		i_data = input_data[ctr_in];
    	end
    end

    always @(posedge o_c or negedge rst or posedge o_fin) begin
    	if(~rst) begin
    		ctr_out <= 0;
    		i_data = 0;
    	end
    	else begin
    		ctr_out <= ctr_out + 1;
    		output_data[ctr_out] <= o_data;
    	end
    end

    always #5 clk <= ~clk;

endmodule
