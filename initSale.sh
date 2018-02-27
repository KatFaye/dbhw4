#!/bin/bash

# ssh kherring

tables=(Customer Manufacturer Product Salesperson Sale)
shopt -s nullglob
for s in ${tables[@]}; do
  # echo $s
  sqlplus kherring/msa2012 @create$s << HERE
  exit
HERE
done

for s in ${tables[@]}; do
  # echo $s
  sqlldr kherring/msa2012 control=@load$s.ctl log=$s.log
done
