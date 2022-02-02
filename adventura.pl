start_state(zacatek).


next_state(zacatek,doleva,doleva1).
next_state(zacatek,doprava,doprava1).
next_state(zacatek,rovne,prvnikrizovatka).

next_state(doleva1,doleva,zacatek).
next_state(doleva1,doprava,zacatek).
next_state(doleva1,rovne,zacatek).

next_state(doprava1,doleva,zacatek).
next_state(doprava1,doprava,zacatek).
next_state(doprava1,rovne,zacatek).

next_state(prvnikrizovatka,doleva,doleva2).
next_state(prvnikrizovatka,doprava,doprava2).
next_state(prvnikrizovatka,rovne,rovne1).

next_state(doleva2,a,souboj).
next_state(doleva2,b,smrt).
next_state(doleva2,c,smrt).

next_state(doprava2,rovne,most1).
next_state(doprava2,doleva,doprava2).
next_state(doprava2,zpatky,doprava2).
next_state(doprava2,doprava,doprava2).


next_state(rovne1,a,prvnikrizovatka).
next_state(rovne1,b,prvnikrizovatka).
next_state(rovne1,c,prvnikrizovatka).
next_state(rovne1,d,prvnikrizovatka).

next_state(souboj,a,prvnikrizovatka).
next_state(souboj,b,prvnikrizovatka).
next_state(souboj,c,smrt).
next_state(souboj,d,smrt).


next_state(most1,a,most2).
next_state(most1,b,most1).
next_state(most1,c,most1).
next_state(most1,d,most1).

next_state(most2,a,souboj2).
next_state(most2,b,smrt).
next_state(most2,c,most2).
next_state(most2,d,most1).

next_state(souboj2,a,hra_ukoncena_s_dykou):-
      stored_answer(dyka,yes).

next_state(souboj2,a,hra_ukoncena):-
     stored_answer(dyka,no).

next_state(souboj2,b,smrt).

next_state(souboj2,c,smrt).

next_state(souboj2,d,smrt).


display_intro :-
 write('Z úplné tmy se pomalu vynoří silueta.'),nl,
 write('Všímáš si amfory a měsíce, který se zrcadlí v malé tůni pod nohami sochy.'),nl,
 write('Kromě tichého proudu vody tekoucího z amfory je všude kolem hrobové ticho.'),nl,
 write('Do plného vědomí tě probudí až vlastní třes.'),nl, 
 write('Je zima.'),nl,
 write('Rychle se zvedáš, ale ani po pár rychlých krocích si nejsi schopna vybavit kdo jsi a hlavně kde jsi.'),nl, 
 write('Slabý závan větru ti k nohám přinese kousek papíru.'),nl, 
 write('Jsou to noviny.'),nl, 
 write('Datum je dobře čitelné, ale stejně nevíš jestli jsou články straré dva dny nebo deset let.'),nl, 
 write('Zaujme tě nadpis: „Již pátá oběť.'),nl, 
 write('Společným prvkem je znamení zvěrokruhu“.'),nl,
 write('Zaujme tě trojúhelník s dvěma úsečkami, rychle načmáraný na podstavci sochy.'),nl, 
 write('Libra – váhy.'),nl, 
 write('Najednou obzor prořízne kužel světla.'),nl, 
 write('Trhneš sebou a rychle se schováš za sochu.'),nl, 
 write('„...vrah vždy útočí za jasné noci blízko míst s tekoucí vodou…“.'),nl, 
 write('Zvuk dopadající vody je pryč.'),nl, 
 write('Amfora vyschla a stejně tak i tvé hrdlo.'),nl, 
 write('Slyšíš kroky.'),nl, 
 write('Kužel světla se prudce otočí a zamíří ti přímo do obličeje.'),nl,nl.

initialize :-
 asserta(stored_answer(dyka,yes)),
 asserta(stored_answer(dyka,no)).

show_state(zacatek):-
    write('V panice se zvedneš a začneš utíkat.'),nl,
    write('Jsou před tebou 3 cesty: jedna vlevo, jedna vpravo a jedna uprostřed.'),nl,nl,
    write('Kam chceš jít?'),nl,
    write('Doleva – nízkým živým plotem připomínajícím bludiště.'),nl,
    write('Doprava – podél rozpadlé cihlové zídky'),nl,
    write('Rovně - nezpevněnou cestou lemovanou stromy.').

