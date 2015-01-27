cmpsum::Int->Int->Int->Int
cmpsum i j k
    | i + j == k = 1
    | otherwise = 0

next i j 1001 acc = next i (j+1) 1 acc
next i 1001 k acc = next (i+1) 1 k acc
next 1001 _ _ acc = acc
next i j k acc = next i j (k+1) (cmpsum i j k + acc)

main = print $! next 1 1 1 0

