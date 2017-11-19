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
                
                













" Update config
map <leader>u :source ~/.config/nvim/init.vim<CR>


