
# "make all" builds the executable as well as the "printbig" library designed
# to test linking external code

.PHONY : all
all : moop.native

# "make test" runs the regression tests

.PHONY : test
test : 
	python3 testall.py


# "make moop.native" compiles the compiler
#
# The _tags file controls the operation of ocamlbuild, e.g., by including
# packages, enabling warnings
#
# See https://github.com/ocaml/ocamlbuild/blob/master/manual/manual.adoc

moop.native : parser.mly scanner.mll sast.ml semant.ml codegen.ml moop.ml
	opam exec -- \
	ocamlbuild -use-ocamlfind moop.native

# Anthony Friendly Toplevel make

moop.nnative : parser.mly scanner.mll  sast.ml semant.ml codegen.ml moop.ml
	opam exec -- \
	ocamlbuild -yaccflags --verbose -use-ocamlfind moop.native


# "make clean" removes all generated files

.PHONY : clean
clean :
	ocamlbuild -clean
	rm -rf testall.log ocamlllvm *.diff printbig.o 

# Anthony Broken keyboard friendly clean 
cleann :
	ocamlbuild -clean
	rm -rf testall.log ocamlllvm *.diff printbig.o


zip:
	zip -r moop.zip _tags Makefile ast.ml scanner.mll moop.ml README testall.py \
	parser.mly codegen.ml sast.ml semant.ml moop.py tests/
