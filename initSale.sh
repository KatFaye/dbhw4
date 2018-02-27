#!/bin/bash

# ssh kherring

tables=(Customer Manufacturer Product Salesperson Sale)
shopt -s nullglob
for s in $tables; do
  sqlplus kherring/msa2012 @create$s << HERE
  exit
HERE

done
