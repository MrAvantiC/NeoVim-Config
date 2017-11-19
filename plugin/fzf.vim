" Let :FZF/:Files command use globally specified .ignore patterns 
" (while not respecting VCS ignore files like .gitignore)
let $FZF_DEFAULT_COMMAND='ag --skip-vcs-ignores -p ~/.config/nvim/.ignore -g ""'


" Let :Ag command use globally specified .ignore patterns 
" (while not respecting VCS ignore files like .gitignore)
" Workaround required, see: https://github.com/junegunn/fzf.vim/issues/276
autocmd VimEnter * command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>, 
  \                 '--skip-vcs-ignores -p ~/.config/nvim/.ignore',
  \                 <bang>0 ? fzf#vim#with_preview('up:60%')
  \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
\ <bang>0)

" Position and size of popup-window
let g:fzf_layout = { 'down': '~50%' }

" NOTE:
" Select-All uses shortcut Alt+A, but iTerm2+neovim
" won't work until you escape the characters generated:
" https://github.com/junegunn/fzf.vim/issues/54#issuecomment-235280717
