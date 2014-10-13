cc = 0
for i in xrange(1, 1001):
    for j in xrange(1, 1001):
        for k in xrange(1, 1001):
            if i + j == k:
                cc = cc + 1
print(cc)

