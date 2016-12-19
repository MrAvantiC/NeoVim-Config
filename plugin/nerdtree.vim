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

" Reset all default highlighting
let g:NERDTreeSyntaxDisableDefaultExtensions = 1

" Folder Colors
hi NerdTreeDir ctermfg=249
hi link NerdTreeCWD NerdTreeDir 
hi link NerdTreeOpenable NerdTreeDir 
hi NerdTreeUp ctermfg=255
hi NerdTreeFile ctermfg=255


" Filetype specific colors
let s:yellow = "F0DB4F"
let s:orange = "E34C26"
let s:green = "B3D107"

let g:NERDTreeExtensionHighlightColor = {}
let g:NERDTreePatternMatchHighlightColor = {} 

" Stylesheets
let g:NERDTreeExtensionHighlightColor['js'] = s:yellow
let g:NERDTreeExtensionHighlightColor['styl'] = s:green
"let g:NERDTreeExtensionHighlightColor['css'] = s:blue
"let g:NERDTreeExtensionHighlightColor['scss'] = s:blue
"let g:NERDTreeExtensionHighlightColor['sass'] = s:blue
"let g:NERDTreeExtensionHighlightColor['less'] = s:blue

" Markup
let g:NERDTreeExtensionHighlightColor['html'] = s:orange
let g:NERDTreeExtensionHighlightColor['jade'] = s:orange

" config files
"let g:NERDTreeExtensionHighlightColor['yaml'] = s:grey
"let g:NERDTreeExtensionHighlightColor['yml'] = s:grey
"let g:NERDTreeExtensionHighlightColor['md'] = s:grey
"let g:NERDTreePatternMatchHighlightColor['\..*'] = s:orange
"let g:NERDTreePatternMatchHighlightColor['.*$'] = s:orange
"let g:NERDTreePatternMatchHighlightColor['\.*'] = s:grey
