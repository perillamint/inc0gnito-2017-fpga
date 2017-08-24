#!/bin/bash
z3 inc0gnito.lsp | perl -p -e 's/Bool\n//g' | perl -p -e 's/[ ]+/ /g' > result.lsp
cat result.lsp | grep define-fun | awk '{ print $2 " " $4 }' | sed -r 's/\)//' > result.txt
cat result.txt | grep 'd[0-9]*' | sort --version-sort > data.txt
cat result.txt | grep 'k[0-9]*' | sort --version-sort > key.txt

node decode.js
