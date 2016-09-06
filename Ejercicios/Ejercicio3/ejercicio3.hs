suma a b = a + b

operacion _ [] [] = []
operacion f (hx:tx) (hy:ty) = [f hx hy] ++ operacion f tx ty
operacion _ _ _ = []


mayor x = if x > 5 then x else []

let f n lista = [x | x <- lista, x `f` n]

