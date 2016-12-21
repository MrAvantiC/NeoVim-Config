" general html
hi htmlTagName ctermfg=179
hi link htmlTagN htmlTagName
hi link htmlTag htmlTagName
hi link htmlEndTag htmlTagName
hi htmlArg ctermfg=166
hi htmlString ctermfg=114
hi htmlLink ctermfg=015
" Conditionals, functions, etc
hi smartyTagName ctermfg=196
hi link smartyConditional smartyTagName
hi link smartyRepeat smartyTagName
" variables
hi smartyDollarSign ctermfg=109
hi link Delimiter smartyDollarSign 
hi link smartyVariable smartyDollarSign
hi link smartyStringDouble smartyDollarSign
hi link Constant smartyDollarSign
" function calls
hi smartyModifier ctermfg=040
" Operators
hi link smartyZone smartyNumber
hi link smartyOperator smartyZone
"comments
hi smartyComment ctermfg=243
