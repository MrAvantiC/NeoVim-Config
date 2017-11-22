" Activate deoplete
let g:deoplete#enable_at_startup = 1

" Start autocompletion right away
let g:deoplete#auto_complete_start_length = 1

" Sources
" init variables
let g:deoplete#sources = {}
let g:deoplete#ignore_sources = {}

" all files get buffer and snippets
let g:deoplete#sources._ = ['buffer', 'ultisnips']

" filetype-specifics includes

let g:deoplete#sources.javascript = ['buffer', 'ultisnips', 'ternjs']
let g:deoplete#sources.stylus = ['buffer']
" filetype-specific excludes
let g:deoplete#ignore_sources.javascript = ['member']

"Add extra filetypes
let g:deoplete#sources#ternjs#filetypes = [
                \ 'jsx',
                \ 'javascript.jsx',
                \ ]
