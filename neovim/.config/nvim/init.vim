" Vimplug
call plug#begin(stdpath('data') . '/plugged')

" Configuration
set ignorecase
set number
let g:airline_powerline_fonts = 1
let g:airline_theme='deus'
let g:airline#extensions#tabline#enabled = 1
nmap <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '󰦿'
let g:NERDTreeDirArrowCollapsible = '󰧃'
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

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

" Initialize plugin system
call plug#end()
