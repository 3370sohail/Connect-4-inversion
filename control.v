module control (
	input clk,
	input resetn,

	input valid,
	input go,
	
	input draw_done, // Sohail signal

	output reg ld_column,
	output reg draw,
	output reg [1:0] player
);

	reg [2:0] current_state, next_state;

	localparam
		// State
		S_LOAD_COLUMN_1 = 3'd0,    
		S_LOAD_COLUMN_WAIT_1 = 3'd1,
		S_DRAW_1 = 3'd2,
		S_LOAD_COLUMN_2 = 3'd3,
		S_LOAD_COLUMN_WAIT_2 = 3'd4,
		S_DRAW_2 = 3'd5,
		
		// Player
		PLAYER_1 = 2'd1,
		PLAYER_2 = 2'd2;
		
	always @ (*) begin: state_table
		case (current_state) 
			S_LOAD_COLUMN_1 : next_state = (go & valid) ? S_LOAD_COLUMN_WAIT_1 : S_LOAD_COLUMN_1;
			S_LOAD_COLUMN_WAIT_1 : next_state = go ? S_LOAD_COLUMN_WAIT_1 : S_DRAW_1; 
			S_DRAW_1 : next_state = draw_done ? S_LOAD_COLUMN_2 : S_DRAW_1;
			S_LOAD_COLUMN_2 : next_state = (go & valid) ? S_LOAD_COLUMN_WAIT_2 : S_LOAD_COLUMN_2;
			S_LOAD_COLUMN_WAIT_2 : next_state = go ? S_LOAD_COLUMN_WAIT_2 : S_DRAW_2;	
			S_DRAW_2 : next_state = draw_done ? S_LOAD_COLUMN_1 : S_DRAW_2;
			default : next_state = S_LOAD_COLUMN_1;
		endcase
	end

	always @ (*) begin: enable_signals
		ld_column = 1'd0;
		draw = 1'd0;
		player = 3'd0;
		case (current_state)
			S_LOAD_COLUMN_1 : begin
				player = PLAYER_1;
				ld_column = 1'd1;
			end S_LOAD_COLUMN_WAIT_1 : begin
				player = PLAYER_1;
			end S_DRAW_1 : begin
				player = PLAYER_1;
				draw = 1'd1;
			end S_LOAD_COLUMN_2 : begin
				player = PLAYER_2;
				ld_column = 1'd1;
			end S_LOAD_COLUMN_WAIT_2 : begin
				player = PLAYER_2;
			end S_DRAW_2 : begin
				player = PLAYER_2;
				draw = 1'd1;
			end 
		endcase
	end

	always @ (posedge clk) begin: state_FFs
		if (!resetn) begin
			current_state <= S_LOAD_COLUMN_1;
		end else begin
			current_state <= next_state;
		end
	end
endmodule
