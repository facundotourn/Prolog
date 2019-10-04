
hombre(pedro) .
hombre(cacho).
hombre(manuel) .
hombre(arturo) .
mujer(mar�a).
padre(arturo, cacho).
padre(pedro, manuel).
padre(pedro, arturo).
padre(pedro, mar�a) .

ni�o(X,Y) :- padre(Y,X).
hijo(X,Y) :- ni�o(X,Y), hombre(X).
hija(X,Y) :- ni�o(X,Y), mujer(X).
hermano-o-hermana(X,Y) :- padre(Z,X), padre(Z,Y), not(X=Y).
hermano(X,Y) :- padre(Z,X), padre(Z,Y), not(X=Y), hombre(X).
hermana(X,Y) :- padre(Z,X), padre(Z,Y), not(X=Y), mujer(X).










