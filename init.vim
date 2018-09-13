" ============================================================================
" PLUGINS
" ============================================================================

" Specify directory-path for my plugins
call plug#begin()

" Colors
Plug 'junegunn/seoul256.vim'

" Navigation
Plug 'scrooloose/nerdtree', { 'on':  ['NERDTreeToggle', 'NERDTreeFind'] }
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'easymotion/vim-easymotion'

" Editing
Plug 'scrooloose/nerdcommenter'
Plug 'thinca/vim-qfreplace'
Plug 'Raimondi/delimitMate'
Plug 'Valloric/MatchTagAlways'
Plug 'machakann/vim-highlightedyank'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'triglav/vim-visual-increment'
Plug 'junegunn/vim-easy-align'
Plug 'FooSoft/vim-argwrap'

" Autocompletions
Plug 'SirVer/ultisnips'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'Shougo/neopairs.vim'
Plug 'othree/jspc.vim'

" Linting (only JS for now)
Plug 'w0rp/ale', { 'for': ['javascript'] }

" Utility
Plug 'itchyny/lightline.vim'
Plug 'taohexxx/lightline-buffer'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Language support
Plug 'digitaltoad/vim-pug', { 'for': 'pug' }
Plug 'blueyed/smarty.vim', { 'for': 'smarty' }
Plug 'wavded/vim-stylus', { 'for': 'stylus' }
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'mxw/vim-jsx'
Plug 'heavenshell/vim-jsdoc', { 'for': 'javascript' }
Plug 'StanAngeloff/php.vim', { 'for': 'php' }
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
Plug 'shime/vim-livedown', { 'for': 'markdown' }

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

" Highlight Matching parentheses
highlight MatchParen cterm=bold ctermbg=none ctermfg=015

 "Suggestion popup menu
highlight Pmenu ctermfg=255 ctermbg=237
highlight PmenuSel ctermfg=235 ctermbg=250


" ============================================================================
" BASIC SETTINGS
" ============================================================================

" Make sure VIM is displayed in english
let $LANG = 'en_US'

" Set the Leader to <Space>
let mapleader = " "

" Always use system clipboard
set clipboard=unnamed

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

" Searching
set ignorecase

" Show live feedback during search&replace
set inccommand=split
    
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

" Move to the next empty line
map , }
map ; {


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
nnoremap <leader>a <Down>ggVG"+y<Up><C-o><C-o>

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

" Rotate open splits
nnoremap <leader>r <C-W>r

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
nmap <leader>s :%s/
vmap <leader>s :s/

" Clear highlighted search results
map <silent> <Esc> :nohlsearch<CR>

" Operations until next closing brackets
nmap cb c%
nmap db d%
nmap yb y%

" qq to record macro, Q to replay it
nnoremap Q @q
vnoremap Q :normal @q<CR>

" highlight just the text (no indents) in line
nnoremap vv ^vg_

" opy just the text (no indents) in line
nnoremap yy ^yg_

" Suppress annoying range-errors when leaving visual mode
vmap <silent> <esc> <esc>

" Make esc working in select-mode
smap <esc> <c-o><esc>

" Show highligh-group for item under cursor
nmap <leader>h :echo synIDattr(synID(line("."), col("."), 1), "name")<CR>

" Update config
map <leader>u :source ~/.config/nvim/init.vim<CR>


" ============================================================================
" KEYBINDINGS - PLUGINS
" ============================================================================

" NerdTree
map <leader>n :NERDTreeToggle<CR>
map <leader>c :NERDTreeFind<CR>

" NerdCommenter
map <C-c> <plug>NERDCommenterToggle

" FZF
nmap <leader>t :FZF<CR>
nmap <leader>b :Buffers<CR>
nmap <leader>f :Ag 
nmap <leader>F :Ag <C-r><C-w><CR>
vmap <leader>f y:Ag <C-r>"<CR>
nmap <leader>g :GFiles?<CR>

" EasyMotion
map f <Plug>(easymotion-bd-f)
map F <Plug>(easymotion-bd-f2)

" EasyAlign
nmap ga <Plug>(EasyAlign)
vmap ga <Plug>(EasyAlign)

" ArgWrap
nnoremap <silent> <leader>d :ArgWrap<CR>
" overwrite the shortcut for JSON-files with a full format of the whole file
com! FormatJSON %!python3 -m json.tool
autocmd FileType json nnoremap <buffer> <leader>d :FormatJSON<CR>


" ============================================================================
" FUNCTIONS
" ============================================================================

" Remove trailing whitespaces for specified filetypes
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
autocmd FileType php,javascript autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()
