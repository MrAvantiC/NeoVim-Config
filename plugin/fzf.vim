" Set FZF to use ag for finding files -> allows us to specifiy ignore-patterns
" in global/local .agignore-files
let $FZF_DEFAULT_COMMAND='ag --skip-vcs-ignores -p ~/.config/nvim/.agignore -g ""'

" Position the popup-window
let g:fzf_layout = { 'down': '~50%' }
