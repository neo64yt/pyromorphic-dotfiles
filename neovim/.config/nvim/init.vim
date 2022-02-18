"""""""""""""""""""""""""""""""""
"          init.vim             "
"""""""""""""""""""""""""""""""""


" Vimplug
call plug#begin(stdpath('data') . '/plugged')

" Configuration
set ignorecase
set wrap
set number
set relativenumber
set termguicolors
set expandtab
set tabstop=4
set shiftwidth=4
let g:airline_powerline_fonts = 1
let g:airline_theme='deus'
let g:airline#extensions#tabline#enabled = 1
nmap <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '󰦿'
let g:NERDTreeDirArrowCollapsible = '󰧃'
let g:vaxe_enable_airline_defaults = 0
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd VimEnter * :silent exec "!kill -s SIGWINCH $PPID"

" Plugins
Plug 'preservim/nerdtree' " nerdtree
Plug 'ryanoasis/vim-devicons' " devicons
Plug 'vim-airline/vim-airline' " airline
Plug 'vim-airline/vim-airline-themes' " themes for airline
Plug 'neoclide/coc.nvim', {'branch': 'release'} " coc.nvim
Plug 'baskerville/vim-sxhkdrc' " sxhkdrc
Plug 'mhinz/vim-startify' " startify
Plug 'cespare/vim-toml' " toml
Plug 'norcalli/nvim-colorizer.lua' " nvim-colorizer.lua

" Initialize plugin system
call plug#end()

lua require'colorizer'.setup()



" vim: ft=vim
