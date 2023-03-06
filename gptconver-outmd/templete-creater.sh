#! /usr/bin/env sh

templete ()
{
    : templete creater ...
    : ...
    
    :;
    
    : args :
    
    creater ()
    {
        : creater 13 16 ':%%%%%%%:'
        : creater 3 ':%%%%%%%:'
        : creater 3
        : creater ':%%%%%%%:' 3
        : creater ':%%%%%%%:'
        : creater
        
        :;
        
        local _start _len _rplc ;
        
        {
            _params ()
            {
                : creater 13 16 ':%%%%%%%:'
                
                unset start && local start="$1" && shift 1 &&
                unset len && local len="$1" && shift 1 &&
                unset rplc && local rplc="$1" && shift 1 &&
                
                2>/dev/null test "$start" -eq "$start" &&
                2>/dev/null test "$len" -eq "$len" &&
                2>/dev/null test "$rplc" == "$rplc" &&
                
                _start="$start" &&
                _len="$len" &&
                _rplc="$rplc" &&
                
                :;
                
            } &&
            _params "$@" &&
            
        :; } ||
        
        {
            _params ()
            {
                : creater 3 ':%%%%%%%:'
                
                unset start && local start=0 &&
                unset len && local len="$1" && shift 1 &&
                unset rplc && local rplc="$1" && shift 1 &&
                
                2>/dev/null test "$start" -eq "$start" &&
                2>/dev/null test "$len" -eq "$len" &&
                2>/dev/null test "$rplc" == "$rplc" &&
                
                _start="$start" &&
                _len="$len" &&
                _rplc="$rplc" &&
                
                :;
                
            } &&
            _params "$@" &&
            
        :; } ||
        
        {
            _params ()
            {
                : creater 3
                
                unset start && local start=0 &&
                unset len && local len="$1" && shift 1 &&
                unset rplc && local rplc=':%%%%%%%:' &&
                
                2>/dev/null test "$start" -eq "$start" &&
                2>/dev/null test "$len" -eq "$len" &&
                2>/dev/null test "$rplc" == "$rplc" &&
                
                _start="$start" &&
                _len="$len" &&
                _rplc="$rplc" &&
                
                :;
                
            } &&
            _params "$@" &&
            
        :; } ||
        
        {
            
            _params ()
            {
                : creater ':%%%%%%%:' 3
                
                unset rplc && local rplc="$1" && shift 1 &&
                unset start && local start=0 &&
                unset len && local len="$1" && shift 1 &&
                
                2>/dev/null test "$start" -eq "$start" &&
                2>/dev/null test "$len" -eq "$len" &&
                2>/dev/null test "$rplc" == "$rplc" &&
                
                _start="$start" &&
                _len="$len" &&
                _rplc="$rplc" &&
                
                :;
                
            } &&
            _params "$@" &&
            
        :; } ||
        
        {
            
            _params ()
            {
                : creater ':%%%%%%%:'
                
                unset rplc && local rplc="$1" && shift 1 &&
                unset start && local start=0 &&
                unset len && local len=3 &&
                
                2>/dev/null test "$start" -eq "$start" &&
                2>/dev/null test "$len" -eq "$len" &&
                2>/dev/null test "$rplc" == "$rplc" &&
                
                _start="$start" &&
                _len="$len" &&
                _rplc="$rplc" &&
                
                :;
                
            } &&
            _params "$@" &&
            
        :; } ||
        
        {
            
            _params ()
            {
                : creater
                
                unset start && local start=0 &&
                unset len && local len=3 &&
                unset rplc && local rplc=':%%%%%%%:' &&
                
                2>/dev/null test "$start" -eq "$start" &&
                2>/dev/null test "$len" -eq "$len" &&
                2>/dev/null test "$rplc" == "$rplc" &&
                
                _start="$start" &&
                _len="$len" &&
                _rplc="$rplc" &&
                
                :;
                
            } &&
            _params "$@" &&
            
        :; } ||
        
        { 1>&2 echo args err 🤒 ; return 9 ; } ;
        
        local start="$_start" &&
        local len="$_len" &&
        local rplc="$_rplc" &&
        
        :;
        
        : profiles :
        
        local I_NUM="${TEMPLETE_CREATER__I_NUM:-n_per}" &&
        
        :;
        
        : body :
        
        
        local per='
'"$rplc"'### <sup><kbd><var>({'"$I_NUM"'}) </var></kbd></sup> asker: 
'"$rplc"'

'"$rplc"'
'"$rplc"'#### <sup><kbd><var>({'"$I_NUM"'}) </var></kbd></sup> chatgpt: 
'"$rplc"'

'"$rplc"'' &&
        
        
        seq -- "$start" 1 "$len" |
            
            xargs -I '{'"$I_NUM"'}' -- echo "$per" &&
        
        
        :;
        
    } &&
    
    : &&
    
    "$@" &&
    
    :;
    
} &&


templete creater "$@"
