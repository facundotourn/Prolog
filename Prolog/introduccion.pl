pais(argentina, 5).
pais(uruguay, 6).
pais(chile, 1).
pais(bolivia, 10).
pais(paraguay, 9).
pais(ecuador, 5).
pais(peru, 2).
pais(brasil, 4).

es_limitrofe(argentina,brasil).
es_limitrofe(argentina,uruguay).
es_limitrofe(argentina,chile).
es_limitrofe(argentina,paraguay).
es_limitrofe(argentina,bolivia).
% es_limitrofe(chile,argentina).
es_limitrofe(chile,peru).
es_limitrofe(chile,bolivia).
es_limitrofe(uruguay,brasil).
% es_limitrofe(uruguay,argentina).

limita_con(X, Y) :- es_limitrofe(X, Y); es_limitrofe(Y, X).

mayor_a(X, C, N) :- pais(X, C), C > N.

mayor_a_cheto(X, C, NUM) :- mayor_a(X,C,NUM), write(X), write(" es mayor a "), write(NUM), write(" ("), write(C), write(")."), nl, fail.

translimita_con(X, Y) :- limita_con(X, AUX), limita_con(Y, AUX), not(X = Y), not(limita_con(X, Y)).