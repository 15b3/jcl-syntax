" JCL syntax file
" Language:     JCL
" Maintainer:   15b3
" Last Change:  2020-11-21
" Filenames: *.jcl
" License: MIT License
" URL: https://github.com/15b3/jcl-syntax

if exists("b:current_syntax")
  finish
endif


syn match jclKeyword "\v^step"
syn match jclKeyword "\v^job"

syn keyword jclKeyword2 allow pgm
syn match jclKeyword2 "\vdd in"

syn keyword jclKeyword2 condition

syn match jclKeyword2 "\vdd in"
syn match jclKeyword2 "\vdd out"
syn match jclKeyword2 "\vsys stop"
syn match jclKeyword2 "\vsys sendmail"

syn match jclComment "^\s*\zs#.*$"

syn match jclPrePro "^\s*\zs%.*$"

syn match jclOperator "\v\=\="
syn match jclOperator "\v\!\="
syn match jclOperator "\v\!\="
syn match jclOperator "\vor"
syn match jclOperator "\vand"

" 予約変数名
syn match jclReservedVar "\${YY}"
syn match jclReservedVar "\${YY_2}"
syn match jclReservedVar "\${MM}"
syn match jclReservedVar "\${DD}"
syn match jclReservedVar "\${HH}"
syn match jclReservedVar "\${MI}"
syn match jclReservedVar "\${ANZEN}"
syn match jclReservedVar "\${SEND}"
syn match jclReservedVar "\${DELETE}"

syn match jclPreVar "<%=.\{-}%>"

hi def link jclKeyword Statement
hi def link jclKeyword2 Function

hi def link jclPrePro PreCondit
hi def link jclOperator Operator

hi def link jclPreVar Identifier
hi def link jclReservedVar SpecialChar

hi def link jclComment Comment


let b:current_syntax = "jcl"
