#!/bin/bash

# ssh kherring

sqlplus kherring/msa2012 @dropAll

shopt -s nullglob
for s in create*.sql; do
  cmd=${s%.sql}
  sqlplus kherring/msa2012 @$cmd
done
