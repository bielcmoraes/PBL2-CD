//Subtrator completo 4 bits//

module SubtratorCompleto4Bits (A1, A2, A3, A4, B1, B2, B3, B4, S1, S2, S3, S4);

	input A1, A2, A3, A4, B1, B2, B3, B4;
	output S1, S2, S3, S4;
	
	wire BoutSub1, BoutSub2, BoutSub3, Bout;
	wire NotB1, NotB2, NotB3, NotB4;
	
	not (NotB1, B1);
	not (NotB2, B2);
	not (NotB3, B3);
	not (NotB4, B4);
	
	SomadorCompleto4Bits somador1 (.A1(A1), .A2(A2), .A3(A3), .A4(A4), .B1(NotB1), .B2(NotB2), .B3(NotB3), .B4(NotB4), .Cin(1'b1), .S1(S1), .S2(S2), .S3(S3), .S4(S4), .Cout());

endmodule 