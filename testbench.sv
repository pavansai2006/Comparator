module testbench;
  reg a1,a0,b1,b0;
  wire lt,gt,eq;
  comparator CUT(.A1(a1), .A0(a0), .B1(b1), .B0(b0), .lt(lt), .gt(gt), .eq(eq));
  initial
    begin
      $dumpfile("comparator.vcd");
      $dumpvars(0,testbench);
      $monitor($time ," A1=%b, A0=%b, B1=%b, B0=%b, LT=%b, EQ=%b, GT=%b",a1,a0,b1,b0,lt,eq,gt);
               
      #5 a1=0; a0=0; b1=0; b0=0;
      #5 b1=1;
      #5 a1=0; a0=1; b1=0; b0=0;
      #5 b0=1;
      #5 a1=1; b1=1;
      #5 $finish;
    end
endmodule
      
