//module MUX(
// input i0,
// input i1,
// input i2,
// input i3,
// input s0,
// input s1,
// output d0 );


// wire s0_n;
// wire s1_n;
// not not0( s0_n, s0 );
// not not1( s1_n, s1 );

// wire as,bs,cs,ds;
// and and0(as,i0,s1,s0);
// and and1(bs,i1,s1,s0_n);
// and and2(cs,i2,s1_n,s0);
// and and3(ds,i3,s1_n,s0_n);

// or or3(d0,as,bs,cs,ds);
//endmodule


module MUX( input i0, i1, i2, i3,
 input s0, s1,
 output d0 );


 reg out = 0;
 assign d0 = out ;
 always @ (*)
 begin
 if (s0 == 0 && s1 ==0) out =i3;
 else if (s0 == 1 && s1 ==0) out =i2;
 else if (s0 == 0 && s1 ==1) out =i1;
 else if (s0 == 1 && s1 ==1) out =i0;


 end
endmodule