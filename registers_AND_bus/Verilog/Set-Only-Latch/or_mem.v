module or_mem(
    input push,
    input power_cut,
    output reg out
);
  
  initial out = 0;

  always@(posedge push or posedge power_cut) begin
    if (~ power_cut ) begin
    out <= push | out;
    end else begin 
      out <= 0;
    end
  end
  
endmodule