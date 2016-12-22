" Show hidden Files
let NERDTreeShowHidden=1
" Size of Nerdtree-Window
let g:NERDTreeWinSize=40
" Filter VIM swap-files from tree
let NERDTreeIgnore = ['\.swp$', '.DS_Store', '.gitignore']


" Highlighting inside NERDTree
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name

"Enable open/close for folders/directories
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1

" Reset all default highlighting
let g:NERDTreeSyntaxDisableDefaultExtensions = 1

" Folder Colors
hi NerdTreeDir ctermfg=255
hi link NerdTreeOpenable NerdTreeDir 
hi NerdTreeCWD ctermfg=030
hi NerdTreeUp ctermfg=242
hi NerdTreeFile ctermfg=248


" Filetype specific colors
let s:yellow = "F0DB4F"
let s:orange = "E34C26"
let s:green = "B3D107"
let s:grey = "a8a8a8"
let s:purple = "777BB4"

let g:NERDTreeExtensionHighlightColor = {}
let g:NERDTreePatternMatchHighlightColor = {} 
let g:NERDTreeExactMatchHighlightColor = {}

" Markup
let g:NERDTreeExtensionHighlightColor['html'] = s:orange
let g:NERDTreeExtensionHighlightColor['jade'] = s:orange

" Stylesheets
let g:NERDTreeExtensionHighlightColor['css'] = s:green
let g:NERDTreeExtensionHighlightColor['styl'] = s:green
let g:NERDTreeExtensionHighlightColor['scss'] = s:green

" JS
let g:NERDTreeExtensionHighlightColor['js'] = s:yellow

" PHP
let g:NERDTreeExtensionHighlightColor['php'] = s:purple

" config files
"let g:NERDTreeExtensionHighlightColor['yaml'] = s:grey
"let g:NERDTreeExtensionHighlightColor['yml'] = s:grey
"let g:NERDTreeExtensionHighlightColor['md'] = s:grey
"let g:NERDTreePatternMatchHighlightColor['\..*'] = s:orange
"let g:NERDTreePatternMatchHighlightColor['.*$'] = s:orange
"let g:NERDTreePatternMatchHighlightColor['\.*'] = s:grey
let g:NERDTreeExactMatchHighlightColor['favicon.ico'] = s:orange
let g:NERDTreeExactMatchHighlightColor['Gruntfile.js'] = s:yellow
