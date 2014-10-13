cmpsum i j k =
    if i + j == k then 1 else 0

main = print (sum([cmpsum i j k |
    i <- [1..1000], j <- [1..1000], k <- [1..1000]]))

