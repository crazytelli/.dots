
" Instalação do vim-plug
if has('win32') || ('win64')
    let g:python3_host_prog = 'C:/Python38/python.EXE' " Python path
    set guifontset=Consolas:h12
    call plug#begin('~/AppData/Local/nvim/plugged')
elseif has('unix')
    let g:python3_host_prog = '/usr/bin/python' " Python path
    if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
        echo "Downloading junegunn/vim-plug to manage plugins..."
        silent !mkdir -p ~/.config/nvim/autoload/
        silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
        autocmd VimEnter * PlugInstall
    endif
    call plug#begin('~/.config/nvim/plugged')
endif

Plug 'morhetz/gruvbox'
Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'lervag/vimtex'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'KeitaNakamura/tex-conceal.vim'
Plug 'ervandew/supertab'
Plug 'sbdchd/neoformat'
Plug 'neomake/neomake'
"Plug 'davidhalter/jedi-vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'
Plug 'Konfekt/FastFold'
Plug 'airblade/vim-gitgutter'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
"Plug 'justinmk/vim-sneak'
Plug 'tpope/vim-surround'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'dylanaraps/wal'
"Plug 'skywind3000/asyncrun.vim'
"Plug 'Chiel92/vim-autoformat'
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"let g:deoplete#enable_at_startup = 1
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'kovetskiy/sxhkd-vim'
Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
Plug 'ryanoasis/vim-devicons' " must be loaded last
call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
