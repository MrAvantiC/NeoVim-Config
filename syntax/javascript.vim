" Strings
hi jsString ctermfg=114
" Keywords
hi jsThis ctermfg=140
hi link jsSuper jsThis
hi link jsImport jsThis
hi link jsFrom jsImport
hi link jsExport jsImport
hi link jsExportDefault jsImport
hi link jsConditional jsImport
hi link jsRepeat jsImport
hi link jsTernaryIfOperator jsImport
hi link jsClassKeyword jsImport
hi link jsExtendsKeyword jsImport
" Keys in key/value-objects
hi jsObjectStringKey ctermfg=185
"hi link jsObjectProp jsObjectStringKey
hi link jsObjectKey jsObjectStringKey
" variable definitions
hi jsStorageClass ctermfg=081
"hi link jsClassKeyword jsStorageClass
"hi link jsExtendsKeyword jsStorageClass
" javascript native objects/prototypes
hi link jsPrototype jsStorageClass
hi link jsGlobalObjects jsStorageClass
" return statement
hi link jsReturn jsStorageClass
" null value
hi link jsNull jsBooleanTrue
" function definition
hi jsObjectFuncName ctermfg=214
hi link jsClassFuncName jsObjectFuncName
hi link jsClassProperty jsObjectFuncName
hi link jsFunction jsStorageClass
" function key
hi jsFunctionKey ctermfg=214
" function call
hi jsFuncCall ctermfg=040
" Arrow function
hi jsArrowFunction ctermfg=015
" Class Definition
hi jsClassDefinition ctermfg=015
" Decorators
hi jsDecorator ctermfg=015
hi link jsDecoratorFunction jsDecorator
" Equal signs
hi jsOperator ctermfg=015
" normal numbers
hi jsNumber ctermfg=015
" template strings
hi link templateString jsObjectStringKey
hi link jsTemplateVar jsObjectStringKey
hi link jsTemplateBraces jsObjectStringKey
hi link jsTemplateString jsObjectStringKey
" comments
hi jsComment ctermfg=243
" JS-Doc
hi jsDocTags ctermfg=243 cterm=bold
hi jsDocParam ctermfg=247
hi link jsDocType jsComment
hi link jsDocTypeNoParam jsComment
" JSX
hi link jsxTagName jsVariableDef
hi link jsxComponentName jsVariableDef
hi link jsxBraces jsVariableDef
hi link jsxOpenPunct jsVariableDef
hi link jsxClosePunct jsVariableDef
hi link jsxCloseString jsVariableDef
hi link jsxString jsString
