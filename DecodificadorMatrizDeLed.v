//Decodificador matriz de Leds

//As colunas são ativadas com nível lógico alto e as linhas com nível lógico baixo.

module DecodificadorMatrizDeLed (CH, Coluna, Linha, Clock, Clock2);
	
	input [7:0] CH;
	output reg [1:0] Coluna;
	output reg [3:0] Linha;
	input Clock,  Clock2;
	
	always @(posedge Clock)
	begin
		
		for (i=0; i<4; i=i+1) begin
			
			for (j=0; j<2; j=j+1) begin
				
				if (CH[0])
			
			end
		end
		
		//Chaves par
		if (CH[1] | CH[3]  | CH[5]  | CH[7]) begin
			
			Coluna[2] = 1'b1;
			
			case (Linha)
			2'b00: Linha[0] = 1'b1;
			2'b01: Linha[1] = 1'b1;
			2'b10: Linha[2] = 1'b1;
			2'b11: Linha[3] = 1'b1;
			endcase
		
		end
		
		
			
	end
	
endmodule 