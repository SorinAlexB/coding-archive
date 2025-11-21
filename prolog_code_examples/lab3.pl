/**
* Lists in prolog are only homogeneous
*   [] -> empty list or null list
*   [X,Y,Z] -> list with the X,Y and Z variables
*   [[0,2,4],[1,3]] -> list of lists of numbers
*
* head -> the first element of the list
* tail -> the rest of the elements of the list -> always a list
*
*   e.g
*   ['a','b','c'] -> head is 'a' and tail is ['b', 'c']
*   Matching is done on heads and tails  like [H1|T1] and [H2|T2] here it will compare H1 with H2 and T1 with T2
* 
*  ! -> cut operator, it stops the backtracking process
*/

apartine(X,[X|_]):-!
apartine(X,[_|Y]):-apartine(X,Y).

ultim_elem(X,[X]):-!.
ultim_elem(X,[_|Y]):-ultim_elem(X,Y).

elem_k(1,[X|_],X):-!.
elem_k(K,[_|Y],Z):-K1=K-1,elem_k(K1,Y,Z).

nr_elem([],0).
nr_elem([_|X],N):-nr_elem(X,N1),N=N1+1.

concatenare([],X,X).
concatenare([H|X],Y,[H|Z]):-concatenare(X,Y,Z).

invers(X,Y):-inv(X,[],Y).
inv([],X,X).
inv([H|X],Y,Z):-inv(X,[H|Y],Z).

afis1([]):-!.
afis1([H|X]):-write(H), write(” “), afis1(X).
afis2([]):-!.
afis2([H|X]):-write(H), nl, afis2(X).
afis3([]):-!.
afis3([H|X]):-afis3(X), write(H), nl.
