len [] = 0
len (x:xs) = 1 + len xs

sort_by []     = []
sort_by (x:xs) = sort_by [a | a <- xs , len a < len x]
                 ++ x ++
                 sort_by [a | a <- xs , len a >= len x]
