//FlipFlop T

module FlipFlopT (T, Clock, Q, Qn);

	input T, Clock;
	output Q, Qn;
	
	FlipFlopJK flipflop1 (.J(T), .K(T), .Clock(Clock), .Q(Q));
	not (Qn, Q);

endmodule 