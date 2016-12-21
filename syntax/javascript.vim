" Strings
hi jsString ctermfg=114
" Keywords
hi jsImport ctermfg=196
hi link jsFrom jsImport
hi link jsExport jsImport
hi link jsExportDefault jsImport
hi link jsConditional jsImport
hi link jsRepeat jsImport
hi link jsTernaryIfOperator jsImport
" Keys in key/value-objects
hi jsObjectStringKey ctermfg=185
" variable definitions
hi jsStorageClass ctermfg=081
" javascript native objects/prototypes
hi link jsPrototype jsStorageClass
hi link jsGlobalObjects jsStorageClass
" return statement
hi link jsReturn jsStorageClass
" null value
hi link jsNull jsBooleanTrue
" function definition
hi jsObjectFuncName ctermfg=214
hi link jsFunction jsStorageClass
" function key
hi jsFunctionKey ctermfg=214
" function call
hi jsFuncCall ctermfg=040
" this
hi jsThis ctermfg=140
" Arrow function
hi jsArrowFunction ctermfg=015
" normal numbers
hi jsNumber ctermfg=015
" template strings
hi link templateString jsObjectStringKey
hi link jsTemplateVar jsObjectStringKey
hi link jsTemplateBraces jsObjectStringKey
hi link jsTemplateString jsObjectStringKey
" comments
hi jsComment ctermfg=243
