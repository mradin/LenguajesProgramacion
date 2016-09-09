fibon 0 = 0
fibon 1 = 1
fibon n = fibon(n-1) + fibon(n-2)


palindromo n = (show n) == reverse(show n)

secuencia 0 0 = 0
secuencia x 0 = secuencia x-1 99
secuencia x y = if palindromo x*y then []++x++y else secuencia (x) (y-1)