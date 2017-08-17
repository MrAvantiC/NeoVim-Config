" Automatically format on save
autocmd BufWrite *.js :Autoformat
"setlocal tabstop=4 shiftwidth=4

" Automatically lint after save
autocmd! BufWritePost,BufEnter * Neomake
