:setlocal tabstop=4
:setlocal shiftwidth=4
:setlocal softtabstop=4
:setlocal expandtab
:setlocal foldmethod=indent
:setlocal foldlevel=5
:compiler pylint
:map <silent> <F4> :Pylint<CR>:redraw!<CR>
:set formatoptions=cq textwidth=72 foldignore= wildignore+=*.py[co]
:set viminfo='10,\"100,:20,%,n~/.viminfo
:filetype plugin indent on
:syntax enable
:highlight OverLength ctermbg=darkgreen ctermfg=white guibg=#592929
:match OverLength /\%79v.\+/

"pdb setting : insert pdb breakpoints
imap <F2> import pdb; pdb.set_trace()
au BufRead *.py nmap <F3> :!python3 -m pdb main.py<CR>

:set list
:set listchars=tab:>-,trail:-
