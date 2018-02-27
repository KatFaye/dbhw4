#!/bin/bash

# ssh kherring

shopt -s nullglob
for s in *.sql; do
  cmd=${s%.sql}
  sqlplus kherring/msa2012 $cmd
  exit
done
