#!/bin/bash
#hexobjdmp.sh
#gera só o hex opcode
echo 'unsigned const char sc[]='
 objdump -d $1 | grep '[0-9a-f]:' | grep -v file | cut -f2 -d':' | cut -f1-2 -d' ' | tr -s ' ' | tr '\t' ' ' | sed 's/ $//' | sed 's/ /\\x/g' | paste -d '' -s | sed 's/^/"/' | sed 's/$/"/'
echo ';'
echo ""
   printf "\e[00;32m\tTsunami Faction s2\n\e[0m"


