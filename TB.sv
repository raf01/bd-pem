module TB();
  
  logic [7:0]saida;
  logic clock;
  logic reset;
  logic dado;
  
  
  GeradorSenoide cont(.CLOCK_50(clock), .resetTop(reset), .saidaTop2(saida), .dado(dado));
  
initial
  begin
    reset = 0;
	 clock = 0;
	 dado = 0;
	#1 reset = 1;
	#256 dado = 1;
	#1024 dado = 0;
	#5000 reset = 0;
  end

always begin
  #1 clock = ~clock;
end


  initial begin
    #10000 $finish;
  end
 /* 
initial begin
  $dumpfile("dump.vcd");
  $dumpvars();
end*/
  
endmodule: TB