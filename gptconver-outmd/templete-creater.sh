#! /usr/bin/env sh

templete ()
{
    : templete creater ...
    : ...
    
    :;
    
    : args :
    
    creater ()
    {
        : creater 3 ':%%%%%%%:'
        : creater 3
        : creater ':%%%%%%%:' 3
        : creater ':%%%%%%%:'
        : creater
        
        :;
        
        local _len _rplc ;
        
        {
            _params ()
            {
                : creater 3 ':%%%%%%%:'
                
                unset len && local len="$1" && shift 1 &&
                unset rplc && local rplc="$1" && shift 1 &&
                
                2>/dev/null test "$len" -eq "$len" &&
                2>/dev/null test "$rplc" == "$rplc" &&
                
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
                
                unset len && local len="$1" && shift 1 &&
                unset rplc && local rplc=':%%%%%%%:' &&
                
                2>/dev/null test "$len" -eq "$len" &&
                2>/dev/null test "$rplc" == "$rplc" &&
                
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
                unset len && local len="$1" && shift 1 &&
                
                2>/dev/null test "$len" -eq "$len" &&
                2>/dev/null test "$rplc" == "$rplc" &&
                
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
                unset len && local len=3 &&
                
                2>/dev/null test "$len" -eq "$len" &&
                2>/dev/null test "$rplc" == "$rplc" &&
                
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
                
                unset len && local len=3 &&
                unset rplc && local rplc=':%%%%%%%:' &&
                
                2>/dev/null test "$len" -eq "$len" &&
                2>/dev/null test "$rplc" == "$rplc" &&
                
                _len="$len" &&
                _rplc="$rplc" &&
                
                :;
                
            } &&
            _params "$@" &&
            
        :; } ||
        
        { 1>&2 echo args err 🤒 ; return 9 ; } ;
        
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
        
        
        seq -- 0 1 "$len" |
            
            xargs -I '{'"$I_NUM"'}' -- echo "$per" &&
        
        
        :;
        
    } &&
    
    : &&
    
    "$@" &&
    
    :;
} &&


templete creater "$@"
