:setlocal tabstop=4
:setlocal shiftwidth=4
:setlocal softtabstop=4
:setlocal expandtab
:setlocal foldmethod=indent
:setlocal foldlevel=2
:compiler pylint
:map <silent> <F4> :Pylint<CR>:redraw!<CR>
