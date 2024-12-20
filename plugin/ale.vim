let g:ale_linters = {
\   'typescript': ['eslint'],
\   'javascript': ['eslint'],
\   'javascriptreact': ['eslint'],
\ }

let g:ale_fixers = {
\   'typescript': ['prettier', 'eslint'],
\   'javascript': ['prettier', 'eslint'],
\   'javascriptreact': ['prettier', 'eslint'],
\   'json': ['prettier']
\ }

" let g:ale_javascript_prettier_options = '--print-width=120'
" let g:ale_javascript_prettier_options = '--no-semi --single-quote --trailing-comma es5'

" Don't highlight the whole line
let g:ale_set_highlights = 0

" Only lint when saving file
" let g:ale_lint_on_text_changed = 'never'

" Directly fix when saving
let g:ale_fix_on_save = 1

" Modify icons and colors
let g:ale_sign_error = '✖'
hi ALEErrorSign ctermfg=160 ctermbg=236
let g:ale_sign_warning = '⚠'
hi ALEWarningSign ctermfg=222 ctermbg=236


