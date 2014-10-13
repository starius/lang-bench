
function logcmd {
    echo
    echo '=== ' $@ ' ==='
    time $@
}

function bench {
    cd $1
    make
    logcmd ./$1.exe
    logcmd ./shedskin/$1
    logcmd luajit $1.lua
    logcmd nodejs $1.js
    logcmd pypy $1.py
}

bench f3

