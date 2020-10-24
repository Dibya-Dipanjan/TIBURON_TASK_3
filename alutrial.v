//Starting a Module
module ALU(D,A,B,Cin,F);
//Input Variables
input [3:0] A,B,Cin,F;
//Output Variable
output [3:0] D;
reg [3:0] D;
always @(F,A,B,Cin)
begin
  case(F)
    4'b0000: D<=~A;
    4'b0001: D<=A-B-Cin;
    4'b0010: D<=A+B+Cin;
    4'b0011: D<= A & B;
    4'b0100: D<= A | B;
    4'b0101: D<= A ^ B;
    4'b0110: D<= A ~^ B;
    4'b0111: D<=A*B;
    4'b1000: D<=A/B;
    4'b1001: D<=A<<1;
    4'b1010: D<= A>>1;
    4'b1011: D<=A+1;
    4'b1100: D<=A-1;
  endcase
end
endmodule
