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

menu(ENTRADA, PLATO, POSTRE) :- entrada(ENTRADA), (carne(PLATO); pescado(PLATO)), postre(POSTRE).
