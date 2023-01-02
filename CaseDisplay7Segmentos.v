//Case do display de 7 segmentos 

module CaseDisplay7Segmentos (Ocupados, Vazios, Clock, ClockMetade, Output);
	
	input Clock, ClockMetade;
	input [3:0] Ocupados;
	input [3:0] Vazios;
	output reg [3:0] Output;
	
	always @(*) begin
		
		case ({Clock, ClockMetade})
			
			2'b00: Output <= Vazios;
			2'b01: Output <= 4'b1010; //Vazios
			2'b10: Output <= Ocupados;
			2'b11: Output <= 4'b1011; //Ocupados
		
		endcase
		
	end


endmodule