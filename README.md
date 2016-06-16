# Compare performance programming and scripting languages

Install dependencies (Debian Wheezy):

```
echo 'deb http://ftp.debian.org/debian/ wheezy-backports main' \
    | sudo tee /etc/apt/sources.list.d/wheezy-backports

sudo aptitude install luajit shedskin openjdk-6-jdk \
    gcj-jre gcj-jdk pypy ruby perl clang make gdc ghc
```

Run benchmark:

```
./bench.sh
```

Output on my machine
(Intel(R) Core(TM) i5-3317U CPU @ 1.70GHz):

```
===  ./f3/test.exe  ===
499500

real    0m0.718s
user    0m0.712s
sys     0m0.000s

===  ./f3/shedskin/test  ===
499500

real    0m0.803s
user    0m0.800s
sys     0m0.004s

===  java test  ===
499500

real    0m1.290s
user    0m1.284s
sys     0m0.008s

===  ./f3/test-gcj.exe  ===
499500

real    0m1.226s
user    0m1.192s
sys     0m0.028s

===  ./f3/test-d.exe  ===
499500

real    0m1.181s
user    0m1.172s
sys     0m0.004s

===  luajit f3/test.lua  ===
499500

real    0m1.599s
user    0m1.592s
sys     0m0.000s

===  nodejs f3/test.js  ===
499500

real    0m2.116s
user    0m2.116s
sys     0m0.008s

===  pypy f3/test.py  ===
499500

real    0m5.739s
user    0m5.692s
sys     0m0.036s

===  f3/test-ghc.exe  ===
499500

real    0m1.999s
user    0m1.992s
sys     0m0.000s

===  perl f3/test.pl  ===
499500
real    1m28.516s
user    1m28.238s
sys     0m0.152s

===  ruby f3/test.rb  ===
499500

real    1m28.689s
user    1m28.458s
sys     0m0.104s
```
