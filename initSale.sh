#!/bin/bash

# ssh kherring

shopt -s nullglob
for s in create*.sql; do
  cmd=${s%.sql}
  sqlplus kherring/msa2012 @$cmd << HERE
  exit
HERE

done
