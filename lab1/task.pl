man(anatoliy).
man(dimitriy).
man(vlad).
man(kirill).
man(mefodiy).
woman(vladina).
woman(galya).
woman(sveta).
woman(zoya).
woman(katrin).
child(dimitriy, anatoliy).
child(dimitriy, galya).
child(vladina, anatoliy).
child(vladina, galya).
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