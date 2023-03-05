#! /usr/bin/env awk -f

{
    if (1 == NR && "" == $0) {print ""}
    else if (NF == 2) {print $NF}
    else if (NF == 1 || NF == 0) {print "> "$NF}
    else {print ":err:\t"$0}
    
}BEGIN{FS = ":%%%%%%%:"}
