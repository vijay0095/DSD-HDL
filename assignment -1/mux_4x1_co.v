module mux_4x1 (y,s1,s2,a,b,c,d);

input s1,s2,a,b,c,d;
output y;

assign y = s1?(s2? d:c):(s2? b:a);
endmodule