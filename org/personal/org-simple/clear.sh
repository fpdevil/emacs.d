#!/bin/bash

exts="aux fdb_latexmk fls idx ilg ind log out tex toc aux pyg bbl blg lot lof xdv synctex.gz"

for i in $(echo $exts | tr " " "\n")
do
    echo "removing ${i}"
    rm -vrf *.$i
done
