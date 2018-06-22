" tabstop:          Width of tab character
" softtabstop:      Fine tunes the amount of white space to be added
" shiftwidth        Determines the amount of whitespace to add in normal mode
" expandtab:        When on uses space instead of tabs
set tabstop     =4
set softtabstop =4
set shiftwidth  =4
set expandtab
set colorcolumn=80
colorscheme elflord

" Setting the NERDTree sidebar toggable by Crtl-n
map <silent> <C-n> :NERDTreeToggle<CR>

" Setting trim spaces function
fun! TrimWhitespace()
    let l:save = winsaveview()
    %s/\s\+$//e
    call winrestview(l:save)
endfun

" Setting trimspace command to trim spaces
command! Trimspace call TrimWhitespace()

" Setting F5 key to trim spaces
:noremap <F5> :call TrimWhitespace()<CR>
