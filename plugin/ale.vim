let g:ale_linters = {
\   'javascript': ['eslint'],
\   'jsx': ['eslint'],
\ }

let g:ale_fixers = {
\   'javascript': ['eslint']
\ }

" Don't highlight the whole line
let g:ale_set_highlights=0

" Only lint when saving file
" let g:ale_lint_on_text_changed = 'never'

" Directly fix when saving
" let g:ale_fix_on_save = 1

" Modify icons and colors
let g:ale_sign_error = '✖'
hi ALEErrorSign ctermfg=160 ctermbg=236
let g:ale_sign_warning = '⚠'
hi ALEWarningSign ctermfg=222 ctermbg=236


