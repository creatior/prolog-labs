man(anatoliy).
man(dimitriy).
man(vlad).
man(kirill).
man(mefodiy).
woman(vladina).
woman(galya).
woman(sveta).
woman(valentina).
woman(zoya).
woman(katrin).
child(dimitriy, anatoliy).
child(dimitriy, galya).
child(vladina, anatoliy).
child(vladina, galya).
child(valentina, anatoliy).
child(valentina, galya).
child(kirill, dimitriy).
child(mefodiy, dimitriy).
child(kirill, sveta).
child(mefodiy, sveta).
child(zoya, vlad).
child(zoya, vladina).
child(katrin, vlad).
child(katrin, vladina).

men(X):-man(X).
women(X):-woman(X).

parent(X,Y):-child(Y,X).

children(X) :-
	child(Y, X), print(Y), nl, fail.

mother(X, Y) :-
	woman(X),
	child(Y, X).

mother(X) :-
	mother(Y, X), print(Y).

brother(X, Y) :-
	man(X),
	child(X, P),
	child(Y, P),
	X \= Y.

sister(X, Y) :-
	woman(X),
	child(X, P),
	child(Y, P),
	X \= Y.

brothers(X) :- 
	setof(Y, brother(X, Y), Bros), print(Bros).

b_s(X, Y) :-
	(
		brother(X, Y), brother(Y, X);
		brother(X, Y), sister(Y, X);
		sister(X, Y), brother(Y, X);
		sister(X, Y), sister(Y, X)
	);
	X \= Y.

b_s(X) :-
	setof(Y, b_s(Y, X), Siblings), print(Siblings).
	
father(X, Y) :-
	man(X),
	child(Y, X).

father(X) :-
	father(Y, X), print(Y).

wife(X, Y) :-
	woman(X),
	child(P, X),
	child(P, Y),
	X \= Y.

wife(X) :-
	wife(Y, X), print(Y).

grand_da(X, Y) :-
	woman(X),
	child(X, P),
	child(P, Y).

grand_dats(X) :-
	grand_da(Y, X), print(Y), nl, fail.

grand_pa_and_da(X, Y) :-
	grand_da(X, Y);
	grand_da(Y, X).

aunt(X, Y) :-
	woman(X),
	child(Y, P),
	sister(X, P).

aunt(X) :-
	setof(Y, aunt(Y, X), Aunts), print(Aunts).