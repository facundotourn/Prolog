
hombre(pedro) .
hombre(cacho).
hombre(manuel) .
hombre(arturo) .
mujer(maría).
padre(arturo, cacho).
padre(pedro, manuel).
padre(pedro, arturo).
padre(pedro, maría) .

niño(X,Y) :- padre(Y,X).
hijo(X,Y) :- niño(X,Y), hombre(X).
hija(X,Y) :- niño(X,Y), mujer(X).
hermano-o-hermana(X,Y) :- padre(Z,X), padre(Z,Y), not(X=Y).
hermano(X,Y) :- padre(Z,X), padre(Z,Y), not(X=Y), hombre(X).
hermana(X,Y) :- padre(Z,X), padre(Z,Y), not(X=Y), mujer(X).










