module Somador1Bit (A, B, Cin, S, Cout);
	
	input A, B, Cin;
	output S, Cout;
	
	wire Xor1, And1, And2;
	
	xor (Xor1, A, B);
	and (And1, Xor1, Cin);
	
	xor (S, Xor1, Cin);
	
	and (And2, A, B);
	or (Cout, And1, And2);
	
endmodule 