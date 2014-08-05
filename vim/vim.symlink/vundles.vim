set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" General
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
" Plugin 'SirVer/ultisnips'
" Plugin 'edsono/vim-matchit'
" Plugin 'elzr/vim-json'
Plugin 'honza/vim-snippets'
Plugin 'justinmk/vim-sneak'
" Plugin 'ludovicchabant/vim-lawrencium'
" Plugin 'majutsushi/tagbar'
Plugin 'mhinz/vim-signify'
Plugin 'plasticboy/vim-markdown'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'sjl/gundo.vim'
Plugin 'tpope/vim-sleuth'
Plugin 'tpope/vim-surround'
" Plugin 'tyru/open-browser.vim'
Plugin 'vim-scripts/a.vim'

" Git related...
Plugin 'gregsexton/gitv'
Plugin 'tjennings/git-grep-vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-git'

" Cosmetics, color scheme, Powerline...
" Plugin 'tomasr/molokai'
Plugin 'flazz/vim-colorschemes'
" Plugin 'chrisbra/color_highlight'
Plugin 'altercation/vim-colors-solarized'

" Syntax Higlighting
" Plugin 'jnwhiteh/vim-golang'
Plugin 'fatih/vim-go'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
