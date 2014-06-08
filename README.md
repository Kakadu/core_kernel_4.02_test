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
gdb says:
````
Starting program: /media/mand/prog/ocaml/core_kernel_4.02_test/./test 
warning: no loadable sections found in added symbol-file system-supplied DSO at 0x7ffff7ffa000
warning: Could not load shared library symbols for linux-vdso.so.1.
Do you need "set solib-search-path" or "set sysroot"?
Fatal error: exception (Invalid_argument Gc.finalise)
Called from file "lib/core_map.ml", line 209, characters 12-40
[Inferior 1 (process 19887) exited with code 02]
````
