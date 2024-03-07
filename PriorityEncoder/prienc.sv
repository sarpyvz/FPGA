module prienc_case(out, in);
  input [7:0] in;
  output reg [7:0] out;
 
  always @* begin
    casex (in)
      7'b1xxxxxxx : out=7'b10000000;
      7'b01xxxxxx : out=7'b01000000;
      7'b001xxxxx : out=7'b00100000;
      7'b0001xxxx : out=7'b00010000;
      7'b00001xxx : out=7'b00001000;
      7'b000001xx : out=7'b00000100;
      7'b0000001x : out=7'b00000010;
      7'b00000001 : out=7'b00000001;
      7'b00000000 : out=7'b00000000;
    endcase
  end
endmodule


module prienc_if(out, in);
  input [7:0] in;
  output reg [7:0] out;
  
  always @* begin
    if (in[7])
      out=7'b10000000;
    else if (in[6])
      out=7'b01000000;
    else if (in[5])
      out=7'b00100000;
    else if (in[4])
      out=7'b00010000;
    else if (in[3])
      out=7'b00001000;
    else if (in[2])
      out=7'b00000100;
    else if (in[1])
      out=7'b00000010;
    else if (in[0])
      out=7'b00000001;
    else 
      out=7'b00000000;
 
  end
endmodule
