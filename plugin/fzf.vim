" Let :FZF/:Files command use global .ignore patterns specified in
" .agignore-file
let $FZF_DEFAULT_COMMAND='ag --skip-vcs-ignores -p ~/.config/nvim/.agignore -g ""'

" Let :Ag command use global .ignore patterns specified in
" .agignore-file
autocmd VimEnter * command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>, '--skip-vcs-ignores -p ~/.config/nvim/.agignore', <bang>0)

" Position the popup-window
let g:fzf_layout = { 'down': '~50%' }