show_state(doleva1):-
    write('Běžíš zmateně po úské cestě, kroky jsou pryč, světlo také.'),nl,
    write('Otačíš se, nikdo.'),nl,
    write('Nemůže popadnout dech a musíš zastavit.'),nl,
    write('Před sebou v dálce vidíš sochu s amforou.'),nl,nl,
    write('V panice sis ani nevšimla, že si opsala kruh.'),nl,
    write('Jsi na stejném místě, odkud si ve strachu utekla.'),nl,
    write('Kam chceš dál jít?'),nl,
    write('Doleva.'),nl,
    write('Doprava.'),nl, 
    write('Rovně.'),nl,nl.

show_state(doprava1):-
    write('Běžíš zmateně po úské cestě, kroky jsou pryč, světlo také.'),nl,
    write('Otačíš se.'),nl,
    write('Nikdo.'),nl,
    write('Nemůže popadnout dech a musíš zastavit.'),nl,
    write('Před sebou v dálce vidíš sochu s amforou.'),nl,nl,
    write('V panice sis ani nevšimla, že si opsala kruh.'),nl,
    write('Jsi na stejném místě, odkud si ve strachu utekla.'),nl,
    write('Kam chceš dál jít?'),nl,
    write('Doleva.'),nl,
    write('Doprava.'),nl,
    write('Rovně.'),nl,nl.

show_state(prvnikrizovatka):-
    write('Běžíš rovně, přes měsíc se líně převalí jemné mračno.'),nl,
    write('Hvězdy jsou pryč a zvedá se vítr.'),nl,
    write('Klepeš se zimou.'),nl,
    write('Ze tmy se vynoří další rozcestí.'),nl,
    write('Kam chceš dál jít?'),nl,
    write('Doleva.'),nl,
    write('Doprava.'),nl,
    write('Rovně.'),nl,nl.

show_state(doleva2):-
    write('Po pár krocích si všimneš letmého pohybu ve tmě.'),nl,
    write('Nedokážeš se ani pohnout.'),nl,
    write('Před tebou se zjeví postava.'),nl,
    write('Co uděláš?'),nl,
    write('(a) Jako zázrakem nahmatáš v kapse nůž a výhružně ho vytáhneš směrem ke stínu.'),nl,
    write('(b) Mlčky čekáš co se stane, nehýbeš se'),nl,
    write('(c) Začneš prosit o život'),nl,nl.

show_state(doprava2):-
    write('Porost kolem cesty houstne, již nevíš odkud si vyběhla, víš jen že musíš pryč.'),nl,
    write('Opět si dorazila na křižovatku.'),nl,
    write('Kam půjdeš?'),nl,nl,
    write('Rovně.'),nl,
    write('Doleva.'),nl,
    write('Zpátky.'),nl,
    write('Doprava.'),nl.

show_state(souboj):-
    write('Postava náhle uděla rychle pár kroků a nebezpečně se začně blížit tvým směrem.'),nl,nl,
    write('V její ruce zahlédneš nějaký předmět.'),nl, 
    write('Rozhodneš se bránít a bodneš nožem.'),nl,nl,
    write('Kam?'),nl,
    write('Krk.'),nl,
    write('Břicho.'),nl,
    write('Hlava.'),nl,
    write('Noha.'),nl.

show_state(rovne1):-
    write('Všimneš si odlesku – v trávě u cesty je v koženém pouzdře dlouhá lesklá dýka.'),nl,
    write('Co uděláš?'),nl,
    write('(a) Vezmeš si ji.'),nl,
    write('(b) Nic, vrátíš se zpátky.'),nl,
    write('(c) Podíváš se, co je na něm napsané.'),nl,nl.

show_state(most1):-
    write('Ze tmy se vynoří dřevěná konstrukce se střechou.'),nl,
    write('Slyšíš šumění vody.'),nl,
    write('Před tebou je most.'),nl,
    write('(a) Rychle přes most přeběhneš.'),nl,
    write('(b) Podíváš se kolem sebe, zda tě někdo nesleduje.'),nl,
    write('(c) Opatrně vlezeš pod most a podíváš se, jestli se pod ním někdo neschovává.'),nl,
    write('(d) Chvíli stojíš a čekáš, zda se někdo neobjeví.'),nl,nl.

