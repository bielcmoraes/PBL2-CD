//Divisor de frequencia

module DivisorDeFrequencia (Clock, Q, Q1, Q2, Q3, Q4, Q5, Q6, Q7, Q8, Q9, Q10,  Q11, Q12, Q13, Q14, Q15, Q16, Q17, Q18, Q19);
	
	input Clock;
	output Q, Q1, Q2, Q3, Q4, Q5, Q6, Q7, Q8, Q9, Q10, Q11, Q12, Q13, Q14, Q15, Q16, Q17, Q18, Q19;
	
	FlipFlopT T1 (.T(1'b1), .Clock(Clock), .Q(Q), .Qn());
	FlipFlopT T2 (.T(1'b1), .Clock(Q), .Q(Q1), .Qn());
	FlipFlopT T3 (.T(1'b1), .Clock(Q1), .Q(Q2), .Qn());
	FlipFlopT T4 (.T(1'b1), .Clock(Q2), .Q(Q3), .Qn());
	FlipFlopT T5 (.T(1'b1), .Clock(Q3), .Q(Q4), .Qn());
	FlipFlopT T6 (.T(1'b1), .Clock(Q4), .Q(Q5), .Qn());
	FlipFlopT T7 (.T(1'b1), .Clock(Q5), .Q(Q6), .Qn());
	FlipFlopT T8 (.T(1'b1), .Clock(Q6), .Q(Q7), .Qn());
	FlipFlopT T9 (.T(1'b1), .Clock(Q7), .Q(Q8), .Qn());
	FlipFlopT T10 (.T(1'b1), .Clock(Q8), .Q(Q9), .Qn());
	FlipFlopT T11 (.T(1'b1), .Clock(Q9), .Q(Q10), .Qn());
	FlipFlopT T12 (.T(1'b1), .Clock(Q10), .Q(Q11), .Qn());
	FlipFlopT T13 (.T(1'b1), .Clock(Q11), .Q(Q12), .Qn());
	FlipFlopT T14 (.T(1'b1), .Clock(Q12), .Q(Q13), .Qn());
	FlipFlopT T15 (.T(1'b1), .Clock(Q13), .Q(Q14), .Qn());
	FlipFlopT T16 (.T(1'b1), .Clock(Q14), .Q(Q15), .Qn());
	FlipFlopT T17 (.T(1'b1), .Clock(Q15), .Q(Q16), .Qn());
	FlipFlopT T18 (.T(1'b1), .Clock(Q16), .Q(Q17), .Qn());
	FlipFlopT T19 (.T(1'b1), .Clock(Q17), .Q(Q18), .Qn());
	
	
endmodule 