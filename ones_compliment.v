module ones_compliment (
input [3:0] A,
input [3:0] B,
output [3:0] Y
);

wire [3:0] sum1; 
wire c1, c2, c3;
wire carryOut;

    full_adder a1_inst(
       .A(A[0]), .B(B[0]), .Cin(1'b0), .Y(sum1[0]), .Cout(c1)
       );
       
    full_adder b1_inst(
    .A(A[1]), .B(B[1]), .Cin(c1), .Y(sum1[1]), .Cout(c2)
    );
    
    full_adder c1_inst(
    .A(A[2]), .B(B[2]), .Cin(c2), .Y(sum1[2]), .Cout(c3)
    );
    
    full_adder d1_inst(
    .A(A[3]), .B(B[3]), .Cin(c3), .Y(sum1[3]), .Cout(carryOut)
    );
    
  //Second instance
    wire d1, d2, d3;
    
    full_adder  a2_inst(
    .A(sum1[0]), .B(carryOut), .Cin(1'b0), .Y(Y[0]), .Cout(d1)
    );
    
    full_adder b2_inst(
    .A(sum1[1]), .B(1'b0), .Cin(d1), .Y(Y[1]), .Cout(d2)
    );
    
    full_adder c2_inst(
    .A(sum1[2]), .B(1'b0), .Cin(d2), .Y(Y[2]), .Cout(d3)
    );
    
    full_adder d2_inst(
    .A(sum1[3]), .B(1'b0), .Cin(d3), .Y(Y[3]), .Cout()
    );
    

endmodule