module moore(w,z,pos,rst);
  input w, pos, rst;
  output reg = z;
  reg [1:0]Sn,Sp;
  
  always@(posedge pos,posedge rst)begin
    if(rst)
      Sn = 2'b00;
    else
      Sp <= Sn;
  end
  
  always@* begin
    case(Sp)
      2'b00 : if (w)
        		
