fact 1 sol = sol
fact x sol = fact (x-1) (x*sol)

smaller a b = if  a < b 
				then a 
				else b

minimo [] = -1
minimo (a:[]) = a
minimo (a:b:c) = if c == []
				 then smaller(a b)
				 else minimo([smaller(a b)]++c)

ins_sort [] _ = []
ins_sort (a:[]) _= [a]
ins_sort (a:b:c) x = if a > b then ins_sort c x++[b]++[a] else ins_sort c x++[a]++[b]

insertionSort [] = []
insertionSort (h:[]) = [h]
insertionSort (h:t) = let insert num [] = [num]
						  insert num (h:t) = if num > h
											 then [h] ++ (insert num t)
											 else [num] ++ [h] ++ t
					  in 
						  insert h (insertionSort t

quickSort [] = []
quickSort (h:t) = let left = [x | x <- t, x < h]
				      right = [x | x <- t, x>=h]
				  in 
				     quickSort left ++ [h] ++ quickSort right
					 
raiz x = raizI(1,(1+x)/2,x)
raizI (x,i,n) = if x == 1 then x else raizI((x+h/x)/z,(i+n/i)/z,n)
					  
					  
					  
					  