" Activate deoplete
let g:deoplete#enable_at_startup = 1

" Start autocompletion right away
let g:deoplete#auto_complete_start_length = 1

" Sources

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
