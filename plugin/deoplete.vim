" Enable deoplete
let g:deoplete#enable_at_startup = 1
" Start autocompletion right away
let g:deoplete#auto_complete_start_length=1


" Set the sources deoplete pulls suggestions from
" init
let g:deoplete#sources = {}
" all files
let g:deoplete#sources._ = ['buffer', 'ultisnips']
" filetype-specifics
let g:deoplete#sources.javascript = ['buffer', 'ultisnips', 'ternjs']


" Unset the preview-option to avoid opening the documentation in new split
"set completeopt=menu,noinsert


" Set filetype-specific omnifunctions with this syntax if you want to support
" multiple omnifunctions
"let g:deoplete#omni#functions = {}
"let g:deoplete#omni#functions.javascript = [
  "\ 'tern#Complete'
  "\]


"" Let <Tab> also do completion
"inoremap <silent><expr> <Tab> pumvisible() ? "\<C-n>" : deoplete#mappings#manual_complete()
"" ...but map enter so it's not putting in a new line after selecting
"inoremap <expr> <Enter> pumvisible() ? "<Esc>a" : "<Enter>"


" Close the preview window when completion is done
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
