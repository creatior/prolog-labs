hogwarts(harry_potter, 1).
hogwarts(ron_weasley, 1).
hogwarts(hermione_granger, 1).
hogwarts(albus_dumbledore, 2).
hogwarts(severus_snape, 2).
hogwarts(lucius_malfoy, 0).
hogwarts(draco_malfoy, 1).
hogwarts(minerva_mcgonagall, 2).

faculty(harry_potter, 1).
faculty(ron_weasley, 1).
faculty(hermione_granger, 1).
faculty(draco_malfoy, 0).
faculty(albus_dumbledore, 1).
faculty(severus_snape, 0).
faculty(lucius_malfoy, 0).
faculty(minerva_mcgonagall, 1).

blood(harry_potter, 2).
blood(ron_weasley, 1).
blood(hermione_granger, 3).
blood(draco_malfoy, 1).
blood(albus_dumbledore, 2).
blood(severus_snape, 2).
blood(lucius_malfoy, 1).
blood(minerva_mcgonagall, 2).

order(harry_potter, 1).
order(ron_weasley, 1).
order(hermione_granger, 1).
order(draco_malfoy, 0).
order(albus_dumbledore, 1).
order(severus_snape, 1).
order(lucius_malfoy, 0).
order(minerva_mcgonagall, 1).

death_eater(harry_potter, 0).
death_eater(ron_weasley, 0).
death_eater(hermione_granger, 0).
death_eater(draco_malfoy, 1).
death_eater(albus_dumbledore, 0).
death_eater(severus_snape, 1).
death_eater(lucius_malfoy, 1).
death_eater(minerva_mcgonagall, 0).

gender(harry_potter, 1).
gender(ron_weasley, 1).
gender(hermione_granger, 0).
gender(draco_malfoy, 1).
gender(albus_dumbledore, 1).
gender(severus_snape, 1).
gender(minerva_mcgonagall, 0).
gender(lucius_malfoy, 1).

question1(X1):- write("Is the character a student or teacher at Hogwarts?"), nl,
                write("1. Yes (student)"), nl,
                write("2. Yes (teacher)"), nl,
                write("0. No"), nl,
                read(X1).

question2(X2):- write("Does the character belong to Gryffindor house?"), nl,
                write("1. Yes"), nl,
                write("0. No"), nl,
                read(X2).

question3(X3):- write("Is the character pure-blood?"), nl,
                write("1. Yes (pure-blood)"), nl,
                write("2. No (half-blood)"), nl,
                write("3. No (muggle-born)"), nl,
                read(X3).

question4(X4):- write("Is the character a member of the Order of the Phoenix?"), nl,
                write("1. Yes"), nl,
                write("0. No"), nl,
                read(X4).

question5(X5):- write("Is the character a Death Eater?"), nl,
                write("1. Yes"), nl,
                write("0. No"), nl,
                read(X5).

question6(X6):- write("Is the character male?"), nl,
                write("1. Yes"), nl,
                write("0. No"), nl,
                read(X6).

pr :-
    question1(X1), question2(X2), question3(X3),
    question4(X4), question5(X5), question6(X6),
    hogwarts(Name, X1), faculty(Name, X2), blood(Name, X3),
    order(Name, X4), death_eater(Name, X5), gender(Name, X6),
    write("Your character: "), write(Name), nl.