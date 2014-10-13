
function logcmd {
    echo $@
    time $@
}

function bench {
    cd $1
    make
    logcmd ./$1.exe
    logcmd luajit $1.lua
    logcmd nodejs $1.js
}

bench f3

