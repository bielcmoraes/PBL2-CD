//Decodificador 4 Bits

module Decodificador4Bits (value, convert);

	input [3:0] value;
	output reg [6:0] convert;
	
	always @* begin
	
		case (value)
			
			4'b0000: convert = 7'b1000000; //0
			4'b0001: convert = 7'b1111001; //1
			4'b0010: convert = 7'b0100100; //2
			4'b0011: convert = 7'b0110000; //3
			4'b0100: convert = 7'b0011001; //4
			4'b0101: convert = 7'b0100010; //5
			4'b0110: convert = 7'b0000010; //6
			4'b0111: convert = 7'b1111000; //7
			4'b1000: convert = 7'b0000000; //8
			
			4'b1010: convert = 7'b1110011; //Letra L
			4'b1011: convert = 7'b1100010; //Letra O
			default: convert = 7'b1111111;
				
		endcase
		
	end

endmodule 