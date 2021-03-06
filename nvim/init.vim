set autoindent " Set autoindention then you go inside a function or smth like this
set clipboard+=unnamedplus " Enable clipboard (if you compiled you vim with it)
set guioptions+=a " Ability to change gui things
set softtabstop=2 " Set tabs with two spaces
set linespace=2
set tabstop=2
set shiftwidth=2
set t_Co=256 
set relativenumber " Set line number (nonumber/number/relativenumber)
set expandtab " Replace tabs to spaces (too helpful for lans like python)
set hlsearch " Highlight any results
set incsearch " Search while you are typing
set ruler " Show the cursor anytime
set nobackup " Do not create crappy backups/swaps and another stuff
set noswapfile
set encoding=utf-8
set fileencodings=utf-8,cp1251

call plug#begin('~/.config/nvim/autoload')

Plug 'jiangmiao/auto-pairs' 
Plug 'joshdick/onedark.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'cespare/vim-toml'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'lervag/vimtex'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'sirver/ultisnips'

call plug#end()

" APPEARANCE
colorscheme onedark
hi Normal ctermbg=NONE

" Vimtex Settings
let g:tex_flavor='latex'
let g:latex_view_general_viewer = 'zathura'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

let g:livepreview_previewer = 'zathura'

" Ultisnips Settings
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

" Airline Settings
let g:airline_theme="onedark"  
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1

" MAPS
let g:mapleader=' '

nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>wq :wq<CR>
map <Leader>e :NERDTreeToggle<CR>

nnoremap <Leader>s :source %<CR>
nnoremap <Leader>p :PlugInstall<CR>
nnoremap <Leader>lp :LLPStartPreview<CR>

nnoremap <Leader>l :ls<CR>
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

" LaTeX Snippets

