#! /usr/bin/env gawk -f

{
    if (1 == NR && 0 == NF) {print $0}
    else if (NF == 2) {print $NF}
    else if (NF == 1 || NF == 0) {print "> "$NF}
    
    else if (NF > 2) {print ":%..err..%:","'NF is "NF" > 2, need to chg FieldSplit.'""\t"$0}
    else {print ":%..err..%:\t"$0}
    
}BEGIN{FS = ":%%%%%%%:"}
