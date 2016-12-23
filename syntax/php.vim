" variables and identifiers
hi phpIdentifier ctermfg=015
" class variables
hi link phpMethodsVar phpIdentifier
" $ and :: and =>
hi link phpVarSelector phpIdentifier
hi link phpMemberSelector phpIdentifier
hi link phpOperator phpIdentifier
" parentheses
hi phpParent ctermfg=015
" method-calls
hi phpMethod ctermfg=040
" Strings
hi phpStringSingle ctermfg=114
hi link phpStringDouble phpStringSingle
" function and type keywords
hi phpType ctermfg=081
hi phpKeyword ctermfg=140
" internal php functions
hi link phpFunctions phpStaticClasses
"Comments
hi phpCommentStar ctermfg=243
hi link phpDocComment phpCommentStar
hi link phpCommentTitle phpCommentStar
hi link phpDocTags phpCommentStar
hi link phpDocParam phpCommentStar
hi link phpDocIdentifier phpCommentStar
hi link phpComment phpCommentStar

