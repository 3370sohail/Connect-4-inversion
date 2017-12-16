module fsm (
	input clk,
	input resetn, 
	input [7:0] column_in,
	input go,
	
	input draw_done, // Signal that Sohail needs to send in
	
	output [8:0] write_to_ram,
	output [1:0] player_out,
	
	output [6:0] col_out
); 
	
	wire ld_column;
	wire [2:0] player;
	wire draw;

	wire valid;

	assign player_out = player;

	datapath d0 (
		.clk(clk),
		.resetn(resetn),
		.column_in(column_in),
		
		.ld_column(ld_column),
		.player(player),
		.draw(draw),

		.valid(valid),
		.write_to_ram(write_to_ram),
		
		.col_out(col_out)
	);

	control c0 (
		.clk(clk),
		.resetn(resetn),
		
		.valid(valid),
		.go(go),
		.draw_done(draw_done),
		
		.ld_column(ld_column),
		.draw(draw),
		.player(player)
	);
endmodule
