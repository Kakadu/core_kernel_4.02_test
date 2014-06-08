all:
	ocamlfind opt -package core_kernel -linkpkg mocml.ml -o test
	./test
