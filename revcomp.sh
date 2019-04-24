#!/bin/bash
#must be used with wordwrap removed file
#use: revcomp.sh input.fa > revcomp.fa

cat $1 | while read L; do echo $L; read L; echo "$L" | rev | tr "ATGC" "TACG" ; done

