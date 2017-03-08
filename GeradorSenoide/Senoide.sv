module Senoide(
	input logic [4:0]entradaT,
	input logic dado,
   output logic [7:0]saidaT
);

logic [5:0] entrada;



always_comb entrada = {dado,entradaT};


always_comb
begin
	case(entrada)
		0: saidaT = 128;
		1: saidaT = 153;
		2: saidaT = 177;
		3: saidaT = 199;
		4: saidaT = 218;
		5: saidaT = 234;
		6: saidaT = 246;
		7: saidaT = 253;
		8: saidaT = 255;
		9: saidaT = 253;
		10: saidaT = 246;
		11: saidaT = 234;
		12: saidaT = 218;
		13: saidaT = 199;
		14: saidaT = 177;
		15: saidaT = 153;
		16: saidaT = 128;
		17: saidaT = 103;
		18: saidaT = 79;
		19: saidaT = 57;
		20: saidaT = 38;
		21: saidaT = 22;
		22: saidaT = 10;
		23: saidaT = 3;
		24: saidaT = 1;
		25: saidaT = 3;
		26: saidaT = 10;
		27: saidaT = 22;
		28: saidaT = 38;
		29: saidaT = 57;
		30: saidaT = 79;
		31: saidaT = 103;
		32: saidaT = 128;
		
		
		33: saidaT = 165;
		34: saidaT = 199;
		35: saidaT = 227;
		36: saidaT = 246;
		37: saidaT = 255;
		38: saidaT = 253;
		39: saidaT = 240;
		40: saidaT = 218;
		41: saidaT = 188;
		42: saidaT = 153;
		43: saidaT = 116;
		44: saidaT = 79;
		45: saidaT = 47;
		46: saidaT = 22;
		47: saidaT = 6;
		48: saidaT = 0;
		49: saidaT = 6;
		50: saidaT = 22;
		51: saidaT = 47;
		52: saidaT = 79;
		53: saidaT = 116;
		54: saidaT = 153;
		55: saidaT = 188;
		56: saidaT = 218;
		57: saidaT = 240;
		58: saidaT = 253;
		59: saidaT = 255;
		60: saidaT = 246;
		61: saidaT = 227;
		62: saidaT = 199;
		63: saidaT = 165;
	endcase
end

endmodule
