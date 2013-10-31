
if &t_Co != 256 && ! has("gui_running")
  echomsg ""
  echomsg "err: please use GUI or a 256-color terminal (so that t_Co=256 could be set)"
  echomsg ""
  finish
endif

set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "mgj256"


if has("gui_running")
  hi Normal       guifg=#eeeeee   guibg=#000000
  hi MatchParen   guifg=#d7d7d7   guibg=#5f87d7

  hi Todo         guifg=#000000   guibg=#d7d787   gui=bold
  hi Error        guifg=#000000   guibg=#d7d787   gui=bold
  hi ErrorMsg     guifg=#000000   guibg=#d0d0d0   gui=none
  hi Search       guifg=#767676   guibg=#ffff5f   gui=none
  hi StatusLine   guifg=#8a8a8a                   gui=none
  hi StatusLineNC guifg=#8a8a8a                   gui=none
  hi Constant     guifg=#d7d787                   gui=bold
  hi Exception    guifg=#ffaf87                   gui=bold
  hi Exceptions   guifg=#ff8787                   gui=none
  hi PreProc      guifg=#d7af87                   gui=none
  hi NonText      guifg=#4e4e4e                   gui=none
  hi Comment      guifg=#6c6c6c                   gui=none
  hi Number       guifg=#ffd75f                   gui=none
  hi String       guifg=#5faf87                   gui=none
  hi LineNr       guifg=#a8a8a8                   gui=none
  
  hi Function     guifg=#af8787                   gui=none
  hi Type         guifg=#d7ffaf                   gui=none
  hi Special      guifg=#afd7af                   gui=none
  hi Statement    guifg=#d7d787                   gui=none
  hi Identifier   guifg=#87875f                   gui=none
  hi Conditional  guifg=#ff8787                   gui=none
  hi Repeat       guifg=#d7ff87                   gui=none
  hi Operator     guifg=#af5f5f                   gui=none
  hi Builtin      guifg=#87af5f                   gui=none
  
  hi NonText      guifg=#87afd7
  hi HiBeginTab   guifg=#af5f5f   guibg=#1c1c1c
  hi UnHibeginTab guifg=#eeeeee
  
  hi OverLength                            cterm=underline

else

  hi Comment        ctermfg=241             cterm=none
  hi Normal         ctermfg=249 ctermbg=233 cterm=none

  hi MatchParen     ctermfg=188 ctermbg=68  cterm=bold
  hi Todo           ctermfg=131  ctermbg=237 cterm=bold
  "hi Error          ctermfg=16  ctermbg=186 cterm=bold
  hi Error          ctermfg=249  ctermbg=233 cterm=none
  hi ErrorMsg       ctermfg=16  ctermbg=252 cterm=none
  hi Search         ctermfg=243 ctermbg=227 cterm=none
  hi StatusLine     ctermfg=245             cterm=bold
  hi StatusLineNC   ctermfg=16              cterm=bold
  
  hi Constant       ctermfg=186             cterm=bold
    hi String       ctermfg=65              cterm=none
    hi Character    ctermfg=65              cterm=none
    hi Number       ctermfg=110             cterm=none
    hi Float        ctermfg=110             cterm=none
    hi Boolean      ctermfg=193            cterm=none
  
  hi Exception      ctermfg=216             cterm=bold
  hi Exceptions     ctermfg=210             cterm=none
  
  hi PreProc        ctermfg=180             cterm=bold
    hi Include      ctermfg=180             cterm=bold

  hi NonText        ctermfg=239             cterm=none
  hi LineNr         ctermfg=248             cterm=none
  
  hi Identifier     ctermfg=194             cterm=bold
    "hi Function     ctermfg=108            cterm=bold,italic
    "hi Function     ctermfg=108            cterm=bold,underline
    hi Function     ctermfg=108            cterm=bold

  hi Type           ctermfg=193             cterm=none
    hi StorageClass ctermfg=255             cterm=bold
    hi Structure    ctermfg=181             cterm=bold
    hi Typedef      ctermfg=255             cterm=bold

  hi Special        ctermfg=255           cterm=bold

  hi Statement      ctermfg=73             cterm=none
    "hi Conditional  ctermfg=210             cterm=italic
    hi Conditional  ctermfg=210             cterm=bold
    hi Repeat       ctermfg=192             cterm=bold
    hi Operator     ctermfg=216           cterm=none
    hi Label        ctermfg=150           cterm=none
    hi Keyword      ctermfg=255             cterm=bold

  hi Builtin        ctermfg=107             cterm=none
  hi FoldColumn     ctermfg=252 ctermbg=240
  hi Folded         ctermfg=252 ctermbg=237

  hi NonText        ctermfg=110
  hi HiBeginTab     ctermfg=131 ctermbg=234
  hi UnHibeginTab   ctermfg=255
  
  hi OverLength                            cterm=underline
  match OverLength /\%77v.\+/

endif

