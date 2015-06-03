" number-cycle.vim - cycle between line numbering modes
" Maintainer: Joshua T Corbin <jcorbin@wunjo.org>
" Version: 1.0

" use relativenumber in vim 7.3+
if version >= 703
    function! s:CycleNumbering()
        " (off number relativenumber)
        if &number && !&relativenumber
            setlocal relativenumber
        elseif &relativenumber
            setlocal norelativenumber
            setlocal nonumber
        else
            setlocal number
        endif
    endfunction

    nnoremap <silent> <Plug>NumberCycle :call <SID>CycleNumbering()<CR>
" fallback to just using number in vim <7.3
else
    nnoremap <silent> <Plug>NumberCycle :setlocal number!<CR>
endif

" vim:set ts=2 sw=2 expandtab:
