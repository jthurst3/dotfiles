set nocompatible              " be iMproved, required
let mapleader=','
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'


" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" solarized colors
Plugin 'altercation/vim-colors-solarized'
" YouCompleteMe
Plugin 'Valloric/YouCompleteMe'
" Syntastic
Plugin 'scrooloose/syntastic'
" Multiple cursors
Plugin 'terryma/vim-multiple-cursors'
" ctrlp
Plugin 'kien/ctrlp.vim'
" emmet
Plugin 'mattn/emmet-vim'
" NERD commenter
Plugin 'scrooloose/nerdcommenter'
" Jade
Plugin 'digitaltoad/vim-jade'
" Fanfigtastic
Plugin 'dahu/vim-fanfingtastic'
" Vim Airline
Plugin 'bling/vim-airline'
" Vim color schemes
Plugin 'flazz/vim-colorschemes'
" Fugitive
Plugin 'tpope/vim-fugitive'
" Tmuxline
Plugin 'edkolev/tmuxline.vim'
" Tmux split panes
Plugin 'christoomey/vim-tmux-navigator'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Put your non-Plugin stuff after this line
syntax enable
set background=dark
color badwolf
set hidden

let g:airline_powerline_fonts=1

" Airline status
set laststatus=2

" tabbing
" from http://stackoverflow.com/questions/1878974/redefine-tab-as-4-spaces
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab
set number

set pastetoggle=<f5>

" commands from https://github.com/joeljk13/dotfiles/blob/master/.vimrc
set timeout ttimeout timeoutlen=1000 ttimeoutlen=100
set <f13>=jk
set <f14>=jw

inoremap <silent> <f13> write


inoremap <S-tab> <c-d>

inoremap <f13> <Esc>
cnoremap <f13> <Esc>
vnoremap <f13> <Esc>
onoremap <f13> <Esc>

inoremap <f14> <Esc>:w<Cr>
vnoremap <f14> <Esc>:w<Cr>
nnoremap <f14> <Esc>:w<Cr>

" DON'T UN-COMMENT THESE LINES!!!
"inoremap <Esc> <nop>
"cnoremap <Esc> <nop>
"vnoremap <Esc> <nop>
"onoremap <Esc> <nop>

nnoremap U <C-r>
nnoremap <C-r> <nop>

noremap : ;
noremap ; :
cnoremap : ;
cnoremap ; :
