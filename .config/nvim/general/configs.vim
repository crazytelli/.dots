" ------------------------Colorschemes Settings------------------------------- "

" Gruvbox
"colorscheme gruvbox

" Palenight Theme
"let g:material_style='palenight'
"colorscheme vim-material
"let g:airline_theme='material'

" Vim Code Dark Theme
colorscheme codedark
let g:airline_theme = 'codedark'

" Nord Theme
"colorscheme nord
"let g:airline_theme = 'nord'

" Vim Deus Theme
"colorscheme deus
"let g:airline_theme = 'deus'

" Onedark
"colorscheme onedark
"let g:airline_theme = 'onedark'

let g:airline_powerline_fonts = 1

syntax on
filetype plugin on
hi Normal guibg=NONE ctermbg=NONE
"set background=dark
set termguicolors
set encoding=utf-8
set fileencoding=utf-8
set number relativenumber
set noswapfile
set smartindent
set nowrap
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartcase
set incsearch
set wildmode=longest,list,full
set nobackup
set nowritebackup
"setlocal spell
"set spelllang=pt_br,en_us
set splitbelow splitright
set colorcolumn=81
"set cursorline
set mouse=a
set clipboard+=unnamedplus

let mapleader = " "
let g:tex_flavor = 'latex'

"spell check shortcut Ctrl+L
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u


" LaTeX Conceal. plugin KeitaNakamura/tex-conceal.vim

highlight Conceal guibg=NONE ctermbg=NONE
set conceallevel=2
let g:tex_conceal="abdgm"
