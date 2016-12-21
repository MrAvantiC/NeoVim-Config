" ============================================================================
" PLUGINS
" ============================================================================

" Specify directory-path for my plugins
call plug#begin('~/.config/nvim/plugged')

" Colors
Plug 'junegunn/seoul256.vim'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Navigation
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

" Editing
Plug 'tpope/vim-surround'
Plug 'Raimondi/delimitMate'
Plug 'Valloric/MatchTagAlways'
Plug 'scrooloose/nerdcommenter'

" Autocompletions
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'carlitux/deoplete-ternjs'
Plug 'SirVer/ultisnips'

" Formatting
Plug 'Chiel92/vim-autoformat'

" Linting
Plug 'neomake/neomake'
Plug 'jaawerth/neomake-local-eslint-first'

" Utility
Plug 'itchyny/lightline.vim'
Plug 'taohex/lightline-buffer'

" Language support
Plug 'digitaltoad/vim-pug', { 'for': 'pug' }
Plug 'blueyed/smarty.vim', { 'for': 'smarty' }
Plug 'wavded/vim-stylus', { 'for': 'stylus' }
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }

call plug#end()


" ============================================================================
" BASIC SETTINGS
" ============================================================================

" Make sure VIM is displayed in english
let $LANG = 'en'

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
"set nohlsearch

" Align breaking lines with the line above
set breakindent

" Enable hiding buffers without needing to save them
set hidden

" Always have lines above/below the cursor for better overview
set scrolloff=10

" Horizontal split at bottom and vertical split to the right
set splitbelow
set splitright

" Remember cursor position between vim sessions
autocmd BufReadPost *
              \ if line("'\"") > 0 && line ("'\"") <= line("$") |
              \   exe "normal! g'\"" |
              \ endif
              " center buffer around cursor when opening files
autocmd BufRead * normal zz


" ============================================================================
" COLOR SETTINGS
" ============================================================================

" Background
let g:seoul256_background = 235
color seoul256

" LineNumbers
highlight LineNr ctermfg=243
highlight CursorLineNr ctermfg=255 ctermbg=236

" Highlight the current line
set cursorline
highlight CursorLine ctermfg=none ctermbg=236

" Suggestion popup menu
highlight Pmenu ctermfg=255 ctermbg=237
highlight PmenuSel ctermfg=235 ctermbg=250

" Highlight Matching parentheses
highlight MatchParen cterm=bold ctermbg=none ctermfg=015


" ============================================================================
" KEYBINDINGS
" ============================================================================

" Remappings for escape-key
inoremap jj <Esc>

" Copy and Paste from clipboard
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>p "+p
vnoremap <leader>p "+p
inoremap <C-v> <Esc>"+pa

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

" Faster Scrolling
nmap J 5j
nmap K 5k
nnoremap <leader>j J

" Select all with ctrl+a
map <C-A> <Esc>ggVG

" Delete line in insert mode
inoremap <C-d> <Esc>ddi

" Move lines
nnoremap <C-A-k> :move .-2<Return>
nnoremap <C-A-j> :move .+1<Return>
inoremap <C-A-j> <ESC>:move .+1<CR>==gi
inoremap <C-A-k> <ESC>:move .-2<CR>==gi
vnoremap <C-A-j> :move '>+1<CR>gv=gv
vnoremap <C-A-k> :move '<-2<CR>gv=gv

" Map tab/shift+tab for indenting 
nmap <Tab> a<C-t><Esc>
nnoremap <S-Tab> a<C-d><Esc>
vnoremap < >gv
vnoremap > <gv
inoremap <S-Tab> <C-d>

" Move between buffers with arrows
nnoremap <silent> <Left> :bprev<CR>
nnoremap <silent> <Right> :bnext<CR>

" Move between splits with ctrl+arrows
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l
" If Ctrl+h doesn't work for you, use these commands in your terminal:
" infocmp $TERM | sed 's/kbs=^[hH]/kbs=\\177/' > $TERM.ti
" tic $TERM.ti
" see also: https://github.com/neovim/neovim/wiki/FAQ#my-ctrl-h-mapping-doesnt-work

" Close current buffer with ctrl+w
map <C-w> :bd<Return>

" Remap move to beginning/end of line
nnoremap H _
nnoremap L g_
vnoremap H _
vnoremap L g_

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

" Clear highlighted search results
map <silent> <Esc> :nohlsearch<CR>

" qq to record macro, Q to replay it
nnoremap Q @q

" NerdTree
map <leader>n :NERDTreeToggle<CR>
map <leader>c :NERDTreeFind<CR>

" NerdCommenter
map <C-c> <plug>NERDCommenterToggle
imap <C-c> <Esc><plug>NERDCommenterToggle_

" FZF
nmap <leader>t :FZF<CR>
nmap <leader>b :Buffers<CR>
nmap <leader>f :Ag 
nmap <leader>F :Ag <C-r><C-w><CR>
vmap <leader>f y:Ag <C-r><C-w><CR>
nmap <leader>g :GFiles?<CR>

" Neomake -> go to next error/warning
nmap <leader>l :ll<CR>

" Show highligh-group for item under cursor
nmap <leader>h :echo synIDattr(synID(line("."), col("."), 1), "name")<CR>

" Folds
nnoremap <leader><space> za
" vim-files
autocmd FileType vim setlocal foldmethod=manual
autocmd FileType vim setlocal foldlevel=0
" Stylus
autocmd FileType stylus setlocal foldmethod=indent
autocmd FileType stylus setlocal foldlevel=99
" javascript
autocmd FileType javascript setlocal foldmethod=syntax
autocmd FileType javascript setlocal foldlevel=99


" ============================================================================
" FUNCTIONS
" ============================================================================

" Allow to toggle between absolute and relative line-numbers
function! NumberToggle()
  if(&relativenumber == 1)
    set number norelativenumber
  else
    set number relativenumber
  endif
endfunc
nnoremap <C-n> :call NumberToggle()<cr>

" Remove trailing whitespaces for specified filetypes
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
autocmd FileType php,javascript autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()

" Folds
"set foldtext=MyFoldText()
"function MyFoldText()
  "let line = getline(v:foldstart)
  "let sub = substitute(line, '/\*\|\*/\|{{{\d\=', '', 'g')
  "return v:folddashes . sub
"endfunction
