//MAIN

module Main (Vagas, Display, Linhas, Colunas, Clock, DigitoAceso);
	
	input Clock;
	wire ClockIdeal;
	input [7:0] Vagas;
	
	output [6:0] Display;
	output [3:0] Linhas, DigitoAceso;
	output [1:0] Colunas;
	
	wire [3:0] Livres, Ocupadas;
	
	DivisorDeFrequencia divisor1 (.Clock(Clock), .Q19(ClockIdeal));
	
	SelecionaVaga selecionaVaga (.CH(Vagas), .Clock(Clock), .Col(Colunas), .Lin(Linhas));
	
	SomadorDeVagas somadorDeVagas (.Vagas(Vagas), .Livres(Livres), .Ocupadas(Ocupadas));
	
	MUXDisplay7Segmentos (.Ocupados(Ocupadas), .Vazios(Livres), .Clock(Clock), .Output(Display), .DigitoAceso(DigitoAceso));
	

endmodule 