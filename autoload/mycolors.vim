scriptencoding utf-8

function! mycolors#CPP_SetColor() abort
    syn keyword MyTypef ll ld string pint
    syn keyword MyClass vector set queue stack map pair priority_queue tuple Edge Graph
    syn keyword MyOperator rep repr each ALL ALLR Unique Fill IN OUT el chmin chmax
    syn keyword MyNumber INF INFL MOD
    hi link MyTypef Type
    hi link MyClass PreProc
    hi link MyOperator Conditional
    hi link MyNumber Number
endfunction

" 特定のファイルでの追加シンタックスハイライト
function! mycolors#Set() abort
    augroup AddColor
        autocmd!
        autocmd BufNewFile,BufRead *.cpp call mycolors#CPP_SetColor()
    augroup END
endfunction

" シンタックスハイライトのクリア
function! mycolors#Clear() abort
    autocmd!
endfunction

