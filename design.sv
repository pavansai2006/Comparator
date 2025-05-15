module comparator(A1,A0,B1,B0,lt,gt,eq);
  input A1,A0,B1,B0;
  output reg lt,gt,eq;
  
  always @(*)
    begin
      lt=0; gt=0; eq=0;
    if({A1,A0} < {B1,B0}) begin lt=1; end
  else if({A1,A0} > {B1,B0}) begin gt=1; end
  else eq=1;
    end
endmodule
