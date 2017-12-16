module testfsm (
	input CLOCK50,
	input [3:0] KEY,
	input [17:0] SW,

	output [6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7,
	
	output [6:0] LEDR
);

	wire [10:0] write_to_ram_out;
	wire [2:0] player_out;
	
	fsm f0 (
		.clk(CLOCK50),
		.resetn(KEY[0]),
		.column_in(SW[7:0]),
		.go(~KEY[1]),
		.draw_done(~KEY[2]),
		.write_to_ram(write_to_ram_out),
		.player_out(player_out),
		
		.col_out(LEDR[6:0])
	);
	
	hex_decoder h0 (
		.hex_digit(write_to_ram_out[3:0]),
		.segments(HEX0)
	);

	hex_decoder h1 (
		.hex_digit(write_to_ram_out[7:4]),
		.segments(HEX1)
	);

	hex_decoder h2 (
		.hex_digit({1'd0, write_to_ram_out[10:8]}),
		.segments(HEX2)
	);
	
	hex_decoder h3 (
		.hex_digit(4'd0),
		.segments(HEX3)
	);
	
	hex_decoder h4 (
		.hex_digit(4'd0),
		.segments(HEX4)
	);
	
	hex_decoder h5 (
		.hex_digit({1'd0, player_out}),
		.segments(HEX5)
	);
	
	hex_decoder h6 (
		.hex_digit(SW[3:0]),
		.segments(HEX6)
	);
	
	hex_decoder h7 (
		.hex_digit(SW[7:4]),
		.segments(HEX7)
	);

endmodule
