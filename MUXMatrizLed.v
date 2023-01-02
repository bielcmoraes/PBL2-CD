//Multiplexador Matriz de Led

module MUXMatrizLed (Esquerda, Direita, Clock, S1, S2, Lin, ALTO);
	
	input Clock;
	input [0:1] Esquerda, Direita;
	output reg [0:3] Lin;
	output reg S1, S2;
	output reg ALTO;
	
	always @(*) begin
		
		case (Clock)
			1'b0: Lin = ~Esquerda;
			1'b1: Lin = ~Direita;
		endcase
		
		S1 = ~Clock;
		S2 = Clock;
		
	end
		
			
endmodule 