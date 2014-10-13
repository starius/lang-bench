var cc = 0
for (var i = 1; i <= 1000; i++) {
    for (var j = 1; j <= 1000; j++) {
        for (var k = 1; k <= 1000; k++) {
            if (i + j === k) {
                cc += 1
            }
        }
    }
}
console.log(cc)
