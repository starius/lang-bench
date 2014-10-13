
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
    logcmd luajit $1/test.lua
    logcmd nodejs $1/test.js
    logcmd pypy $1/test.py
}

bench f3

