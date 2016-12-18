" Show hidden Files
let NERDTreeShowHidden=1
" Size of Nerdtree-Window
let g:NERDTreeWinSize=40
" Filter VIM swap-files from tree
let NERDTreeIgnore = ['\.swp$']


" Highlighting inside NERDTree
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name

" Folder Colors
hi NerdTreeDir ctermfg=252
hi link NerdTreeCWD NerdTreeDir 
hi link NerdTreeOpenable NerdTreeDir 
hi NerdTreeUp ctermfg=255


" Filetype specific colors

let s:yellow = "d8a235"
let s:blue = "5486C0"
let s:red = "FC5C68"
let s:grey = "8a8a8a"

let g:NERDTreeExtensionHighlightColor = {}
let g:NERDTreePatternMatchHighlightColor = {} 

" Stylesheets
let g:NERDTreeExtensionHighlightColor['js'] = s:yellow
let g:NERDTreeExtensionHighlightColor['styl'] = s:blue
let g:NERDTreeExtensionHighlightColor['css'] = s:blue
let g:NERDTreeExtensionHighlightColor['scss'] = s:blue
let g:NERDTreeExtensionHighlightColor['sass'] = s:blue
let g:NERDTreeExtensionHighlightColor['less'] = s:blue

" Markup
let g:NERDTreeExtensionHighlightColor['html'] = s:red
let g:NERDTreeExtensionHighlightColor['jade'] = s:red

" config files
let g:NERDTreeExtensionHighlightColor['yaml'] = s:grey
let g:NERDTreeExtensionHighlightColor['yml'] = s:grey
let g:NERDTreeExtensionHighlightColor['md'] = s:grey
"let g:NERDTreePatternMatchHighlightColor['.*$'] = s:grey
"let g:NERDTreePatternMatchHighlightColor['\.*'] = s:grey
