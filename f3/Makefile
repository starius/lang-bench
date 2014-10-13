all: f3.exe shedskin/f3

f3.exe: f3.c
	clang -O3 $< -o $@

shedskin/f3: f3.py
	mkdir -p shedskin
	cd shedskin && cp ../f3.py . && shedskin f3.py && make

.PHONY: all
