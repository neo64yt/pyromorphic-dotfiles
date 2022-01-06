" Vimplug
call plug#begin(stdpath('data') . '/plugged')

" Configuration
set ignorecase
set number
set nowrap
let g:airline_powerline_fonts = 1
let g:airline_theme='deus'
let g:airline#extensions#tabline#enabled = 1
nmap <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '󰦿'
let g:NERDTreeDirArrowCollapsible = '󰧃'
let g:vaxe_enable_airline_defaults = 0
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd VimEnter * :silent exec "!kill -s SIGWINCH $PPID"

" nerdtree
Plug 'preservim/nerdtree'

" vim-devicons
Plug 'ryanoasis/vim-devicons'

" vim-airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" COC
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" vim-sxhkdrc
Plug 'baskerville/vim-sxhkdrc'

" vim-startify
Plug 'mhinz/vim-startify'

" vim-toml
Plug 'cespare/vim-toml'

" colorizer
Plug 'lilydjwg/colorizer'

" Initialize plugin system
call plug#end()

