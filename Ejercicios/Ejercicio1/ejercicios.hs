fact 1 = 1
fact x = x * fact(x-1)
maximum [] = -1
maximum list = max (tail list) (head list)
			   where max list current
					 | (length list) == 0 = current
					 | (head list) > current = max (tail list)(head list)
					 | otherwise = max(tail list) current
					 
bigger a b = if  a > b 
			   then a 
			   else b

smaller a b = if  a < b 
				then a 
				else b
maximo [] = -1
maximo (a:[]) = a
maximo (a:b:c) = if c == []
				 then bigger(a,b)
				 else maximo([bigger(a,b)]++c)

minimo [] = -1
minimo (a:[]) = a
minimo (a:b:c) = if c == []
				 then smaller(a,b)
				 else minimo([smaller(a,b)]++c)

maxmin lista = (minimo lista, maximo lista)