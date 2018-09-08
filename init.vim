" ~/.local/share/nvim/site/autoload/plug.vim
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

set mouse=a

" specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'leafgarland/typescript-vim'
Plug 'ElmCast/elm-vim'
Plug 'w0rp/ale'
Plug 'jason0x43/vim-tss', { 'for': [ 'typescript' ], 'do': 'npm install' }
if has('nvim')
  Plug 'Shougo/deoplete.nvim'
  Plug 'pbogut/deoplete-elm'
endif
Plug 'Quramy/vim-js-pretty-template'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'joukevandermaas/vim-ember-hbs'
Plug 'isruslan/vim-es6'
Plug 'editorconfig/editorconfig-vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'Shougo/denite.nvim'
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'
Plug 'mustache/vim-mustache-handlebars'
Plug 'shime/vim-livedown'
Plug 'tpope/vim-fugitive'
Plug 'jiangmiao/auto-pairs'
" Plug 'Shougo/vimproc.vim', {'do': 'make'}
Plug 'magarcia/vim-angular2-snippets'
Plug 'lifepillar/vim-solarized8'
Plug 'tpope/vim-cucumber'
Plug 'scrooloose/nerdcommenter'
Plug 'dkprice/vim-easygrep'
Plug 'tpope/vim-unimpaired'
Plug 'brooth/far.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'fholgado/minibufexpl.vim'
Plug 'jszakmeister/vim-togglecursor'
Plug 'mileszs/ack.vim'
Plug 'asturtz2/vim-insert-char', { 'branch': 'append-char' }
Plug 'vim-latex/vim-latex'
Plug 'christoomey/vim-tmux-navigator'
Plug 'posva/vim-vue'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'Alok/notational-fzf-vim'
Plug 'nikvdp/ejs-syntax'
Plug 'diepm/vim-rest-console'


call plug#end()

" solarized theme config
set t_Co=256
colorscheme solarized8_flat

"" General configuration section

syntax on
set number
set ruler
" filetype plugin indent on
filetype plugin on

set encoding=utf-8

" setup spellcheck
au BufRead,BufNewFile *.md setlocal spell spelllang=en_gb

"show existing tab with 2 spaces width
set tabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
" On pressing tab, insert 2 spaces
set expandtab
" Automatically reload change files on disk
set autoread

" remove trailing whitespace
" autocmd BufWritePre * %s/\s\+$//e

" easier way to escape
imap jk <Esc>
imap kj <Esc>

" Use // to search for the visually selected text
vnoremap // y/\V<c-R>"<CR>

" Unselect text after search
nnoremap <Esc> :noh <CR>

" highlight trailing whitespace in red so it stands out, http://vim.wikia.com/wiki/Highlight_unwanted_spaces
highlight ExtraWhitespace ctermbg=darkgreen guibg=lightgreen
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhitespace /\s\+$/

source ~/.config/nvim/ctrlp.vim
source ~/.config/nvim/typescript-vim.vim
source ~/.config/nvim/deoplete.vim
source ~/.config/nvim/livedown.vim
source ~/.config/nvim/ale.vim
source ~/.config/nvim/elm.vim
source ~/.config/nvim/nerdcommenter.vim
source ~/.config/nvim/multiple-cursors.vim
source ~/.config/nvim/minibufexpl.vim
" source ~/.config/nvim/tsuquyomi.vim
source ~/.config/nvim/handlebars.vim
source ~/.config/nvim/ack.vim
source ~/.config/nvim/latex.vim
source ~/.config/nvim/notational.vim
source ~/.config/nvim/rest-console.vim

autocmd FileType vue syntax sync fromstart


" if has("gui_running")
"   source ~/.config/nvim/gui.vim
" endif
if !(has("gui_running") || has("gui_vimr"))
  source ~/.config/nvim/nerdtree.vim
  highlight Normal ctermbg=NONE
  highlight nonText ctermbg=NONE
elseif has("gui_running")
  source ~/.config/nvim/gui.vim
endif

