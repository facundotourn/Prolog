entrada(paella).
entrada(gazpacho).
entrada(consome).

carne(filete_de_cerdo).
carne(pollo_asado).

pescado(trucha).
pescado(bacalao).

postre(flan).
postre(helado).
postre(pastel).

bebida(vino).
bebida(cerveza).
bebida(agua_mineral).

menu(ENTRADA,PLATO,POSTRE,BEBIDA):-entrada(ENTRADA),(carne(PLATO);pescado(PLATO)),postre(POSTRE),bebida(BEBIDA).