show_state(most2):-
    write('Přesně v půlce mostě najednou uslyšíš známe kroky. Stín se opět blíží.'),nl,
    write('Co udeláš?'),nl,
    write('(a) Rychle přeběhneš most a schováš se za nejbližší strom.'),nl,
    write('(b) Odhodlaně vyčkáš, až se postava přiblíží.'),nl,
    write('(c) Podíváš se, kdo je za tebou.'),nl,
    write('(d) Začneš řvát.'),nl,nl.

show_state(souboj2):-
    write('Vidíš siluetu postavy.'),nl,
    write('V ruce se bleskne nůž.'),nl,
    write('Slyšíš, jak každý jeho krok jemně drtí spadané listy.'),nl,nl,
    write('Co uděláš?'),nl,
    write('(a) Rozhodneš se zaútočit.'),nl,
    write('(b) Nehybně čekáš a doufáš, že si tě nevšimne.'),nl,
    write('(c) Rychle se rozeběhneš přes most.'),nl,
    write('(d) Začneš řvát a doufáš, že ho do odradí.'),nl,nl.

show_state(hra_ukoncena_s_dykou):-
    write('V zoufalém pokusu bodneš několikrát rychle směrem k útočísímu stínu.'),nl,
    write('Zasáhla si.'),nl,
    write('Proud teplé krve ti máčí rukávy.'),nl,
    write('Postava se mlčky bortí k zemi.'),nl,
    write('Zvítězila si.'),nl.
	
show_state(hra_ukoncena):-
    write('V zoufalém pokusu bodneš několikrát rychle směrem k útočísímu stínu.'),nl,
    write('Zasáhla si.'),nl,
    write('Proud teplé krve ti máčí rukávy.'),nl,
    write('Postava se mlčky bortí k zemi.'),nl,
    write('Zvítězila si.'),nl.

show_state(smrt):-
    write('Stín se v krátkem okamžiku zhmotnil.'),nl,
    write('Souhvězdí vah na tváři vraha je poslední věc, kterou uvidiš, než se mrtvá zbortíš do tratoliště vlastní krve.'),nl,
    write('Jsi mrtvá.'),nl.



get_choice(hra_ukoncena_s_dykou,q).
get_choice(smrt,q).


show_transition(zacatek,doleva) :-
 write('Vybrala si cestu vlevo.'),nl,nl.

show_transition(zacatek,doprava) :-
 write('Vybrala jsi cestu vpravo.'),nl,nl.

show_transition(zacatek,rovne) :-
 write('Jdeš rovně.'),nl,nl.


show_transition(prvnikrizovatka,doleva) :-
 write('Vybrala si cestu vlevo.'),nl,nl.

show_transition(prvnikrizovatka,doprava) :-
 write('Vybrala jsi cestu vpravo.'),nl,nl.

show_transition(prvnikrizovatka,rovne) :-
 write('Jdeš rovně.'),nl,nl.

show_transition(doleva1,doleva) :-
 write('Vybrala si cestu vlevo.'),nl,nl.

show_transition(doleva1,doprava) :-
 write('Vybrala jsi cestu vpravo.'),nl,nl.

show_transition(doleva1,rovne) :-
 write('Jdeš rovně.'),nl,nl.


show_transition(doleva2,a) :-
 write('Rozhodla ses, že zaútočíš.'),nl,nl.

show_transition(doleva2,b) :-
 write('Mlčky čekáš, co se stane.'),nl,nl.

show_transition(doleva2,c) :-
 write('Prosíš o život.'),nl,nl.

show_transition(doprava1,doleva) :-
 write('Jdeš doleva.'),nl,nl.

show_transition(doprava1,doprava) :-
 write('Jdeš doprava.'),nl,nl.

show_transition(doprava1,rovne) :-
 write('Jdeš rovně.'),nl,nl.

show_transition(doprava2,rovne) :-
 write('Jdeš rovně.'),nl,nl.

show_transition(doprava2,doleva) :-
 write('Jdeš doleva.'),nl,nl.

