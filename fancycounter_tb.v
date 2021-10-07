module tb();

reg clk=1;
reg rst=0;
wire [2:0] cnt;

hw21 FANCY (clk,rst,cnt);

always #5 clk = !clk;

initial
	begin
		rst=1;
		#2;
		rst=0;
		#2000;
		$finish;
	end
endmodule
