" All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
runtime! archlinux.vim

" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim74/vimrc_example.vim or the vim manual
" and configure vim to your own liking!

set tabstop=2
set shiftwidth=2
set expandtab
set tw=80
set nobackup
set hlsearch
set noundofile
set nu
set mouse=a
set termguicolors
syntax on
set encoding=utf-8
set fileencoding=utf-8
set showcmd

"vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"Specify a directory for plugins
call plug#begin('~/.vim/plugged')
"Nvim-R
Plug 'jalvesaq/Nvim-R'
"editorconfig-vim
Plug 'editorconfig/editorconfig-vim'
"ale
Plug 'dense-analysis/ale'
call plug#end()

"Nvim-R
let R_in_buffer = 0
let g:rout_follow_colorscheme = 1
let g:Rout_more_colors = 1

"ale
let g:ale_fixers = {
   \   '*': ['remove_trailing_lines', 'trim_whitespace'],
   \   'r': ['styler'],
\}
let g:ale_r_styler_options = 'styler::mlr_style'
let g:ale_r_lintr_options = "with_defaults(line_length_linter(80))"
let g:ale_r_lintr_lint_package = 0
