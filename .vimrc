"set line numbers on left
set number relativenumber

"smart indenting
filetype indent on
set smartindent
set expandtab
set tabstop=2
set shiftwidth=2

"ii to escape insert mode
imap ii <Esc>

"fold method to manual, space to toggle fold under cursor
set foldmethod=manual
nnoremap <space> za

"enter to insert space under current line without leaving normal mode
nmap <S-Enter> O<Esc>j
nmap <CR> o<Esc>k

"I don't remember what this does
inoremap {<CR> {<CR>}<C-o>O
