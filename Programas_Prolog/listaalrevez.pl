tamano([],0).
tamano([X|Y],N):- tamano(Y,N1), N is N1+1.

imprimir_lista([]).

imprimir_lista([X|Y]):-imprimir_lista(Y), write(X), nl.