ejercicio1 x lista =
	if (length [y | y <- lista, x `mod` y == 0 ]) == (length lista)
	then x 
	else ejercicio1 (x+1) lista


	
isPrime x = not $ any divisible $ takeWhile notTooBig [2..] where
     divisible y = x `mod`y == 0
     notTooBig y = y*y <= x	

ejercicio2 x 10001 = x
ejercicio2 x y = if isPrime x then ejercicio2 x+1 y+1 else ejercicio2 x+1 y