show_transition(doprava2,zpatky) :-
 write('Jdeš zpátky na poslední křižovatku.'),nl,nl.

show_transition(doprava2,doprava) :-
 write('Jdeš doprava.'),nl,nl.


show_transition(rovne1,a) :-
 write('Vzal jsi dýku.'),nl,
 retract(stored_answer(dyka,no)),
 asserta(stored_answer(dyka,yes)).

show_transition(rovne1,b) :-
 write('Vracíš se zpátky.'),nl,nl.

show_transition(rovne1,c) :-
 write('Na střence dýky jsou malými rubíny zobrazeny souhvězdí zvěrokruhu.'),nl,
 write('Poslední, znamení, váhy, není dokončeno, chybí vsadit posledních pár kamenů.'),nl,nl.

show_transition(rovne1,d) :-
 write('You think about the choices'),nl,
 write('that you have made in life.'),nl,
 write('You realize life is great'),nl,
 write('and you shouldnt think too much'),nl,nl.


show_transition(souboj,krk) :-
 write('Po rychlé ráně nožem se postava hroutí k zemi.'),nl,nl.

show_transition(souboj,bricho) :-
 write('Po rychlé ráně nožem se postava hroutí k zemi.'),nl,nl.

show_transition(souboj,hlava) :-
 write('Napřáhneš se, ale neznámý stín je rychlejší.'),nl,
 write('Chytá tvojí ruku a najednou cítíš proud teplé tekutiny řinoucí se z tvého břicha.'),nl,
 write('Kacíš se na zem.'),nl,
 write('Poslední věc, co zahlédneš, je tvář muže se souhvězdím váhy na tváři.'),nl,
 write('Umíráš.'),nl,
 write('Umíráš.'),nl,nl.

show_transition(souboj,noha) :-
 write('Napřáhneš se, ale neznámý stín je rychlejší.'),nl,
 write('Chytá tvojí ruku a najednou cítíš proud teplé tekutiny řinoucí se z tvého břicha.'),nl,
 write('Kacíš se na zem.'),nl,
 write('Poslední věc, co zahlédneš, je tvář muže se souhvězdím váhy na tváři.'),nl,
 write('Umíráš.'),nl,nl.

show_transition(most1,a) :-
 write('Vybrala jsi možnost a.'),nl,nl.

show_transition(most1,b) :-
 write('Vybrala jsi možnost b.'),nl,nl.

show_transition(most1,c) :-
 write('Vybrala jsi možnost c.'),nl,nl.

show_transition(most1,d) :-
 write('Vybrala jsi možnost d.'),nl,nl.

show_transition(most2,a) :-
 write('Vybrala jsi možnost a.'),nl,nl.

show_transition(most2,b) :-
 write('Vybrala jsi možnost b.'),nl,nl.

show_transition(most2,c) :-
 write('Vybrala jsi možnost c.'),nl,nl.

show_transition(most2,d) :-
 write('Vybrala jsi možnost d.'),nl,nl.

show_transition(souboj2,a) :-
 write('Rozhodla ses zaútočit.'),nl,nl.

show_transition(souboj2,b) :-
 write('Čekáš.'),nl,nl.

show_transition(souboj2,c) :-
 write('Rychle ses rozběhla.'),nl,nl.

show_transition(souboj2,d) :-
 write('Řveš.'),nl,nl.


go :-
intro,
start_state(X),
show_state(X),
get_choice(X,Y),
go_to_next_state(X,Y).

intro :-
display_intro,
clear_stored_answers,
initialize.

go_to_next_state(S1,Cin) :-
next_state(S1,Cin,S2),
show_transition(S1,Cin),
show_state(S2),
get_choice(S2,Cnew),
go_to_next_state(S2,Cnew).

go_to_next_state(S1,Cin) :-
\+ next_state(S1,Cin,_),
show_transition(S1,fail),
get_choice(S1,Cnew),
go_to_next_state(S1,Cnew).

:- discontiguous get_choice/2.

get_choice(_,C) :-
 write('Další vstup:'),
 write('(+ tečka)'),nl,
 read(C).


:- dynamic(stored_answer/2).

clear_stored_answers
 :- retract(stored_answer(_,_)),fail.
clear_stored_answers.
