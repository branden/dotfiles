" Branden Rolston <brolston@gmail.com>

filetype plugin indent on
runtime ftplugin/man.vim " turn on the man page plugin
set backspace=2     " Fix backspace on some systems
set tabpagemax=50   " Maximum number of tabs to be opened with -p
set autochdir       " Working directory changes to that of file in buffer

" search/substitute
set ignorecase
set smartcase
set gdefault        " Assume '/g' at the end of substitude commands
set hlsearch
set incsearch       " Incremental search
set showmatch       " Briefly show the matching bracket when one is typed

" Disable errorbells
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

" color
syntax enable
set t_Co=256
colo evening 

" duplicate necessary - why?
hi Normal ctermbg=Black
hi Normal ctermbg=Black

hi Statement term=bold cterm=bold ctermfg=11 gui=bold guifg=#ffff60
hi Comment ctermfg=111
hi Constant ctermfg=203 ctermbg=Black
hi Special ctermfg=214 ctermbg=Black
hi Type ctermfg=83 cterm=bold
hi PreProc ctermfg=213
hi Identifier ctermfg=87
hi Visual ctermbg=DarkGray 

" gvim
set guioptions+=c                   " Use console instead of popup dialogs
set guioptions-=T                   " Turn off toolbar
set guioptions-=r                   " Turn off right scrollbar
"set guifont=Inconsolata:h13        " set font on Windows
"set guifont=Inconsolata\ Medium\ 11 " Set font on Gnome
set guifont=Inconsolata:h13         " Set font on OSX

" xml options
let xml_use_xhtml = 1

" languages
autocmd BufEnter ?akefile* set noet ts=8 sw=8 nocindent
autocmd BufEnter *.cpp,*.cxx,*.h,*.c,*.java,*.pl set et ts=4 sw=4 smartindent
autocmd FileType python set textwidth=79 tabstop=4 softtabstop=4 shiftwidth=4 expandtab
autocmd BufEnter *.php set tabstop=4 softtabstop=4 shiftwidth=4 expandtab
autocmd BufEnter *.xml,*.xsd,*.xsl set fo-=t expandtab tabstop=2 softtabstop=2 shiftwidth=2
autocmd BufNewFile,BufRead *.md,*.mkd,*.markdown set filetype=mkd wrap linebreak
autocmd FIleType html set tabstop=4 shiftwidth=4 noexpandtab

" turn on comment continuation for C style comments
set fo+=r                    " Add new comment line automagically
set com=s1:/*,mb:*,ex:*/     " Only apply on C comments

" mappings 
ab teh the

:nmap <Leader>s :source ~/.vimrc<CR>
:nmap <Leader>v :e ~/.vimrc<CR>

inoremap jj <ESC>

" Arrow keys scroll buffer
noremap <Left>  zh
noremap <Right> zl
noremap <Up>    
noremap <Down>  

" Searches use standard regexes
nnoremap / /\v
vnoremap / /\v

" Clear out a search with <leader><space>
nnoremap <Leader><space> :let @/=''<cr>

" Macros

" Starts a Python program
map  i#!/usr/bin/env python<CR><CR>import sys<CR>import os<CR><CR>def main(argv):<CR>pass<CR><ESC>oif __name__ == '__main__':<CR>try:<CR>main(sys.argv)<CR><BS>except KeyboardInterrupt:<CR>pass<ESC>

" Starts a C++ program
map  i#include <iostream><CR>using namespace std;<CR>int main()<CR>{<CR>return 0;<CR>}<ESC>[[o

" Creates C++ class header
map  yypkiclass <ESC>o{<CR>public:<CR>private:<CR>};<ESC>jddkkp=$yy2pkA ( void );<ESC>jA ( const <ESC>JA & );<ESC>yypdwyypkdw$xxaoperator = <ESC>J

" Starts a C program
map  i/*<CR>Branden Rolston <brolston@gmail.com><CR>/<CR><CR>#include<stdio.h><CR>#include<stdlib.h><CR>int main()<CR>{<CR>return 0;<CR>}<ESC>[[o

map <Leader>z opattern: (?s)(?P<__ZONE__>.+)<ESC>

" GNU Screen
" Screen compatibility fixes
" Fix keycodes
map OH <Home>
map OF <End>
imap OH <Home>
imap OF <End>
