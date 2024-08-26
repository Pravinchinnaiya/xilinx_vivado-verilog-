module mux(input s0,s1,s2,t0,t1,t3,output out);
wire s0n,s1n,n0,n1,n2,n3;
not(s0n,s0);
not(s1n,s1);
and(n0,t0,s0n,s1n);
and(n1,t1,s0,s1n);
and(n2,t2,s1,s0n);
and(n3,t3,s0,s1);
or(out,n0,n1,n2,n3);
endmodule