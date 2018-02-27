#!/bin/bash

# ssh kherring

tables=(customer manufacturer product salesperson sale)
shopt -s nullglob
for s in tables; do
  sqlplus kherring/msa2012 @$s << HERE
  exit
HERE

done
