//Seleciona Vagas

module SelecionaVaga (CH, Clock, Col, Lin);

	input [7:0] CH;
	input Clock;
	output reg [1:0] Col;
	output reg [3:0] Lin;
	
	always @(*) begin
		
		case (Clock)
			1'b0:
				begin 
					Col[0] =  1'b1;
					Col[1] = 1'b0;
					Lin[0] = ~CH[7];
					Lin[1] = ~CH[5];
					Lin[2] = ~CH[3];
					Lin[3] = ~CH[1];
				end
			1'b1:
				begin
				Col[0] =  1'b0;
					Col[1] = 1'b1;
					Lin[0] = ~CH[6];
					Lin[1] = ~CH[4];
					Lin[2] = ~CH[2];
					Lin[3] = ~CH[0];
				end
		endcase
		
	end
		

endmodule 