invierte([],L,L).
invierte([X|Xs],Y,L):-invierte(Xs,[X|Y],L).