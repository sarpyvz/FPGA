module tb_prienc;
  reg [7:0] in;
  
  wire [7:0] out1, out2;
  
  prienc_case uut1(out1, in);
  prienc_case uut2(out2, in);
  
  initial forever begin
    in=$random;
    #5;
    if (out1 != out2) begin
      $display("Error");
    end
    #50;
  end
  
  initial begin
    $dumpfile("dump.vcd"); $dumpvars;
    #1000 $finish;
  end
  
endmodule
