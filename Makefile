all:
	ocamlfind opt -package core_kernel -g -linkpkg mocml.ml -o test
	./test
