module hw21 (clk,rst,cnt);
input clk,rst;
output [2:0] cnt;

wire [2:0] b1,b2,b3,b4,b5,b6,b7,b8;
reg [2:0] int_cnt,cnt;
wire s1,s2,s3,t1,t2,t3,t4;

//internal counter
assign b1 = (int_cnt+3'd1);
assign b2 = s1?3'd1:b1;
assign s1 = (int_cnt==3'd5);
assign b7 = s2?b2:3'd1;

always @(posedge clk or posedge rst)
begin
	if(rst)	int_cnt <= 1;
	else 		int_cnt <= b7;
end

//fancy counter
assign b4 = s1?b3:cnt;
assign b3 = (cnt+3'd1);
assign b5 = s3?3'd0:b8;
assign s3 = (cnt==3'd7);
assign b6 = s2?b4:b5;
assign b8 = cnt+3'd1;

assign t1 = (cnt==3'd0);
assign t2 = (cnt==3'd2);
assign t3 = (cnt==3'd4);
assign t4 = (cnt==3'd6);

or G1 [3:0] (s2,t1,t2,t3,t4);

always @(posedge clk or posedge rst)
begin
	if(rst)	cnt <= 0;
	else		cnt <= b6;
end

endmodule
