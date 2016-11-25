insert(Num,empty,tree(Num,empty,empty)).
insert(Num,tree(Element,Left,Right), tree(Element, NewLeft, Right)) :- Num < Element, insert(Num,Left,NewLeft).
insert(Num,tree(Element,Left,Right), tree(Element, Left, NewRight)) :- Num >= Element, insert(Num,Right,NewRight).

fromList([],Tree,Tree).
fromList([H|T],empty,NewTree):- fromList(T,tree(H,empty,empty),NewTree).
fromList([H|T],tree(Element,Left,Right), NewTree2) :- insert(H,tree(Element,Left,Right), NewTree), fromList(T,NewTree,NewTree2).


postOrder(empty,[]).
postOrder(tree(Element,Left,Right), List) :- postOrder(Left, List2), postOrder(Right, List3), append(List2, List3, List4), append(List4,[Element],List).

preOrder(empty,[]).
preOrder(tree(Element,Left,Right),List):-preOrder(Left,List2),preOder(Right,List3),append([Element],List2,List4),append(List4,List3,List).

inOrder(empty,[]).
inOrder(tree(Element,Left,Right),List):-inOrder(Left,List2),inOrder(Right,List3),append(List2,[Element],List4),append(List4,List3,List).
