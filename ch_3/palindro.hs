reverse_1 []     = []
reverse_1 (x:xs) = reverse_1 xs ++ [x]

palindro xs = xs ++ reverse_1 (xs)
