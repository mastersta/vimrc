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

"Adds an end bracket when an open braket is inserted
inoremap {<CR> {<CR>}<C-o>O

"remove line wrapping
set nowrap

"keep 20 lines visible above and below
set scrolloff=20

"set black highlight of cursor line and toggle on and off with H
hi CursorLine cterm=NONE ctermbg=black ctermfg=white
nnoremap H :set cursorline!

"Automatic installation of vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" List your plugins here
Plug 'tpope/vim-sensible'
Plug 'Freedzone/kerbovim'
Plug 'ervandew/supertab'
Plug 'Yggdroot/indentLine'


call plug#end()

" set supertab to complete on carriage return
let g:SuperTabCrMapping = 1

filetype plugin indent on
augroup filetypedetect
  au BufNewFile,BufRead *.s,*.inc,*.asm set ft=asm_ca65
augroup END

syntax on
