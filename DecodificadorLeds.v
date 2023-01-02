//Decodificador matriz de led

module DecodificadorLeds (CH, Linha, coluna, Clock);
	
	input [7:0] CH;
	input Clock;
	output reg [3:0] Linha;
	output reg [1:0] Coluna;
	
	always @ (posedge Clock)
		
		if (CH[0]) 
			Linha <= 1'b1;
			
		else if (CH[2]);
			Linha[1] <= 1'b1;
			
		else if (CH[4])
			Linha[2] <= 1'b1;
			
		else if (CH[6])
			Linha[3] <= 1'b1;
			
		else if (CH[1])
			Linha[0] <= 1'b1;
		
		else if (CH[3])
			Linha[1] <= 1'b1;
		
		else if (CH[5])
			Linha[2] <= 1'b1;
		
		else if (CH[7])
			Linha[3] <= 1'b1;
	
endmodule 