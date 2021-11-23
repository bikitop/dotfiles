syntax on
 
" module search
for fpath in split(globpath('~/.vim/modules/', '*.vim'), '\n')
	exe 'source' fpath
endfor

" theme
let g:airline_theme="base16_gruvbox_dark_soft"
colorscheme gruvbox 
let &t_ut=''
set background=dark
" highlight Normal guibg=NONE

" set
set ruler
set t_Co=256
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
set noswapfile
set mouse=a
set hlsearch
set incsearch

" fold
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

" table
let g:table_mode_corner="|"

" emmet
let g:user_emmet_mode='n'
let g:user_emmet_leader_key=','

"set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" prettier
let g:prettier#exec_cmd_path = 'home/sm/.vim/autoload/plugged/vim-prettier'
