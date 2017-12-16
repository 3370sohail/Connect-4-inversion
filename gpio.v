module gpio(
	
	input CLOCK_50, 
	input [9:0] SW, 
	input [3:0] KEY,
	output [11:0] LEDR, 
	output [2:0] LEDG,
	output reg [26:0] GPIO_0, GPIO_1, 
	output [6:0] HEX0, HEX1, HEX2, HEX3, HEX6, HEX7
);

wire go;

assign go = ~KEY[0];

assign LEDR[8] = go;

wire rest_n = KEY[2];
wire rest_b = KEY[1];

assign LEDR[0] = SW[0];
assign LEDR[1] = SW[1];
assign LEDR[2] = SW[2];
assign LEDR[3] = SW[3];
assign LEDR[4] = SW[4];
assign LEDR[5] = SW[5];
assign LEDR[6] = SW[6];
assign LEDR[7] = SW[7];

//teting regs

reg led10;
reg led11;

assign LEDR[10] = led10;
assign LEDR[11] = led11;

//fsm

wire [18:0] write_to_ram;
wire [1:0] player_out;
wire [6:0] col_out;

// ram wires
reg wren;
wire [18:0] data_out;
wire [18:0] data_out_2;
reg [18:0] data_in;


// clock and rate devidors
		
reg [27:0]Main_C;
reg Ram_C;

	 always @(posedge CLOCK_50)						
		begin
			if(rest_n == 1'b0)
				begin
					Main_C <= 0; 
					Ram_C <= 1'b0;
				end 		
			
			// diver for 1hz
			else
				begin
					if ( Main_C == 28'b0000000000000000000100000000) // b0101111101011110000100000000 b0000000000001110000100000000 b0000000000000000000100000000 100 mil
						begin
							Main_C <= 0; 
							Ram_C <= 1'b1;
						end
					else 
						begin
							Main_C <= Main_C + 1'b1;
							Ram_C <= 1'b0;
						end
				end			
	   end
		
// ram counter 
		
reg [6:0] address;

	 always @(posedge Ram_C)						
		begin
			if(rest_n == 1'b0)
				begin
					address <= 0; 
				end 		
			
			// diver for 1hz
			else
				begin
					if ( address == 7'd64) // when u get to the last address reset 
						begin
							address <= 0;
						end
					else 
						begin
							address <= address + 1'b1;
						end
				end
	   end
		

 fsm f (
	.clk(CLOCK_50),
	.resetn(rest_n), 
	.column_in(SW[7:0]),
	.go(go),
	
	.draw_done(wren), // Signal that Sohail needs to send in
	
	.write_to_ram(write_to_ram),
	.player_out(player_out),
	.col_out(col_out)
); 
	 
	 always @(Ram_C)						
		begin
			if (!rest_b)
				begin
					wren <= 1'b1;
					data_in[18:3] <= data_out_2[18:3];
					data_in[2:0] <= 3'b000;
				end
			else
			begin
				if (address == col_out[6:0]) 
					begin
						wren <= 1'b1;
						data_in[18:3] <= data_out_2[18:3];
						data_in[2:1] <= player_out;
						data_in[0] <= 0;
					end
				else
				begin
					data_in[18:3] <= data_out_2[18:3];
					data_in[2:0] <= 0;
					wren <= 1'b0;
				end
			end
	   end
		
	
	ram r(
	.address(address),
	.clock(Ram_C),
	.data(data_in),
	.wren(wren),
	.q(data_out));
	
	ram r_2(
	.address(address),
	.clock(Ram_C),
	.data(data_in),
	.wren(1'b0),
	.q(data_out_2));



// Output logic aka all of our datapath control signals
    always @(*)
    begin
		case (data_out[2:1])
		
		 2'b00: begin
		 GPIO_0[0] = 1'b0;
		 GPIO_0[2] = 1'b0;
		 GPIO_0[4] = 1'b0;
		 GPIO_0[6] = 1'b0;
		 GPIO_0[10] = 1'b0;
		 GPIO_0[12] = 1'b0;
		 GPIO_0[14] = 1'b0;
		 GPIO_0[16] = 1'b0;
		 GPIO_0[18] = 1'b0;
		 GPIO_0[20] = 1'b0;
		 GPIO_0[22] = 1'b0;
		 GPIO_0[24] = 1'b0;

		 GPIO_1[0] = 1'b0;
		 GPIO_1[2] = 1'b0;
		 GPIO_1[4] = 1'b0;
		 GPIO_1[6] = 1'b0;
		 GPIO_1[10] = 1'b0;
		 GPIO_1[12] = 1'b0;
		 GPIO_1[14] = 1'b0;
		 GPIO_1[16] = 1'b0;
		 GPIO_1[18] = 1'b0;
		 GPIO_1[20] = 1'b0;
		 GPIO_1[22] = 1'b0;
		 GPIO_1[24] = 1'b0;
		 
		 end 
		 
		 2'b01: begin
		 GPIO_0[0] = ~data_out[18];
		 GPIO_0[2] = ~data_out[17];
		 GPIO_0[4] = ~data_out[16];
		 GPIO_0[6] = ~data_out[15];
		 GPIO_0[10] = data_out[10];
		 GPIO_0[12] = data_out[9];
		 GPIO_0[14] = data_out[8];
		 GPIO_0[16] = data_out[7];
		 GPIO_0[18] = data_out[6];
		 GPIO_0[20] = data_out[5];
		 GPIO_0[22] = data_out[4];
		 GPIO_0[24] = data_out[3];

		 GPIO_1[0] = ~data_out[14];
		 GPIO_1[2] = ~data_out[13];
		 GPIO_1[4] = ~data_out[12];
		 GPIO_1[6] = ~data_out[11];
		 GPIO_1[10] = 1'b0;
		 GPIO_1[12] = 1'b0;
		 GPIO_1[14] = 1'b0;
		 GPIO_1[16] = 1'b0;
		 GPIO_1[18] = 1'b0;
		 GPIO_1[20] = 1'b0;
		 GPIO_1[22] = 1'b0;
		 GPIO_1[24] = 1'b0;
		 end 
		 
		 2'b10: begin
		 GPIO_0[0] = ~data_out[18];
		 GPIO_0[2] = ~data_out[17];
		 GPIO_0[4] = ~data_out[16];
		 GPIO_0[6] = ~data_out[15];
		 GPIO_0[10] = 1'b0;
		 GPIO_0[12] = 1'b0;
		 GPIO_0[14] = 1'b0;
		 GPIO_0[16] = 1'b0;
		 GPIO_0[18] = 1'b0;
		 GPIO_0[20] = 1'b0;
		 GPIO_0[22] = 1'b0;
		 GPIO_0[24] = 1'b0;

		 GPIO_1[0] = ~data_out[14];
		 GPIO_1[2] = ~data_out[13];
		 GPIO_1[4] = ~data_out[12];
		 GPIO_1[6] = ~data_out[11];
		 GPIO_1[10] = data_out[10];
		 GPIO_1[12] = data_out[9];
		 GPIO_1[14] = data_out[8];
		 GPIO_1[16] = data_out[7];
		 GPIO_1[18] = data_out[6];
		 GPIO_1[20] = data_out[5];
		 GPIO_1[22] = data_out[4];
		 GPIO_1[24] = data_out[3];
		 end 
		 
		 2'b11: begin
		 GPIO_0[0] = ~data_out[18];
		 GPIO_0[2] = ~data_out[17];
		 GPIO_0[4] = ~data_out[16];
		 GPIO_0[6] = ~data_out[15];
		 GPIO_0[10] = data_out[10];
		 GPIO_0[12] = data_out[9];
		 GPIO_0[14] = data_out[8];
		 GPIO_0[16] = data_out[7];
		 GPIO_0[18] = data_out[6];
		 GPIO_0[20] = data_out[5];
		 GPIO_0[22] = data_out[4];
		 GPIO_0[24] = data_out[3];

		 GPIO_1[0] = ~data_out[14];
		 GPIO_1[2] = ~data_out[13];
		 GPIO_1[4] = ~data_out[12];
		 GPIO_1[6] = ~data_out[11];
		 GPIO_1[10] = data_out[10];
		 GPIO_1[12] = data_out[9];
		 GPIO_1[14] = data_out[8];
		 GPIO_1[16] = data_out[7];
		 GPIO_1[18] = data_out[6];
		 GPIO_1[20] = data_out[5];
		 GPIO_1[22] = data_out[4];
		 GPIO_1[24] = data_out[3];
		 end 
		 
		 default:
		 begin
		 GPIO_0[0] = 1'b0;
		 GPIO_0[2] = 1'b0;
		 GPIO_0[4] = 1'b0;
		 GPIO_0[6] = 1'b0;
		 GPIO_0[10] = 1'b0;
		 GPIO_0[12] = 1'b0;
		 GPIO_0[14] = 1'b0;
		 GPIO_0[16] = 1'b0;
		 GPIO_0[18] = 1'b0;
		 GPIO_0[20] = 1'b0;
		 GPIO_0[22] = 1'b0;
		 GPIO_0[24] = 1'b0;

		 GPIO_1[0] = 1'b0;
		 GPIO_1[2] = 1'b0;
		 GPIO_1[4] = 1'b0;
		 GPIO_1[6] = 1'b0;
		 GPIO_1[10] = 1'b0;
		 GPIO_1[12] = 1'b0;
		 GPIO_1[14] = 1'b0;
		 GPIO_1[16] = 1'b0;
		 GPIO_1[18] = 1'b0;
		 GPIO_1[20] = 1'b0;
		 GPIO_1[22] = 1'b0;
		 GPIO_1[24] = 1'b0;
		 end 
		endcase
    end // enable_signals
	 
	     hex_decoder H0(
        .hex_digit(col_out[3:0]), 
        .segments(HEX0)
        );
		  
		  hex_decoder H1(
        .hex_digit(data_in[10:7]), 
        .segments(HEX1)
        );
		  
		   hex_decoder H2(
        .hex_digit(address[3:0]), 
        .segments(HEX2)
        );
		  
		  wire [3:0] concat = {1'b1 , address[6:4]};
		   hex_decoder H3(
        .hex_digit(concat), 
        .segments(HEX3)
        );
		  
		  assign LEDG[1] = player_out[0];
		  assign LEDG[2] = player_out[1];
		  
endmodule

module hex_decoder(hex_digit, segments);
    input [3:0] hex_digit;
    output reg [6:0] segments;
   
    always @(*)
        case (hex_digit)
            4'h0: segments = 7'b100_0000;
            4'h1: segments = 7'b111_1001;
            4'h2: segments = 7'b010_0100;
            4'h3: segments = 7'b011_0000;
            4'h4: segments = 7'b001_1001;
            4'h5: segments = 7'b001_0010;
            4'h6: segments = 7'b000_0010;
            4'h7: segments = 7'b111_1000;
            4'h8: segments = 7'b000_0000;
            4'h9: segments = 7'b001_1000;
            4'hA: segments = 7'b000_1000;
            4'hB: segments = 7'b000_0011;
            4'hC: segments = 7'b100_0110;
            4'hD: segments = 7'b010_0001;
            4'hE: segments = 7'b000_0110;
            4'hF: segments = 7'b000_1110;   
            default: segments = 7'h7f;
        endcase
endmodule
