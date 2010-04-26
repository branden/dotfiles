" Branden Rolston <brolston@gmail.com> vimrc

" GENERAL CONFIG 
filetype plugin indent on
runtime ftplugin/man.vim " turn on the man page plugin
syntax enable
set backspace=2
set autochdir   " working directory changes to that of file in buffer
set nohls       " turn off highlight on search
set expandtab
set textwidth=79
set tabstop=4
set shiftwidth=4
colo evening 

" make the preprocessor stuff a lighter color
hi PreProc ctermfg=Yellow
hi Constant cterm=bold,underline ctermfg=White

" turn on comment continuation for C style comments
set fo+=r       " formatoptions r adds new comment line automagically
set com=s1:/*,mb:*,ex:*/        " only apply on C comments

" xml options
let xml_use_xhtml = 1

" GVIM CONFIG
set guioptions+=c " use console instead of popup dialogs
set guioptions-=T " turn off toolbar
"set guifont=Inconsolata:h13 " set font on Windows
set guifont=Inconsolata\ 13 " set font on Gnome

" AUTO-COMMANDS
" Makefiles
autocmd BufEnter ?akefile* set noet ts=8 sw=8 nocindent
" source code
autocmd BufEnter *.cpp,*.cxx,*.h,*.c,*.java,*.pl set et ts=4 sw=4 smartindent
" python source
autocmd FileType python set tabstop=4 softtabstop=4 shiftwidth=4 expandtab
" git commit
autocmd BufEnter COMMIT_EDITMSG set textwidth=0 

" MAPPINGS 
ab teh the
ab bmr Branden Rolston

:nmap <Leader>  s :source ~/.vimrc
:nmap <Leader>  v :e ~/.vimrc

inoremap ;; <ESC>

" Stop using the arrow keys 
noremap <Left>  <NOP>
noremap <Right> <NOP>
noremap <Up>    <NOP>
noremap <Down>  <NOP>
inoremap <Left>  <NOP>
inoremap <Right> <NOP>
inoremap <Up>    <NOP>
inoremap <Down>  <NOP>

" MACROS
" starts a Python program
map  i#!/usr/bin/python<CR><CR>__author__ = 'Branden Rolston <brolston@gmail.com>'<CR><CR>import sys<CR>import os<CR><CR>def main(argv):<CR>pass<CR><ESC>oif __name__ == '__main__':<CR>try:<CR>main(sys.argv)<CR><BS>except KeyboardInterrupt:<CR>pass<ESC>

" starts a C++ program
map  i#include <iostream><CR>using namespace std;<CR>int main()<CR>{<CR>return 0;<CR>}<ESC>[[o

" creates C++ class header
map  yypkiclass <ESC>o{<CR>public:<CR>private:<CR>};<ESC>jddkkp=$yy2pkA ( void );<ESC>jA ( const <ESC>JA & );<ESC>yypdwyypkdw$xxaoperator = <ESC>J

" starts a C program
map  i/*<CR>Branden Rolston <brolston@gmail.com><CR>/<CR><CR>#include<stdio.h><CR>#include<stdlib.h><CR>int main()<CR>{<CR>return 0;<CR>}<ESC>[[o
