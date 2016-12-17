#!/bin/bash
#hexobjdmp.sh
#gera só o hex opcode
clear
 echo -n "\033[00;36mBy vold\n"
 sleep 1
    echo -n "\033[00;36mInsira o arquivo\n\n"
read -p "digite o arquivo: " file
 objdump -d $file | grep '[0-9a-f]:' | grep -v file | cut -f2 -d':' | cut -f1-2 -d' ' | tr -s ' ' | tr '\t' ' ' | sed 's/ $//' | sed 's/ /\\x/g' | paste -d '' -s | sed 's/^/"/' | sed 's/$/"/'
echo -n "\n\n\n"
   echo -n "\033[00;32m\tTsunami Faction s2\n"
sleep 1
exit
