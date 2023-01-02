//Multiplexador display

module MUXDisplay7Segmentos (Ocupados, Vazios, Clock, Output, DigitoAceso);
	
	input Clock;
	wire ClockMetade;
	input [3:0] Ocupados;
	input [3:0] Vazios;
	wire [3:0] valorMux;
	output [6:0] Output;
	output [3:0] DigitoAceso;
	
	FlipFlopT divideMetade (.T(1'b1), .Clock(Clock), .Q(ClockMetade), .Qn());
	
	CaseDisplay7Segmentos case1 (.Ocupados(Ocupados), .Vazios(Vazios), .Clock(Clock), .ClockMetade(ClockMetade), .Output(valorMux));
	
	DEMUXDisplay7Segmentos Demux1 (.Clock(Clock), .ClockMetade(ClockMetade), .Output(DigitoAceso));
	
	Decodificador4Bits decodificador1 (.value(valorMux), .convert(Output));
endmodule 