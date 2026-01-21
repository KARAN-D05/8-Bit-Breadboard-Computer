module monostable_clk
  (input push,
   output reg clk);
  
  initial clk = 0;

  always@(*) begin
    if (push) begin
        clk = 1;
    end else begin
        clk = 0;
    end
  end

endmodule