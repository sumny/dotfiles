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
set tw=79
set nobackup
set hlsearch
set noundofile
set nu
set mouse=a
set termguicolors
syntax on

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

let g:syntastic_r_checkers = ['lintr']
let g:syntastic_enable_r_lintr_checker = 1
let g:syntastic_r_lintr_linters = "with_defaults(object_usage_linter = NULL, closed_curly_linter = NULL, commas_linter = NULL, line_length_linter(101), camel_case_linter = NULL, snake_case_linter = NULL, open_curly_linter = NULL, spaces_left_parentheses_linter = NULL, todo_comment_linter = NULL, trailing_blank_lines_linter = NULL, commented_code_linter = NULL, multiple_dots_linter = NULL)"
