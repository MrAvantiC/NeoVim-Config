" Strings
highlight jsString ctermfg=114
" Keywords
highlight jsImport ctermfg=196
highlight link jsFrom jsImport
highlight link jsExport jsImport
highlight link jsExportDefault jsImport
highlight link jsConditional jsImport
highlight link jsTernaryIfOperator jsImport
" Keys in key/value-objects
highlight jsObjectStringKey ctermfg=185
" variable definitions
highlight jsStorageClass ctermfg=081
" javascript native objects/prototypes
highlight link jsPrototype jsStorageClass
highlight link jsGlobalObjects jsStorageClass
" function definition
highlight jsObjectFuncName ctermfg=214
" function call
highlight jsFuncCall ctermfg=040
" this
highlight jsThis ctermfg=140
" Arrow function
highlight jsArrowFunction ctermfg=015
" normal numbers
highlight jsNumber ctermfg=015
" template strings
highlight link templateString jsObjectStringKey
highlight link jsTemplateVar jsObjectStringKey
highlight link jsTemplateBraces jsObjectStringKey
highlight link jsTemplateString jsObjectStringKey
" comments
highlight jsComment ctermfg=243
