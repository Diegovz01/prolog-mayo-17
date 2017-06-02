padre(jose,osvaldo).
padre(jose,sergio).
padre(roberto,ofelia).
padre(roberto,andrea).
padre(osvaldo,diego).
padre(osvaldo,andres).
padre(osvaldo,natalia).

madre(dolores,osvaldo).
madre(dolores,sergio).
madre(maria,ofelia).
madre(maria,andrea).
madre(ofelia,diego).
madre(ofelia,natalia).
madre(ofelia,andres).


hermanos(Padre,Hijo):- padre(Hermano,Padre), padre(Hermano,Hijo), not(Padre=Hijo).

abuelo(Abuelo,Nieto):- (padre(Abuelo,Padre),padre(Padre,Nieto)); (padre(Abuelo,Padre),madre(Padre,Nieto)). 
abuela(Abuela,Nieto):- (madre(Abuela,Madre), madre(Madre,Nieto)); (madre(Abuela,Madre), padre(Madre,Nieto)).

sobrinos(Tios,Sobrinos):- (hermanos(Padre,Sobrinos), padre(Padre,Tios)); (hermanos(Padre,Sobrinos), madre(Padre,Tios)).

tios(Tios,Sobrinos):- sobrinos(Sobrinos,Tios).

nieto(Nieto,Abuelo):-padre(Abuelo,Padre), padre(Padre,Nieto).
nieto(Nieto,Abuelo):-madre(Abuelo,Padre), madre(Padre,Nieto). 

