module mealy(w,z,pos,rst);
  	input w, pos, rst;
  	output reg z;
  	reg Sn,Sp;
  	
  always@(posedge pos, posedge rst)begin
    if(rst)
      Sn = 1'b0;
    else
      Sp <= Sn;
  end
    
    always@* begin
      case(Sp)
        1'b0 : if (w)
          		Sn = 1'b1;
        		z  = 1'b0;
        	else
              Sn = 1'b0;
        	  z = 1'b1;
        1'b1: if (w)
          		Sn = 1'b0;
        		z = 1'b1;
        	else 
              Sn = 1'b1;
        	  z= 1'b0;
       	default : Sn = 1'b0;
        			z = 1'b1;
      endcase
    end 
endmodule
    
