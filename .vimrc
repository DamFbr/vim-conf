"""""""""""""""""""""""""""""""""""""""
" @file vimrc
" @author Damien Fabre
" @brief Vim configuration file
" @version 0.1
" @date 10-2017
"""""""""""""""""""""""""""""""""""""""



" --- VIM Plugins

" ----- Vundle
set nocompatible                        " Cancel the Vi ancestor's compatibility, required
filetype off                            " Disable file type detection, required
set rtp+=~/.vim/bundle/Vundle.vim       " Set the runtime path to include Vundle

" ------- Plugins
call vundle#begin()                     " Initialize Vundle
Plugin 'VundleVim/Vundle.vim'           " Let Vundle manage Vundle, required

" --------- Exploration
Plugin 'scrooloose/nerdtree'            " The NERD Tree

" --------- Edition
Plugin 'tpope/vim-surround'			" Surround
Plugin 'jiangmiao/auto-pairs'			" Auto-pairs
Plugin 'justmao945/vim-clang'			" Clang
Plugin 'octol/vim-cpp-enhanced-highlight' 	" C++ enhanced highlight
Plugin 'davidhalter/jedi-vim'           	" Jedi
Plugin 'andviro/flake8-vim'             	" Flake8

" --------- Versioning
Plugin 'airblade/vim-gitgutter'		" Git gutter
Plugin 'tpope/vim-fugitive'		" Fugitive
call vundle#end()                       " Terminate plugins initialization, required

filetype plugin indent on               " Enable loading the plugin and indent files for specific file types, required

" ----- Solarized theme
set background=dark             " Set dark background (change values of lines 303 - 304 in solarized.vim)
let g:solarized_termcolors=256  " Ask Solarized to use the 256 standard colors' terminal emulator
colorscheme solarized           " Activate Solarized colorscheme



" --- VIM Configuration

" ----- Behavior
set nocompatible                " Cancel the Vi ancestor's compatibility
set noerrorbells                " Disable the beep sound when an error occurs
set novisualbell                " Disable the screen's flash when an error occurs
"set t_vb=                      " Set empty to avoid beeping and flashing
set hidden                      " Hide the buffers when differents files are opened
set backspace=indent,eol,start  " Allow usual behavior for backspacing
"set mouse=a			" Enable use of the mouse in all modes

" ----- Display
set title                       " Update window's or terminal's title
set number                      " Display lines' number
set ruler                       " Display cursor's actual position
set wrap                        " Divide a too long line on several new lines
set scrolloff=5                 " Display at least 5 lines around the cursor (for scrolling)

" ----- Search
set ignorecase                  " Ignore letter case (when searching)
set smartcase                   " Activate letter case sensitivity if search contains capital letter
set incsearch                   " Underline search's result while typing
set hlsearch                    " Underline search's result
let @/=""			" Clean the last search's pattern (when resourcing vimrc file)

"nnoremap <leader><ESC> :nohlsearch<return><ESC>    " Clear the last search's highlighting

" ----- Coding settings
syntax enable                   " Allow syntax coloration
"filetype on                     " Enable file type detection
"filetype plugin on              " Enable loading the plugin files for specific file types
"filetype indent on              " Enable loading the indent file for specific file types

" ----- Keys Mapping

" ------- Comfortable mapping for the basics
let mapleader=","		" Define ',' key as Leader key

" Mapping ';;' with Escape key
map ;; <Esc>
imap ;; <Esc>

" Disabling directional keys
map <up> <nop>
map <down> <nop>
map <right> <nop>
map <left> <nop>
imap <up> <nop>
imap <down> <nop>
imap <right> <nop>
imap <left> <nop>

" ------- Search
nnoremap <leader><ESC> :nohlsearch<CR><ESC>	" Clear the last search's highlighting

" ------- Editing several files
map <leader>t :tabnew<CR>           " Open a new tab-page (window)
map <leader>> :tabnext<CR>          " Move to next tab-page
map <leader>< :tabprevious<CR>      " Move to previous tab-page
map <leader>s :split<CR>            " Split the tab-page horizontally
map <leader>v :vsplit<CR>           " Split the tab-page vertically
map <leader>b :bn<CR>               " Go to the next file (buffer) in buffer list

" ------- Plugins mapping

" ----------- The NERD Tree
map <leader>n :NERDTreeToggle<CR>		" Toggle NERDTree window

" ----------- Jedi
let g:jedi#usages_command='<leader>s'		" Avoid conflict with NERDTree mapping 
"
" ----------- Flake8
let g:PyFlakeOnWrite = 1			" Auto-check file for errors on write (saving)
