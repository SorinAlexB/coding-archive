place(paul,X):-mancare(X),gust(X,bun).
gust(pizza,bun). gust(mere_verzi,rau).
mancare(mere_verzi).
mancare(pizza).

creste_cerere(mat_de_constructie).
creste_cerere(confectii).
creste_productie(confectii).
creste_pret(X):-creste_cerere(X), not(creste_productie(X)).