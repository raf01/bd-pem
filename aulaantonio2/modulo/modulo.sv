module modulo(
input logic clk,
input logic rst,
input logic [2:0]slot,
output logic pulso
);

logic [4:0]contador;
//logic [7:0]endereco;

always_ff @(posedge clk or negedge rst) begin
	if(rst == 0)
		contador <= 0;
	else
		contador <= contador + 1;
end

//MR M1(.clk(clk),.rst(rst),.endereco(endereco),.datain(slot),.dataout());

always_ff @ (clk) begin
	if(slot[2:0] == contador[4:2])
		pulso <= clk;
	else
		pulso <= 0;
end

endmodule
