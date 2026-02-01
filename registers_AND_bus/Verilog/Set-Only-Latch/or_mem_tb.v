`include "or_mem.v"

module testbench;

  reg push;
  reg power_cut;
  wire out;

  or_mem dut(
    .push(push),
    .power_cut(power_cut),
    .out(out)
  );

  initial begin

     $monitor("t = %0t | push = %b | power_cut = %b | out = %b", $time, push, power_cut, out);
     $dumpfile("sim.vcd");
     $dumpvars(0, testbench);

     push = 0;
     power_cut = 0;
     #10;

     push = 1;
     power_cut = 0;
     #10;

     push = 0;
     power_cut = 0;
     #10

     push = 0;
     power_cut = 0;
     #10

     push = 0;
     power_cut = 1;
     #10

     push = 1;
     power_cut = 0;
     #10

     push = 1;
     power_cut = 0;
     #10
     
     $finish;
     $display("Simulation Complete!");

   end

endmodule