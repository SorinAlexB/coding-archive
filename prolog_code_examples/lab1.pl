/**
* Facts - The fact is a predicate that is true 
* Rules - Rules are extinctions of facts that contain conditional clauses
*/

program :- write("n1="), read(X), write("n2="), read(Y),
mai_mare(X,Y,Z), write(Z), nl.
mai_mare(X,X,X).
mai_mare(X,Y,Y):-X<Y.
mai_mare(X,Y,X):-Y<X.