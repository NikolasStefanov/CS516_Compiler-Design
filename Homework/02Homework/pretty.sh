#!/bin/bash

eval `opam config env`
ocamlc -c ./x86/x86.ml
mv ./x86/x86.cmi ./x86.cmi
rm ./x86/x86.cmo