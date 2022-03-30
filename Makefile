
# "make all" builds the executable as well as the "printbig" library designed
# to test linking external code

.PHONY : all
all : toplevel.native

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

toplevel.native : parser.mly scanner.mll sast.ml semant.ml codegen.ml toplevel.ml
	opam exec -- \
	ocamlbuild -use-ocamlfind toplevel.native

# Anthony Friendly Toplevel make

toplevel.nnative : parser.mly scanner.mll  sast.ml semant.ml codegen.ml toplevel.ml
	opam exec -- \
	ocamlbuild -yaccflags --verbose -use-ocamlfind toplevel.native

# "make clean" removes all generated files

.PHONY : clean
clean :
	ocamlbuild -clean
	rm -rf testall.log ocamlllvm *.diff printbig.o

# Anthony Broken keyboard friendly clean 
cleann :
	ocamlbuild -clean
	rm -rf testall.log ocamlllvm *.diff printbig.o

# Testing the "printbig" example

printbig : printbig.c
	cc -o printbig -DBUILD_TEST printbig.c

zip:
	zip -r moop.zip Makefile ast.ml scanner.mll toplevel.ml README testall.py \
	parser.mly codegen.ml sast.ml semant.ml \tests


# Building the tarball


# TESTS = \
# 	pos_ClassExtension pos_ClassTest pos_DotNotation pos_MethodDeclTilda \
# 	pos_OneMethodTest pos_SwitchedVariableOrder pos_TwoClass pos_VarDeclTest \
# 	pos_VarDeclTildaTest

# FAILS = \
#     neg_ClassInClass neg_ClassInMethod neg_ClassTest neg_IncorrectBraces \
# 	neg_MissingParens neg_WrongLocalVarOrder  

# TESTFILES = $(TESTS:%=test-%.moop) $(FAILS:%=fail-%.moop) \

# TARFILES = ast.ml  Makefile _tags toplevel.ml parser.mly \
# 	README scanner.mll  testall.sh printbig.c \
# 	$(TESTFILES:%=tests/%) 


# moop.tar.gz : $(TARFILES)
# 	cd .. && tar czf moop/moop.tar.gz \
# 		$(TARFILES:%=moop/%)


