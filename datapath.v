module datapath (
	input clk,
	input resetn,
	input [7:0] column_in,
	
	// Data from control.v
	input ld_column,
	input draw,
	input [1:0] player,
	
	// Data into control.v
	output reg valid,

	output reg [8:0] write_to_ram,
	output reg [6:0] col_out
);

	reg not_set;
	
	reg [6:0] col_zero, col_one, col_two, col_three, col_four, col_five, col_six, col_seven;
	reg [7:0] col_store;	
	localparam
		COL_ZERO = 8'd1,
		COL_ONE = 8'd2,
		COL_TWO = 8'd4,
		COL_THREE = 8'd8,
		COL_FOUR = 8'd16,
		COL_FIVE = 8'd32,
		COL_SIX = 8'd64,
		COL_SEVEN = 8'd128,

		EIGHT = 7'd8;
	
	always @ (posedge clk) begin
		if (!resetn) begin
		
			col_store <= 8'd0;
			valid <= 1'd1;
			write_to_ram <= 11'd0;
			
			col_out <= 7'd0;

			col_zero <= 7'd64;
			col_one <= 7'd65;
			col_two <= 7'd66;
			col_three <= 7'd67;
			col_four <= 7'd68;
			col_five <= 7'd69;
			col_six <= 7'd70;
			col_seven <= 7'd71;
			
			not_set <= 1'd1;
			
		end else begin
			if (ld_column) begin
				case (column_in)
					COL_ZERO : begin
						if (col_zero == 7'd0) begin
							valid <= 1'd0;
						end else begin
							col_store <= column_in;
							not_set <= 1'd1;
							valid <= 1'd1;
						end
					end COL_ONE : begin
						if (col_one == 7'd1) begin
							valid <= 1'd0;
						end else begin
							col_store <= column_in;
							not_set <= 1'd1;
							valid <= 1'd1;
						end
					end COL_TWO : begin
						if (col_two == 7'd2) begin
							valid <= 1'd0;
						end else begin
							col_store <= column_in;
							not_set <= 1'd1;
							valid <= 1'd1;
						end
					end COL_THREE : begin
						if (col_three == 7'd3) begin
							valid <= 1'd0;
						end else begin
							col_store <= column_in;
							not_set <= 1'd1;
							valid <= 1'd1;
						end
					end COL_FOUR : begin
						if (col_four == 7'd4) begin
							valid <= 1'd0;
						end else begin
							col_store <= column_in;
							not_set <= 1'd1;
							valid <= 1'd1;
						end
					end COL_FIVE : begin
						if (col_five == 7'd5) begin
							valid <= 1'd0;
						end else begin
							col_store <= column_in;
							not_set <= 1'd1;
							valid <= 1'd1;
						end
					end COL_SIX : begin
						if (col_six == 7'd6) begin
							valid <= 1'd0;
						end else begin
							col_store <= column_in;
							not_set <= 1'd1;
							valid <= 1'd1;
						end
					end COL_SEVEN : begin
						if (col_seven == 7'd7) begin
							valid <= 1'd0;
						end else begin
							col_store <= column_in;
							not_set <= 1'd1;
							valid <= 1'd1;
						end
					end default : begin	
						valid <= 1'd0;				
					end
				endcase
			end 
			
			if (draw) begin
				case (col_store)
					COL_ZERO : begin
						if (not_set) begin
							col_zero <= col_zero - EIGHT;
							not_set <= 1'd0;
						end
						write_to_ram <= {col_zero, player};
						col_out <= col_zero;
					end COL_ONE : begin
						if (not_set) begin
							col_one <= col_one - EIGHT;
							not_set <= 1'd0;
						end
					write_to_ram <= {col_one, player};
						col_out <= col_one;	
					end COL_TWO : begin
						if (not_set) begin
							col_two <= col_two - EIGHT;
							not_set <= 1'd0;
						end
						write_to_ram <= {col_two, player};
						col_out <= col_two;
					end COL_THREE : begin
						if (not_set) begin
							col_three <= col_three - EIGHT;
							not_set <= 1'd0;
						end
						write_to_ram <= {col_three, player};
						col_out <= col_three;
					end COL_FOUR : begin
						if (not_set) begin
							col_four <= col_four - EIGHT;
							not_set <= 1'd0;
						end
						write_to_ram <= {col_four, player};
						col_out <= col_four;
					end COL_FIVE : begin
						if (not_set) begin
							col_five <= col_five - EIGHT;
							not_set <= 1'd0;
						end
						write_to_ram <= {col_five, player};
						col_out <= col_five;
					end COL_SIX : begin
						if (not_set) begin
							col_six <= col_six - EIGHT;
							not_set <= 1'd0;
						end
						write_to_ram <= {col_six, player};
						col_out <= col_six;
					end COL_SEVEN : begin
						if (not_set) begin
							col_seven <= col_seven - EIGHT;
							not_set <= 1'd0;
						end
						write_to_ram <= {col_seven, player};
						col_out <= col_seven;
					end
				endcase
			end
		end
	end
endmodule
