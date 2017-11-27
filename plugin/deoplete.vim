" Close the information window when completion is done
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" Activate deoplete
let g:deoplete#enable_at_startup = 1

" Start autocompletion right away
let g:deoplete#auto_complete_start_length = 1

" Show type hints
let g:deoplete#sources#ternjs#types = 1

" Show documentation when available
let g:deoplete#sources#ternjs#docs = 1

" Add parentheses after completions
let g:neopairs#enable = 1


" Sources

" setup multiple omnifunctions
let g:deoplete#omni#functions = {}
let g:deoplete#omni#functions.javascript = [
  \ 'tern#Complete',
  \ 'jspc#omni'
\]

" init variables
let g:deoplete#sources = {}

" all files get buffer and snippets (seems to be default?)

" filetype-specifics includes
let g:deoplete#sources.javascript = ['buffer', 'tern']

"Add extra filetypes
let g:deoplete#sources#ternjs#filetypes = [
                \ 'jsx',
                \ 'javascript.jsx'
                \ ]

" ¯\_(ツ)_/¯ - it works
call deoplete#custom#source('_', 'converters', [
  \ 'converter_auto_paren',
  \ 'converter_remove_overlap',
  \ 'converter_truncate_abbr',
  \ 'converter_truncate_menu',
  \ 'converter_auto_delimiter',
  \ ])
