module reconfig_multi_topology_a (
input[7:0]					a1,
input[7:0]					a2,
input[7:0]					a3,
input[7:0]					b,
input							s0,
input							s1,

output[8:0]			y


);

//reg wire define here
wire									carry_0;
wire									carry_1;
wire									carry_2;
wire									carry_3;
wire									carry_4;
wire									carry_5;
wire									carry_6;
wire									carry_7;
wire									lut_out0;
wire									lut_out1;
wire									lut_out2;
wire									lut_out3;
wire									lut_out4;
wire									lut_out5;
wire									lut_out6;
wire									lut_out7;
wire									f0;
wire									f1;
wire									f2;
wire									f3;
wire									f4;
wire									f5;
wire									f6;
wire									f7;
wire[2:0]							sigma;


//sigmas_s logic   
assign sigma  =	(s0==0 & s1==0) 	?	3'd0:
						(s0==0 & s1==1)	?	3'd2:
						(s0==1 & s1==0)	?	3'd4: 
						(s0==1 & s1==1)   ?  3'd6: 3'd0;
						
						
mux_7 mux_7_u_0(
.din_1(a1[0]),
.din_2(~a1[0]),
.din_3(a2[0]),
.din_4(~a2[0]),
.din_5(a3[0]),
.din_6(~a3[0]),
.din_7(1'b0),
.sel(sigma),
.dout(lut_out0)
);


mux_7 mux_7_u_1(
.din_1(a1[1]),
.din_2(~a1[1]),
.din_3(a2[1]),
.din_4(~a2[1]),
.din_5(a3[1]),
.din_6(~a3[1]),
.din_7(1'b0),
.sel(sigma),
.dout(lut_out1)
);

mux_7 mux_7_u_2(
.din_1(a1[2]),
.din_2(~a1[2]),
.din_3(a2[2]),
.din_4(~a2[2]),
.din_5(a3[2]),
.din_6(~a3[2]),
.din_7(1'b0),
.sel(sigma),
.dout(lut_out2)
);
mux_7 mux_7_u_3(
.din_1(a1[3]),
.din_2(~a1[3]),
.din_3(a2[3]),
.din_4(~a2[3]),
.din_5(a3[3]),
.din_6(~a3[3]),
.din_7(1'b0),
.sel(sigma),
.dout(lut_out3)
);
mux_7 mux_7_u_4(
.din_1(a1[4]),
.din_2(~a1[4]),
.din_3(a2[4]),
.din_4(~a2[4]),
.din_5(a3[4]),
.din_6(~a3[4]),
.din_7(1'b0),
.sel(sigma),
.dout(lut_out4)
);
mux_7 mux_7_u_5(
.din_1(a1[5]),
.din_2(~a1[5]),
.din_3(a2[5]),
.din_4(~a2[5]),
.din_5(a3[5]),
.din_6(~a3[5]),
.din_7(1'b0),
.sel(sigma),
.dout(lut_out5)
);
mux_7 mux_7_u_6(
.din_1(a1[6]),
.din_2(~a1[6]),
.din_3(a2[6]),
.din_4(~a2[6]),
.din_5(a3[6]),
.din_6(~a3[6]),
.din_7(1'b0),
.sel(sigma),
.dout(lut_out6)
);
mux_7 mux_7_u_7(
.din_1(a1[7]),
.din_2(~a1[7]),
.din_3(a2[7]),
.din_4(~a2[7]),
.din_5(a3[7]),
.din_6(~a3[7]),
.din_7(1'b0),
.sel(sigma),
.dout(lut_out7)
);						
//mux_logic
//always@(*)begin
//	if(sigma==3'd0)begin
//		lut_out0 = a1[0];
//		lut_out1 = a1[1];
//		lut_out2 = a1[2];
//		lut_out3 = a1[3];
//		lut_out4 = a1[4];
//		lut_out5 = a1[5];
//		lut_out6 = a1[6];
//		lut_out7 = a1[7];
//	end
//	else if(sigma==3'd1)begin
//		lut_out0 = ~a1[0];
//		lut_out1 = ~a1[1];
//		lut_out2 = ~a1[2];
//		lut_out3 = ~a1[3];
//		lut_out4 = ~a1[4];
//		lut_out5 = ~a1[5];
//		lut_out6 = ~a1[6];
//		lut_out7 = ~a1[7];
//	end
//	else if(sigma==3'd2)begin
//		lut_out0 = a2[0];
//		lut_out1 = a2[1];
//		lut_out2 = a2[2];
//		lut_out3 = a2[3];
//		lut_out4 = a2[4];
//		lut_out5 = a2[5];
//		lut_out6 = a2[6];
//		lut_out7 = a2[7];
//	end
//	else if(sigma==3'd3)begin
//		lut_out0 = ~a2[0];
//		lut_out1 = ~a2[1];
//		lut_out2 = ~a2[2];
//		lut_out3 = ~a2[3];
//		lut_out4 = ~a2[4];
//		lut_out5 = ~a2[5];
//		lut_out6 = ~a2[6];
//		lut_out7 = ~a2[7];
//	end
//	else if(sigma==3'd4)begin
//		lut_out0 = a3[0];
//		lut_out1 = a3[1];
//		lut_out2 = a3[2];
//		lut_out3 = a3[3];
//		lut_out4 = a3[4];
//		lut_out5 = a3[5];
//		lut_out6 = a3[6];
//		lut_out7 = a3[7];
//	end
//	else if(sigma==3'd5)begin
//		lut_out0 = ~a3[0];
//		lut_out1 = ~a3[1];
//		lut_out2 = ~a3[2];
//		lut_out3 = ~a3[3];
//		lut_out4 = ~a3[4];
//		lut_out5 = ~a3[5];
//		lut_out6 = ~a3[6];
//		lut_out7 = ~a3[7];
//	end
//	else
//		lut_out0 = 1'b0;
//		lut_out1 = 1'b0;
//		lut_out2 = 1'b0;
//		lut_out3 = 1'b0;
//		lut_out4 = 1'b0;
//		lut_out5 = 1'b0;
//		lut_out6 = 1'b0;
//		lut_out7 = 1'b0;
//end



assign f0 = b[0] ^ lut_out0;
assign f1 = b[1] ^ lut_out1;
assign f2 = b[2] ^ lut_out2;
assign f3 = b[3] ^ lut_out3;
assign f4 = b[4] ^ lut_out4;
assign f5 = b[5] ^ lut_out5;
assign f6 = b[6] ^ lut_out6;
assign f7 = b[7] ^ lut_out7; 


assign carry_0 =  f0	? 1'b0		: 	b[0];
assign carry_1 = 	f1	? carry_0 	:	b[1];
assign carry_2 = 	f2	? carry_1	:	b[2];
assign carry_3 = 	f3	? carry_2	:	b[3];
assign carry_4 = 	f4	? carry_3	:	b[4];
assign carry_5 = 	f5	? carry_4	:	b[5];
assign carry_6 = 	f6	? carry_5	:	b[6];
assign carry_7 = 	f7	? carry_6	:	b[7];


assign y[0] = f0 ^ 1'b0 ;
assign y[1] = f1 ^ carry_0;
assign y[2] = f2 ^ carry_1;
assign y[3] = f3 ^ carry_2;
assign y[4] = f4 ^ carry_3;
assign y[5] = f5 ^ carry_4;
assign y[6] = f6 ^ carry_5;
assign y[7] = f7 ^ carry_6;
assign y[8] = carry_7;










endmodule 