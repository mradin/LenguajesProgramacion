%Primer Ejercicio%
palabra("this","ingles").
palabra("is","ingles").
palabra("an","ingles").
palabra("example","ingles").
palabra("de","espanol").
palabra("como","espanol").
palabra("funciona","espanol").
palabra("my","espanol").
palabra("program","ingles").

traductor([],_,_).
traductor([H|T],X,Y):-palabra(H,Z), Z == "ingles",traductor(T,X1,Y),append([H],X1,X).
traductor([H|T],X,Y):-palabra(H,Z), Z == "espanol",traductor(T,X,Y1),append([H],Y1,Y).

%Segundo Ejercicio%
fibo(0,0,[0]).
fibo(1,1,[1]).
fibo(X,_,[Y2,Y1|T]):- X > 1, X2 is X-2,fibo(X2,Y2,T),X1 is X-1, fibo(X1,Y1,T).
