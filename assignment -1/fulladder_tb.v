`include"fulladder.v"
module tb_fa_ha_str;
  reg a,b,cin;
  wire s,c;
  fa_ha_str DUT(s,c,a,b,cin);
  initial
  begin
    a=0;b=0;cin=0;
    #5 a=0;b=0;cin=1;
    #5 a=0;b=1;cin=0;
    #5 a=0;b=1;cin=1;
    #5 a=1;b=0;cin=0;
    #5 a=1;b=0;cin=1;
    #5 a=1;b=1;cin=0;
    #5 a=1;b=1;cin=1;
  end
  initial
  begin
  $dumpfile("fulladder.vcd");
  $dumpvars(0,tb_fa_ha_str);
  $monitor($time,"a=%b,b=%b,cin=%b,s=%b,c=%b",a,b,cin,s,c);
  end
endmodule