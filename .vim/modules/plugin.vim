" auto-install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.vim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
	" Gruvbox
	Plug 'morhetz/gruvbox'
	" Vim-hexokinase
	Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
	" Tables
	Plug 'dhruvasagar/vim-table-mode'
	" Emmet
	Plug 'mattn/emmet-vim'
	" Surround
	Plug 'tpope/vim-surround'
	" Syntastic
	Plug 'vim-syntastic/syntastic' 
	" Coc
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	" Prettier
	Plug 'prettier/vim-prettier', {
	  \ 'do': 'yarn install',
	  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
	" Fuzzy Finder
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

call plug#end()
