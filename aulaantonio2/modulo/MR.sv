module MR(
input logic clk,
input logic rst,
input logic writeb,
input logic [7:0]endereco,
input logic [7:0]datain,
output logic [7:0]dataout
);

logic [7:0]rega;
logic [7:0]regb;

always_ff @ (posedge clk or negedge rst) begin
	
	if(rst == 0)
		begin
			rega <= 0;
			regb <= 0;
		end
	else
		begin
			if(writeb)
				begin
					case(endereco)
						120: rega <= datain;
						121: regb <= datain;
					endcase
				end
			else
				begin
					rega <= rega;
					regb <= regb;
				end
		end
	
end

always_comb begin

	case(endereco)
		120: dataout <= rega;
		121: dataout <= regb;
		default: dataout <= 0;
	endcase

end

endmodule

