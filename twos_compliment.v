module twos_compliment(
input [7:0] A,
output [7:0] Y
);

wire [7:0] invert;
assign invert = ~A;

wire c1, c2, c3, c4, c5, c6, c7;

full_adder a1_inst(
.A(invert[0]), .B(1'b0), .Cin(1'b1), .Y(Y[0]), .Cout(c1)
);

full_adder b1_inst(
.A(invert[1]), .B(1'b0), .Cin(c1), .Y(Y[1]), .Cout(c2)
);

full_adder c1_inst(
.A(invert[2]), .B(1'b0), .Cin(c2), .Y(Y[2]), .Cout(c3)
);

full_adder d1_inst(
.A(invert[3]), .B(1'b0), .Cin(c3), .Y(Y[3]), .Cout(c4)
);

full_adder e1_inst(
.A(invert[4]), .B(1'b0), .Cin(c4), .Y(Y[4]), .Cout(c5)
);

full_adder f1_inst(
.A(invert[5]), .B(1'b0), .Cin(c5), .Y(Y[5]), .Cout(c6)
);

full_adder g1_inst(
.A(invert[6]), .B(1'b0), .Cin(c6), .Y(Y[6]), .Cout(c7)
);

full_adder h1_inst(
.A(invert[7]), .B(1'b0), .Cin(c7), .Y(Y[7]), .Cout()//overflow
);



endmodule 