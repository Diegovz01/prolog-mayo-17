transicion(a,b,1).
transicion(a,c,0).
transicion(b,c,1).
transicion(b,b,0).
transicion(c,d,0).
transicion(d,b,1).

estadofinal(b,final).
estadofinal(a,no_final).
estadofinal(c,no_final).
estadofinal(d,no_final).

evalua(E,[X|Y]):-transicion(E,R,X),nl,write(R),evalua(R,Y).
evalua(R,[]):-estadofinal(R,F),nl,write(F).