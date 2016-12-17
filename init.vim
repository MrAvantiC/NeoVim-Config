" ============================================================================
" PLUGINS
" ============================================================================

" Specify directory-path for my plugins
call plug#begin('~/.config/nvim/plugged')

" Colors
Plug 'junegunn/seoul256.vim'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Navigation
Plug 'scrooloose/nerdtree'

" Editing
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'

" Utility
Plug 'itchyny/lightline.vim'
Plug 'taohex/lightline-buffer'

call plug#end()


" ============================================================================
" BASIC SETTINGS
" ============================================================================

let mapleader = " "

" Display line numbers (relative in Normal and absolute in Insert)
set relativenumber number
autocmd InsertEnter * :set norelativenumber number
autocmd InsertLeave * :set relativenumber number

" Disable mouse-click support
set mouse-=a

" Disable automatic comments when inserting lines with o/O
autocmd FileType * setlocal formatoptions-=o

" Tabs
set expandtab
set tabstop=2
set shiftwidth=2
set smartindent

" Searching
set ignorecase

" Align breaking lines with the line above
set breakindent

" Enable hiding buffers without needing to save them
set hidden

" Always have lines above/below the cursor for better overview
set scrolloff=10


" ============================================================================
" COLOR SETTINGS
" ============================================================================

" Background
let g:seoul256_background = 235
color seoul256

" LineNumbers
highlight LineNr ctermfg=243
highlight CursorLineNr ctermfg=255

" Highlight the current line
set cursorline
highlight CursorLine ctermfg=none ctermbg=236

" ============================================================================
" KEYBINDINGS
" ============================================================================

" Remappings for escape-key
inoremap <C-j> <Esc>
inoremap jj <Esc>
nnoremap <C-j> <Esc>
vnoremap <C-j> <Esc>

" Copy and Paste from clipboard
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>p "+p
vnoremap <leader>p "+p

" Save buffer
inoremap <C-s> <Esc>:update<cr>
nnoremap <C-s> :update<cr>

" Quit VIM
nnoremap <c-q>     :q<cr>
nnoremap <leader>q :q<cr>

" Select all with ctrl+a
map <C-A> <Esc>ggVG

" Move linewise up and down, even on wrapped lines
nmap j gj
nmap k gk

" Scroll by pages
nmap J <C-f>
nmap K <C-b>
nnoremap <leader>j J

" Select all with ctrl+a
map <C-A> <Esc>ggVG

" Move lines
nnoremap <C-k> :move .-2<Return>
nnoremap <C-j> :move .+1<Return>
"inoremap <C-j> <ESC>:move .+1<CR>==gi
"inoremap <C-k> <ESC>:move .-2<CR>==gi
vnoremap <C-j> :move '>+1<CR>gv=gv
vnoremap <C-k> :move '<-2<CR>gv=gv

" Map tab/shift+tab for indenting 
nmap <Tab> a<C-t><Esc>
nmap <S-Tab> a<C-d><Esc>
vnoremap < >gv
vnoremap > <gv
imap <S-Tab> <C-d>

" Move between buffers with arrows
nnoremap <Left> :bprev<CR>
nnoremap <Right> :bnext<CR>

" Move between splits with ctrl+arrows
nnoremap <C-down> <C-W>j
nnoremap <C-up> <C-W>k
nnoremap <C-left> <C-W>h
nnoremap <C-right> <C-W>l

" Close current buffer with ctrl+w
map <C-w> :bd<Return>

" Remap move to beginning/end of line
nnoremap ! 0
nnoremap ? $
vnoremap ! 0
vnoremap ? $<Left>

" Remap move to beginning/end of buffer
nnoremap <CR> G
nnoremap <BS> gg

" Enter linenumbers faster
nmap t :

" Start search with with 's' in normal mode 
nmap s /

" Vertically center search results
nnoremap n nzz
nnoremap N Nzz

" Shortcut for substitutes
nmap <leader>s :s/
nmap <leader>S :%s/

" qq to record, Q to replay
nnoremap Q @q

" Allow to toggle between absolute and relative line-numbers
function! NumberToggle()
  if(&relativenumber == 1)
    set number norelativenumber
  else
    set number relativenumber
  endif
endfunc
nnoremap <C-n> :call NumberToggle()<cr>
