module GeradorSenoide(
	input logic CLOCK_50,
	input logic resetTop,
	output logic [7:0]saidaTop2,
	input logic dado
);

logic [4:0]saidaTop;

  Contador contador(.clock(CLOCK_50), .reset(resetTop), .saida(saidaTop));
  Senoide senoide(.entradaT(saidaTop),.dado(dado) ,.saidaT(saidaTop2));
  
endmodule
