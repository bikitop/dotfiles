syntax on
 
" linux module search
for fpath in split(globpath('~/.vim/modules/', '*.vim'), '\n')
	exe 'source' fpath
endfor

" theme
colorscheme gruvbox
set background=dark

" set
set ruler
set title
set number
set relativenumber
set noerrorbells
set incsearch
set tabstop=4 softtabstop=4
set shiftwidth=4
set termguicolors
set clipboard=unnamedplus
set autoindent
set wrap
set linebreak
set breakindent

" fold
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview
