module mux_7(
input wire			din_1,
input wire			din_2,
input wire			din_3,
input wire			din_4,
input wire			din_5,
input wire			din_6,
input wire			din_7,
 
input wire [2:0]	sel,
output wire			dout
);


assign dout = 	(sel==3'd0)	?  din_1:
					(sel==3'd1)	?	din_2:
					(sel==3'd2)	?	din_3:
					(sel==3'd3)	?	din_4:
					(sel==3'd4)	?	din_5:
					(sel==3'd5)	?	din_6:
					(sel==3'd6)	?	din_7:	din_7;


endmodule 