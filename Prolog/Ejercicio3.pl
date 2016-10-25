natural(0,0).
natural(suc(X),N):- natural(X,S),N is S+1.

tam([],0).
tam([_|T],F):-tam(T,F1), F is F1+1.

isEmpty([],true).

isLast([],false).
isLast([H|[]],H).
isLast([_|T],S):- isLast(T,S).

agrega([],Y,Y).
agrega([H|T],Y,[H|Z]):- agrega(T,Y,Z).

prueba(A,B):- A = B.

elimina(_,[],[]).
elimina(X,[X|T],S):- elimina(X,T,S).
elimina(X,[H|T],[H|T2]):-X\=H, elimina(X, T, T2).
