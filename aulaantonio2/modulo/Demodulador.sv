
// 32 pulsos - 1 ciclo ou 

module Demodulador(
  input logic G_CLK_RX,
  input logic [7:0]ADC,
  output logic int_rx_host,
  output logic [7:0]data,
  inout logic [7:0]BD_CONTROL
);
  
  logic [7:0] contador = 0;
  
 //logic borda;
 

always_ff @(G_CLK_RX or ADC[7]) 
begin
   
		
end


always_ff @(ADC[7])
begin
	contador = contador + 1;
end

  
endmodule
