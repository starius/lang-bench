all: test.exe shedskin/test test-d.exe

test.exe: test.c
	clang -O3 $< -o $@

shedskin/test: test.py
	mkdir -p shedskin
	cd shedskin && cp ../test.py . && shedskin test.py && make

test-d.exe: test.d
	gdc -O3 $< -o $@

.PHONY: all
