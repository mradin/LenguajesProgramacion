suc(X,Y):-Y is X+1.

replace(X,Y,X,Y).
replace(_,_,Z,Z).

myMapList(_,[],[]).
myMapList(F,[H|T],[R|T2]):-F=..[Func|Params],append(Params,[H,R],NewParams),Pred=..[Func|NewParams],call(Pred),myMapList(F,T,T2),!.

