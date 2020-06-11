call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()


" The NERDTree
" https://github.com/scrooloose/nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

map <C-n> :NERDTreeTabsToggle<CR>
let NERDTreeShowHidden = 1


" vim-airline
" https://github.com/vim-airline/vim-airline
let g:airline_powerline_fonts = 1


nnoremap <C-h> :tabprevious<CR>
nnoremap <C-l> :tabnext<CR>

set number
set relativenumber
