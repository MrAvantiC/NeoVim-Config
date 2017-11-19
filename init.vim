" ============================================================================
" PLUGINS
" ============================================================================

" Specify directory-path for my plugins
call plug#begin()

" Colors
Plug 'junegunn/seoul256.vim'

call plug#end()


" ============================================================================
" COLOR SETTINGS
" ============================================================================

" Background
let g:seoul256_background = 235
color seoul256

" Highlight the current line
set cursorline
highlight CursorLine ctermfg=none ctermbg=236

" LineNumbers
highlight LineNr ctermfg=243
highlight CursorLineNr ctermfg=255 ctermbg=236


" ============================================================================
" BASIC SETTINGS
" ============================================================================

" Make sure VIM is displayed in english
let $LANG = 'en_US'

" Set the Leader to <Space>
let mapleader = " "


" Display line numbers (relative in Normal and absolute in Insert)
set relativenumber number
autocmd InsertEnter * :set norelativenumber number
autocmd InsertLeave * :set relativenumber number

" Disable automatic comments when inserting lines with o/O
autocmd FileType * setlocal formatoptions-=o

" Tabs => use 2 spaces per Tab-Press
set expandtab
set tabstop=2
set shiftwidth=2

" indent reacting to the syntax/style of the code
set smartindent

" Align breaking lines with the line above
set breakindent
    
" Allow hiding buffers without needing to save them
set hidden

" Update open buffer every time we switch back to VIM
au FocusGained * checktime

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
" KEYBINDINGS - GENERAL
" ============================================================================
                
" Additional mapping for Escape-key
inoremap jj <Esc>

" Move linewise up and down, even on wrapped lines
nmap j gj
nmap k gk

" Scroll multiple lines
map J 5j
map K 5k

" Remap move to beginning/end of line
nnoremap H _
nnoremap L $
vnoremap H _
vnoremap L $

" Remap move to beginning/end of buffer
nnoremap <CR> G
vnoremap <CR> G
nnoremap <BS> gg

" Save buffer
inoremap <C-s> <Esc>:update<cr>
nnoremap <C-s> :update<cr>

" Select all with ctrl+a
map <C-A> <Esc>ggVG

" Copy everything in current buffer
nnoremap <leader>a ggVG"+y<C-o><C-o>

" Join lines
nnoremap <leader><leader>j J

" Use tab/shift+tab for indenting 
nmap <Tab> a<C-t><Esc>
nnoremap <S-Tab> a<C-d><Esc>
vnoremap < >gv
vnoremap > <gv
inoremap <S-Tab> <C-d>

" Move between buffers with arrows
nnoremap <silent> <Left> :bprev<CR>
nnoremap <silent> <Right> :bnext<CR>

" Open splits
nnoremap <leader>v <C-W>v
nnoremap <leader>x <C-W>s

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
map<silent> <C-w> :bp\|bd #<CR>
map<silent> <C-q> :bd<CR>
map<silent> <leader>w :q!<CR>

" Enter linenumbers faster
nmap t :

" Start search with with 's' in normal mode 
nmap s /
vnoremap s y/<C-r>"<CR>N

" Vertically center search results
nnoremap n nzz
nnoremap N Nzz

" Shortcut for substitutes
map <leader>S :%s//g<Left><Left>

" Clear highlighted search results
map <silent> <Esc> :nohlsearch<CR>

" Operations until next closing brackets
nmap cb c%
nmap db d%
vmap b %

" qq to record macro, Q to replay it
nnoremap Q @q
vnoremap Q :normal @q<CR>

" Suppress annoying range-errors when leaving visual mode
vmap <silent> <esc> <esc>

" Make esc working in select-mode
smap <esc> <c-o><esc>

" Show highligh-group for item under cursor
nmap <leader>h :echo synIDattr(synID(line("."), col("."), 1), "name")<CR>

" Update config
map <leader>u :source ~/.config/nvim/init.vim<CR>


