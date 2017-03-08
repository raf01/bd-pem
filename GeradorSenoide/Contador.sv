module Contador(
	input logic clock,
	input logic reset, 
  output logic [4:0]saida
);

logic [4:0]contador;
  always_ff @(posedge clock or negedge reset)
begin
  if(reset == 0)
		contador = 0;
	else
		contador = contador + 1;
	
end
  assign saida = contador;
endmodule
