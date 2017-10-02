" Let :FZF/:Files command use global .ignore patterns specified in
" .agignore-file
let $FZF_DEFAULT_COMMAND='ag --skip-vcs-ignores -p ~/.config/nvim/.agignore -g ""'

" Let :Ag command use global .ignore patterns specified in
" .agignore-file
autocmd VimEnter * command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>, 
  \                 '--skip-vcs-ignores -p ~/.config/nvim/.agignore',
  \                 <bang>0 ? fzf#vim#with_preview('up:60%')
  \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
  \                 <bang>0)

" Position the popup-window
let g:fzf_layout = { 'down': '~50%' }

" NOTE:
" Select-All uses shortcut Alt+A, but iTerm2+neovim
" won't work until you escape the characters generated:
" https://github.com/junegunn/fzf.vim/issues/54#issuecomment-235280717
