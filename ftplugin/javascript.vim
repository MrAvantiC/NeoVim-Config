" Automatically format on save
autocmd BufWrite *.js :Autoformat

" Automatically lint after save
autocmd! BufWritePost,BufEnter * Neomake
