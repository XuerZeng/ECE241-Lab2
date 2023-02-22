
module mux2to1 (x,y,s,m);

    input x,y,s;
    output m;
    wire w1,w2,w3;

    v7404 u1 (.pin1(s), .pin2(w1));
    v7408 u2 (.pin1(x),.pin2(w1), .pin3(w3), .pin4(s), .pin5(y), .pin6(w2));
    v7432 u3 (.pin1(w2), .pin2(w3), .pin3(m));
endmodule

module v7404(pin1,pin3,pin5,pin7,pin9,pin11,pin13,pin2,pin4,pin6,pin8,pin10,pin12);

   input pin1, pin3, pin5, pin7,pin9,pin11,pin13;
   output pin2,pin4,pin6,pin8,pin10,pin12;
   assign pin2 = ~pin1;
   assign pin4 = ~pin3;
   assign pin6 = ~pin5;
   assign pin12 = ~pin13;
   assign pin10 = ~pin11;
   assign pin8 = ~pin9;
endmodule

module v7408(pin1,pin3,pin5,pin7,pin9,pin11,pin13,pin2,pin4,pin6,pin8,pin10,pin12);
   input pin1,pin2,pin4,pin5,pin9,pin10,pin12,pin13,pin7;
   output pin3,pin6,pin11,pin8;
   assign pin3 = pin1 & pin2;
   assign pin6 = pin4 & pin5;
   assign pin11 = pin13 & pin12;
   assign pin8 = pin10 & pin9;
endmodule

module v7432(pin1,pin3,pin5,pin7,pin9,pin11,pin13,pin2,pin4,pin6,pin8,pin10,pin12);
   input pin1,pin2,pin4,pin5,pin9,pin10,pin12,pin13,pin7;
   output pin3,pin6,pin11,pin8;
   assign pin3 = pin1 | pin2;
   assign pin6 = pin4 | pin5;
   assign pin11 = pin13 | pin12;
   assign pin8 = pin10 | pin9;
endmodule

