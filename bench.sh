
function logcmd {
    echo
    echo '=== ' $@ ' ==='
    time $@
}

function bench {
    cd $1
    make
    cd ..
    logcmd ./$1/test.exe
    logcmd ./$1/shedskin/test
    logcmd ./$1/test-d.exe
    logcmd luajit $1/test.lua
    logcmd nodejs $1/test.js
    logcmd pypy $1/test.py
    logcmd perl $1/test.pl
    logcmd ruby $1/test.rb
}

bench f3

