#! /usr/bin/env sh

templete ()
{
    : templete creater ...
    : ...
    
    :;
    
    : args :
    
    creater ()
    {
        : creater 0 3 ':%%%%%%%:'
        : creater 0 3
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
                : creater 0 3 ':%%%%%%%:'
                : creater 2 4 xxxxx
                
                unset _start start && local start="$1" && shift 1 &&
                unset _len len && local len="$1" && shift 1 &&
                unset _rplc rplc && local rplc="$1" && shift 1 &&
                
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
                : creater ':%%%%%%%:' 0 3
                : creater xxxx 2 4
                
                unset _rplc rplc && local rplc="$1" && shift 1 &&
                unset _start start && local start="$1" && shift 1 &&
                unset _len len && local len="$1" && shift 1 &&
                
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
                : creater 0 ':%%%%%%%:' 3
                : creater 2 xxxx 4
                
                unset _start start && local start="$1" && shift 1 &&
                unset _rplc rplc && local rplc="$1" && shift 1 &&
                unset _len len && local len="$1" && shift 1 &&
                
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
                : creater 0 3
                : creater 2 4
                
                unset _start start && local start="$1" && shift 1 &&
                unset _len len && local len="$1" && shift 1 &&
                unset _rplc rplc && local rplc=':%%%%%%%:' &&
                
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
                : creater 1 ':%%%%%%%:'
                
                unset _start start && local start=0 &&
                unset _len len && local len="$1" && shift 1 &&
                unset _rplc rplc && local rplc="$1" && shift 1 &&
                
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
                : creater 5
                
                unset _start start && local start=0 &&
                unset _len len && local len="$1" && shift 1 &&
                unset _rplc rplc && local rplc=':%%%%%%%:' &&
                
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
                : creater xxx 5
                
                unset _rplc rplc && local rplc="$1" && shift 1 &&
                unset _start start && local start=0 &&
                unset _len len && local len="$1" && shift 1 &&
                
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
                : creater xxxx
                
                unset _rplc rplc && local rplc="$1" && shift 1 &&
                unset _start start && local start=0 &&
                unset _len len && local len=3 &&
                
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
                
                unset _start start && local start=0 &&
                unset _len len && local len=3 &&
                unset _rplc rplc && local rplc=':%%%%%%%:' &&
                
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
