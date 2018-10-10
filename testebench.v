`include "codificador.v"
module testebench();
     reg a,b,c,d,reset,ready;
     wire m1,m2,m3,m4,m5;
     codificador codificador_0(.a(a),.b(b),.c(c),.d(d),.reset(reset),.ready(ready));


     initial begin //setando entrada com tabela verdade

      $dumpfile("codificador.vcd");
      $dumpvars(0, testebench);
      reset=1;
      #1; reset=0;
      #1; ready=0;a=0; b=0; c=0; d=0; ready=1;//0000
      #1; ready=0;a=0; b=0; c=0; d=1;ready=1;
      #1; ready=0;a=0; b=0; c=1; d=0;ready=1;
      #1;ready=0;a=0; b=0; c=1; d=1;ready=1;
      #1; ready=0;a=0;b=1; c=0; d=0;ready=1;
      #1; ready=0;a=0; b=1; c=0; d=1;ready=1;
      #1; ready=0;a=0; b=1; c=1; d=0;ready=1;
      #1; ready=0;a=0; b=1; c=1; d=1;ready=1;
      #1; ready=0;a=1; b=0; c=0; d=0;ready=1;
      #1; ready=0;a=1; b=0; c=0; d=1;ready=1;

      $finish;
      end

endmodule
