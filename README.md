core_kernel_4.02_test
=====================

Reproducing bug there. On 4.02 it says
````
➜  core_kernel_4.02_test git:(master) ✗ mkae
ocamlfind opt -package core_kernel -linkpkg mocml.ml -o test
./test
Fatal error: exception (Invalid_argument Gc.finalise)
Makefile:2: recipe for target 'all' failed
make: *** [all] Error 2
````
