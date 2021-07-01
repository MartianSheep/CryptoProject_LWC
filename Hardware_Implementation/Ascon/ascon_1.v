//this version will finsih gimli in 8 cycle with threshold implementation 
module ascon_enc(
	input [127:0] i_data,
	input [127:0] i_n,
	input [127:0] i_k,
	input clk,
	input i_rst,
	input i_start,
	input [15:0] i_a_len,
	input [15:0] i_m_len,
	output reg o_nxt_data,
	output reg o_c,
	output reg [127:0]o_data,
	output reg o_fin
	);
	reg [319:0] data,data_nxt;
	reg [3:0] ctr,ctr_nxt;//permutation ctr
	reg [15:0] b_ctr,b_ctr_nxt; //block ctr

	//reg [127:0] input_data,input_data_nxt;

	wire [319:0] p_out;
	reg [319:0] p_in;
	reg [7:0] p_c;
	reg [3:0] state, state_nxt;
	reg [127:0] key,key_nxt;
	reg [15:0] a_len,a_len_nxt,m_len,m_len_nxt;
	localparam IV = 64'h80800c0800000000;
	localparam P_A = 12;
	localparam P_B = 8;
	localparam S_IDLE = 0;
	localparam S_INIT = 1;
	localparam S_AD1 = 2;
	localparam S_P1 = 3;
	localparam S_F = 4;
	localparam S_FIN = 5;

	//initialization
	//gimli
	permutation p(p_in,p_out,p_c);

	//FSM
	always @(*) begin
		if((state==S_F)||(state==S_INIT)) begin
			case(ctr)
				1 : p_c = 8'hf0;
				2 : p_c = 8'he1;
				3 : p_c = 8'hd2;
				4 : p_c = 8'hc3;
				5 : p_c = 8'hb4;
				6 : p_c = 8'ha5;
				7 : p_c = 8'h96;
				8 : p_c = 8'h87;
				9 : p_c = 8'h78;
				10: p_c = 8'h69;
				11: p_c = 8'h5a;
				12: p_c = 8'h4b;
				default: p_c = 0;
			endcase
		end
		else begin
			case(ctr)
				1 : p_c = 8'hb4;
				2 : p_c = 8'ha5;
				3 : p_c = 8'h96;
				4 : p_c = 8'h87;
				5 : p_c = 8'h78;
				6 : p_c = 8'h69;
				7 : p_c = 8'h5a;
				8 : p_c = 8'h4b;
				default: p_c = 0;
			endcase
		end
	end
	always @(*) begin
		state_nxt = state;
		data_nxt = data;
		ctr_nxt = ctr;
		b_ctr_nxt = b_ctr;
		key_nxt = key;
		a_len_nxt = a_len;
		m_len_nxt = m_len;
		o_nxt_data = 0;
		o_data = 0;
		o_c = 0;
		o_fin = 0;
		p_in = 0;
		case(state)
			S_IDLE: begin
				if(i_start) begin
					state_nxt = S_INIT;
					data_nxt = {IV,i_k,i_n};
					ctr_nxt = 1;
					key_nxt = i_k;
					a_len_nxt = i_a_len;
					m_len_nxt = i_m_len;
				end
			end
			S_INIT: begin
				if(ctr<P_A) begin
					p_in = data;
					data_nxt = p_out; 
					ctr_nxt = ctr + 1;
				end
				else begin
					p_in = data;
					data_nxt = p_out ^ {192'd0,key};
					state_nxt = S_AD1;
					ctr_nxt = 1;
					b_ctr_nxt = 1;
					o_nxt_data = 1;
				end
			end
			S_AD1: begin
				if(ctr<P_B) begin
					p_in = (ctr==1)? {data[319:192]^i_data,data[191:0]}:data;
					data_nxt = p_out; 
					ctr_nxt = ctr + 1;
				end
				else begin
					p_in = data;
					ctr_nxt = 1;
					o_nxt_data = 1;
					if(b_ctr==a_len) begin
						data_nxt = p_out ^ 320'd1;
						b_ctr_nxt = 1;
						state_nxt = S_P1;
					end 
					else begin
						data_nxt = p_out;
						b_ctr_nxt = b_ctr + 1;
					end
				end
			end
			S_P1: begin
				if(ctr<P_B) begin
					o_data = (ctr==1)? data[319:192]^i_data:0;
					o_c = (ctr==1)? 1:0;
					p_in = (ctr==1)? {data[319:192]^i_data,data[191:0]}:data;
					data_nxt = p_out; 
					ctr_nxt = ctr + 1;
				end
				else begin
					p_in = data;
					if(b_ctr==m_len) begin
						o_c = 1;
						o_data = data[319:192]^i_data;
						data_nxt = {data[319:192]^i_data,data[191:0]};
						b_ctr_nxt = 0;
						ctr_nxt = 1;
						state_nxt = S_F;
					end
					else if(b_ctr==m_len-1) begin
						data_nxt = p_out;
						b_ctr_nxt = b_ctr + 1;
						o_nxt_data = 1;
					end 
					else begin
						data_nxt = p_out;
						b_ctr_nxt = b_ctr + 1;
						ctr_nxt = 1;
						o_nxt_data = 1;
					end
				end
			end
			S_F: begin
				if(ctr<P_A) begin
					p_in = (ctr==1)? data^{128'd0,key,64'd0}:data;
					data_nxt = p_out; 
					ctr_nxt = ctr + 1;
				end
				else begin
					p_in = data;
					data_nxt = p_out^{192'd0,key};
					state_nxt = S_FIN;
					ctr_nxt = 0;
				end
			end
			S_FIN: begin
				o_data = data[127:0];
				o_fin = 1;
				state_nxt = S_IDLE;
			end
		endcase
	end
	always @(posedge clk or negedge i_rst) begin
		if(~i_rst) begin
			state <= S_IDLE;
			data <= 320'd0;
			ctr <= 0; 
			b_ctr <= 0; 
			key <= 0;
			a_len <= 0;
			m_len <= 0;
		end 
		else begin
			state <= state_nxt;
			data <= data_nxt;
			ctr <= ctr_nxt;
			b_ctr <= b_ctr_nxt; 
			key <= key_nxt;
			a_len <= a_len_nxt;
			m_len <= m_len_nxt;
		end
	end
endmodule

module permutation(in,out,round_c); // perfrom a normal round
	input [319:0] in;
	input [7:0] round_c;
	output [319:0] out;
	reg [63:0] x  [0:4];
	reg [63:0] x1 [0:4];
	reg [63:0] x2 [0:4];
	reg [63:0] x3 [0:4];
	reg [63:0] x4 [0:4];
	integer i; 
	assign out = {x4[0],x4[1],x4[2],x4[3],x4[4]};
	always@(*) begin
		//add constant
		x[0] = in[319:256];
		x[1] = in[255:192];
		x[2] = in[191:128]^{56'b0,round_c};
		x[3] = in[127:64];
		x[4] = in[63:0];

		//substitution layer
		x1[0] = x[0] ^ x[4];
		x1[1] = x[1];
		x1[2] = x[2] ^ x[1];
		x1[3] = x[3];
		x1[4] = x[4] ^ x[3];

		x2[0] = x1[0] ^ (~x1[1]&x1[2]);
		x2[1] = x1[1] ^ (~x1[2]&x1[3]);
		x2[2] = x1[2] ^ (~x1[3]&x1[4]);
		x2[3] = x1[3] ^ (~x1[4]&x1[0]);
		x2[4] = x1[4] ^ (~x1[0]&x1[1]);

		x3[0] = x2[0] ^ x2[4];
		x3[1] = x2[1] ^ x2[0];
		x3[2] = ~x2[2];
		x3[3] = x2[3] ^ x2[2];
		x3[4] = x2[4];

		//linear diffusion
		x4[0] = x3[0] ^ {x3[0][18:0],x3[0][63:19]} ^ {x3[0][27:0],x3[0][63:28]};
		x4[1] = x3[1] ^ {x3[1][60:0],x3[1][63:61]} ^ {x3[1][38:0],x3[1][63:39]};
		x4[2] = x3[2] ^ {x3[2][ 1:0],x3[2][63: 1]} ^ {x3[2][ 5:0],x3[2][63: 6]};
		x4[3] = x3[3] ^ {x3[3][ 9:0],x3[3][63:10]} ^ {x3[3][16:0],x3[3][63:17]};
		x4[4] = x3[4] ^ {x3[4][ 6:0],x3[4][63: 7]} ^ {x3[4][40:0],x3[4][63:41]};
	end
endmodule
