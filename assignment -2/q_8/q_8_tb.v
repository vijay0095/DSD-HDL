`include "q_7.v"
module tb_RCA_1 ;
       reg Cin ;
       reg [3:0] A,B ;
       wire [3:0] Sum ;
       wire Cout ;
   RCA #(.N(4)) DUT(Cout,Sum,A,B,Cin);
   reg [3:0] mem[0:14];
   reg out[0:4];
   reg [3:0] sout[0:4];  
   integer f,i;
   integer j=0;
   initial
      begin	  
	     $readmemb("file.txt",mem);	
         f = $fopen("output.txt","w");		 
         $dumpfile("example.vcd");
         $dumpvars(0,tb_RCA_1);
         $monitor($time ,",A=%d | B=%d | Cin=%b | Sum=%d | Cout=%b  ",A,B,Cin,Sum,Cout);
		 for (i=0;i<15;i=i+3)
         begin 		 
		 
         A=mem[i] ; B=mem[i+1] ; Cin=mem[i+2] ; #10;
		   out[j]=Cout;
	       sout[j]=Sum;
	      $fdisplay(f,"%b %b\n",out[j],sout[j]);
		  
		  j=j+1;
		    
         end         
         $fclose(f);		 
		 #50 $finish ;
      end
endmodule