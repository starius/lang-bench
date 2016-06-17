all: test.exe shedskin/test test-d.exe test-gcj.exe test.class test-ghc.exe \
	go/bin/f3

test.exe: test.c
	clang -O3 $< -o $@

shedskin/test: test.py
	mkdir -p shedskin
	cd shedskin && cp ../test.py . && shedskin test.py && make

test-d.exe: test.d
	gdc -O3 $< -o $@

test-gcj.exe: test.java
	gcj -O3 --main=test $< -o $@

test.class: test.java
	javac $<

test-ghc.exe: test.hs
	ghc -O3 $< -o $@

go/bin/f3: go/src/f3/main.go
	GOPATH=$(shell pwd)/go go install f3

.PHONY: all
