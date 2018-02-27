#!/bin/bash

# ssh kherring

sqlplus kherring/msa2012 @dropAll << HERE
  exit
HERE

shopt -s nullglob
for s in create*.sql; do
  cmd=${s%.sql}
  sqlplus kherring/msa2012 @$cmd << HERE
  exit
HERE

done
