cc = 0
for i in 1..1000
    for j in 1..1000
        for k in 1..1000
            if i + j == k
                cc = cc + 1
            end
        end
    end
end
puts(cc)

