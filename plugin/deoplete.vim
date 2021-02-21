" Close the information window when completion is done
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" Activate deoplete
let g:deoplete#enable_at_startup = 1

" Show type hints
let g:deoplete#sources#ternjs#types = 1

" Show documentation when available
let g:deoplete#sources#ternjs#docs = 1

" Add parentheses after completions
let g:neopairs#enable = 1

" Enable multi-threading -> see: https://github.com/carlitux/deoplete-ternjs/issues/88#issuecomment-713913170
call deoplete#custom#option('num_processes', 4)

" Sources

" setup multiple omnifunctions
call deoplete#custom#var('omni', 'functions', {
\ 'javascript': ['tern#Complete', 'jspc#omni']
\})

" init variables
  call deoplete#custom#option('sources', {
  \ 'javascript': ['buffer', 'tern'],
  \})

" all files get buffer and snippets (seems to be default?)

" ¯\_(ツ)_/¯ - it works
call deoplete#custom#source('_', 'converters', [
  \ 'converter_auto_paren',
  \ 'converter_remove_overlap',
  \ 'converter_truncate_abbr',
  \ 'converter_truncate_menu',
  \ 'converter_auto_delimiter',
  \ ])
