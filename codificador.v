module codificador (a,b,c,d,m1,reset, ready);
  input wire a,b,c,d,reset, ready;
  output reg m1,m2,m3,m4,m5;

  always @ (*) begin
    if (reset) begin
      m1=0;
      m2=0;
      m3=0;
      m4=0;
      m5=0;
    end // AND =& or =| not = ~\\
    else if(ready) begin
      m1 = (b & ~c) | (~a &  ~c & d) | (~b & c);
      m2 = (~a & b & ~c) | (~a & ~b & c) | (~a & c & ~d);
      m3 = (~a & b) | (~a & c & d);
      m4 = (~a & b) | (a & ~b & ~c & ~d);
      m5 = (a & ~b & ~c) | (~a & b & d) | (~a & b & c);
    end


    end

endmodule
