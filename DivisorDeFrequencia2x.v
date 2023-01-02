//Divisor de frequencia

module DivisorDeFrequencia2x (Clock, Q, Output);
	
	input Clock;
	output Output, Q;
	
	DivisorDeFrequencia dividor1 (.Clock(Clock), .Q(), .Q1(), .Q2(), .Q3(), .Q4(), .Q5(), .Q6(), .Q7(), .Q8(), .Q9(), .Q10(Q));
	DivisorDeFrequencia dividor2 (.Clock(Q), .Q(), .Q1(), .Q2(), .Q3(), .Q4(), .Q5(), .Q6(), .Q7(), .Q8(), .Q9(), .Q10(Output));
	
endmodule 