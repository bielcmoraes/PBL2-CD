//Somador de vagas

module SomadorDeVagas (Vagas, Livres, Ocupadas);

	input [7:0] Vagas;
	output [3:0] Livres, Ocupadas;
	
	wire [3:0] result1, result2, result3, result4;
	
	wire [3:0] result5, result6, result7, result8;
	
	
	SomadorCompleto4Bits somador1 (.A1(Vagas[0]), .A2(1'b0), .A3(1'b0), .A4(), .B1(Vagas[1]), .B2(1'b0), .B3(1'b0), .B4(), .Cin(), .S1(result1[0]), .S2(result1[1]), .S3(result1[2]), .S4(result1[3]), .Cout());
	
	SomadorCompleto4Bits somador2 (.A1(Vagas[2]), .A2(1'b0), .A3(1'b0), .A4(), .B1(Vagas[3]), .B2(1'b0), .B3(1'b0), .B4(), .Cin(), .S1(result2[0]), .S2(result2[1]), .S3(result2[2]), .S4(result2[3]), .Cout());

	SomadorCompleto4Bits somador3 (.A1(Vagas[4]), .A2(1'b0), .A3(1'b0), .A4(), .B1(Vagas[5]), .B2(1'b0), .B3(1'b0), .B4(), .Cin(), .S1(result3[0]), .S2(result3[1]), .S3(result3[2]), .S4(result3[3]), .Cout());

	SomadorCompleto4Bits somador4 (.A1(Vagas[6]), .A2(1'b0), .A3(1'b0), .A4(), .B1(Vagas[7]), .B2(1'b0), .B3(1'b0), .B4(), .Cin(), .S1(result4[0]), .S2(result4[1]), .S3(result4[2]), .S4(result4[3]), .Cout());

	
	SomadorCompleto4Bits somador5 (.A1(result1[0]), .A2(result1[1]), .A3(result1[2]), .A4(result1[3]), .B1(result2[0]), .B2(result2[1]), .B3(result2[2]), .B4(result2[3]), .Cin(), .S1(result5[0]), .S2(result5[1]), .S3(result5[2]), .S4(result5[3]), .Cout());
	
	SomadorCompleto4Bits somador6 (.A1(result3[0]), .A2(result3[1]), .A3(result3[2]), .A4(result3[3]), .B1(result4[0]), .B2(result4[1]), .B3(result4[2]), .B4(result4[3]), .Cin(), .S1(result6[0]), .S2(result6[1]), .S3(result6[2]), .S4(result6[3]), .Cout());
	
	
	SomadorCompleto4Bits somador7 (.A1(result5[0]), .A2(result5[1]), .A3(result5[2]), .A4(result5[3]), .B1(result6[0]), .B2(result6[1]), .B3(result6[2]), .B4(result6[3]), .Cin(), .S1(Ocupadas[0]), .S2(Ocupadas[1]), .S3(Ocupadas[2]), .S4(Ocupadas[3]), .Cout());
	
	SubtratorCompleto4Bits (.A1(1'b0), .A2(1'b0), .A3(1'b0), .A4(1'b1), .B1(Ocupadas[0]), .B2(Ocupadas[1]), .B3(Ocupadas[2]), .B4(Ocupadas[3]), .S1(Livres[0]), .S2(Livres[1]), .S3(Livres[2]), .S4(Livres[3]));
	
	
	
	
endmodule