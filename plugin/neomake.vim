let g:neomake_javascript_enabled_makers = ['eslint']

" Set Color of the error-mark on the side
highlight NeomakeErrorMsg ctermfg=160 ctermbg=236
let g:neomake_error_sign={'texthl': 'NeomakeErrorMsg'}

" Do not underline the error-line
let g:neomake_highlight_columns=0

" Set color of the whole line ->  HOW DOES THIS WORK?
"let g:neomake_highlight_lines=1
