" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" Our great overlord
let mapleader = ","

" Splits
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Buffers
nmap <Tab> :b#<CR>
map <leader>b :FufBuffer<CR>
map <leader>f :FufFile<CR>

" Tabs/Buffers
map gh :PlusNavLeftRight prev<CR>
map gl :PlusNavLeftRight next<CR>

map <Leader>w :PlusToggleSingleSplit<CR>


" Visual mode deleting (cutting to the black hole)
xnoremap p "_dP
xnoremap s "_d


" NerdTree
""""""""""""
let NERDTreeIgnore = ['\.aux$']
map <C-n> :NERDTreeToggle<CR>
map <leader>n :NERDTreeFind<CR>
let g:NERDTreeWinSize = 50



" Removed syntastic since I can't find any checker that actually works. It's
" either too slow, or won't work with es6, jsx, and types.
"
" let g:syntastic_javascript_checkers = ['jsxhint']
" autocmd FileType javascript let b:syntastic_checkers = findfile('.jscsrc', '.;') != '' ? ['jscs'] : ['jsxhint']
