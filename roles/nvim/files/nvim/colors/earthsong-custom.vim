set background=dark
hi clear
syntax reset

" Colors for the User Interface.

hi Cursor      guibg=#cc4455  guifg=white     ctermbg=4 ctermfg=15
hi link CursorIM Cursor
hi Normal      guibg=#36312C  guifg=#EBD1B7    gui=none ctermbg=0 ctermfg=15
hi NonText     guibg=bg  guifg=#EBD1B7   ctermbg=8 ctermfg=14
hi Visual      guibg=#557799  guifg=white    gui=none ctermbg=9 ctermfg=15

hi Linenr      guibg=bg       guifg=#aaaaaa  gui=none ctermbg=bg ctermfg=7

" hi Directory   guibg=bg       guifg=#337700  gui=none ctermbg=bg ctermfg=10
hi Directory   guibg=bg       guifg=#a9a9a9  gui=none ctermbg=bg ctermfg=0 cterm=bold

hi IncSearch   guibg=#0066cc  guifg=white    gui=none ctermbg=1 ctermfg=15
hi link Seach IncSearch

hi SpecialKey  guibg=bg guifg=fg       gui=none ctermbg=bg ctermfg=fg
hi Titled      guibg=bg guifg=fg       gui=none ctermbg=bg ctermfg=fg

hi ErrorMsg    guibg=bg guifg=#ff0000   ctermbg=bg ctermfg=12
hi ModeMsg     guibg=bg guifg=#ffeecc  gui=none ctermbg=bg ctermfg=14
hi link  MoreMsg     ModeMsg
hi Question    guibg=bg guifg=#95CC5E   ctermbg=bg ctermfg=10
hi link  WarningMsg  ErrorMsg

hi StatusLine     guibg=#ffeecc  guifg=black     ctermbg=14 ctermfg=0
hi StatusLineNC   guibg=#cc4455  guifg=white    gui=none ctermbg=4  ctermfg=11
hi VertSplit      guibg=#cc4455  guifg=white    gui=none ctermbg=4  ctermfg=11

hi DiffAdd     guibg=#446688  guifg=fg    gui=none ctermbg=1 ctermfg=fg
hi DiffChange  guibg=#558855  guifg=fg    gui=none ctermbg=2 ctermfg=fg
hi DiffDelete  guibg=#884444  guifg=fg    gui=none ctermbg=4 ctermfg=fg
hi DiffText    guibg=#884444  guifg=fg     ctermbg=4 ctermfg=fg

" Colors for Syntax Highlighting.

hi Comment  guibg=bg  guifg=#7A7267  gui=none    ctermbg=8   ctermfg=7

hi Constant    guibg=bg    guifg=white        ctermbg=8   ctermfg=15
hi String      guibg=bg    guifg=#F8BB39    ctermbg=bg  ctermfg=14
hi Character   guibg=bg    guifg=#DB784D      ctermbg=bg  ctermfg=14
hi Number      guibg=bg    guifg=#F8BB39      ctermbg=1   ctermfg=15
hi Boolean     guibg=bg    guifg=#F8BB39  gui=none    ctermbg=1   ctermfg=15
hi Float       guibg=bg    guifg=#F8BB39      ctermbg=1   ctermfg=15

hi Identifier  guibg=bg    guifg=#EBD1B7      ctermbg=bg  ctermfg=12
hi Function    guibg=bg    guifg=#DB784D      ctermbg=bg  ctermfg=12
hi Statement   guibg=bg    guifg=#DB784D      ctermbg=bg  ctermfg=14

hi Conditional guibg=bg    guifg=#DB784D      ctermbg=bg  ctermfg=12
hi Repeat      guibg=bg    guifg=#DB784D      ctermbg=4   ctermfg=14
hi Label       guibg=bg    guifg=#ffccff      ctermbg=bg   ctermfg=13
hi Operator    guibg=bg    guifg=#DB784D      ctermbg=6   ctermfg=15
hi Keyword     guibg=bg    guifg=#DB784D      ctermbg=bg  ctermfg=10
hi Exception   guibg=bg    guifg=#DB784D      ctermbg=bg  ctermfg=10

hi PreProc    guibg=bg   guifg=#ffcc99   ctermbg=4  ctermfg=14
hi Include    guibg=bg   guifg=#95CC5E   ctermbg=bg ctermfg=10
hi link Define    Include
hi link Macro     Include
hi link PreCondit Include

hi Type       guibg=bg   guifg=#95CC5E      ctermbg=bg  ctermfg=12
hi StorageClass   guibg=bg   guifg=#DB784D      ctermbg=bg  ctermfg=10
hi Structure      guibg=bg   guifg=#EBD1B7      ctermbg=bg  ctermfg=10
hi Typedef    guibg=bg   guifg=#95CC5E    ctermbg=bg  ctermfg=10

hi Special    guibg=bg   guifg=#bbddff      ctermbg=1   ctermfg=15
hi SpecialChar    guibg=bg   guifg=#bbddff      ctermbg=1   ctermfg=15
hi Tag        guibg=bg   guifg=#bbddff      ctermbg=1   ctermfg=15
hi Delimiter      guibg=bg   guifg=fg       ctermbg=1   ctermfg=fg
hi SpecialComment guibg=#334455  guifg=#9a9082    ctermbg=1   ctermfg=15
hi Debug      guibg=bg   guifg=#ff9999  gui=none    ctermbg=8   ctermfg=12

hi Underlined guibg=bg guifg=#99ccff gui=underline ctermbg=bg ctermfg=9 cterm=underline

hi Title    guibg=bg  guifg=#EBD1B7        ctermbg=1   ctermfg=15
hi Ignore   guibg=bg       guifg=#cccccc    ctermbg=bg  ctermfg=8
hi Error    guibg=#ff0000  guifg=white        ctermbg=12  ctermfg=15
hi Todo     guibg=#556677  guifg=#ff0000      ctermbg=1   ctermfg=12

hi htmlH2 guibg=bg guifg=fg  ctermbg=8 ctermfg=fg
hi link htmlH3 htmlH2
hi link htmlH4 htmlH3
hi link htmlH5 htmlH4
hi link htmlH6 htmlH5

" hi Directory   guibg=bg       guifg=#a9a9a9  gui=none ctermbg=bg ctermfg=15

" hi TabLine guibg=#D8DEE9 guifg=#3B4252 gui=none ctermbg=0 ctermfg=none
" hi TabLineFill guibg=#D8DEE9 guifg=#3B4252 gui=none ctermbg=0 ctermfg=none
" hi TabLineSel guibg=#88C0D0 guifg=#4C566A gui=none ctermbg=6 ctermfg=none cterm=italic

"+--- Tabs ---+

" let s:nord0_gui = "#2E3440"
" let s:nord1_gui = "#3B4252"
" let s:nord2_gui = "#434C5E"
" let s:nord3_gui = "#4C566A"
" let s:nord3_gui_bright = "#616E88"
" let s:nord4_gui = "#D8DEE9"
" let s:nord5_gui = "#E5E9F0"
" let s:nord6_gui = "#ECEFF4"
" let s:nord7_gui = "#8FBCBB"
" let s:nord8_gui = "#88C0D0"
" let s:nord9_gui = "#81A1C1"
" let s:nord10_gui = "#5E81AC"
" let s:nord11_gui = "#BF616A"
" let s:nord12_gui = "#D08770"
" let s:nord13_gui = "#EBCB8B"
" let s:nord14_gui = "#A3BE8C"
" let s:nord15_gui = "#B48EAD"

" let s:nord1_term = "0"
" let s:nord3_term = "8"
" let s:nord5_term = "7"
" let s:nord6_term = "15"
" let s:nord7_term = "14"
" let s:nord8_term = "6"
" let s:nord9_term = "4"
" let s:nord10_term = "12"
" let s:nord11_term = "1"
" let s:nord12_term = "11"
" let s:nord13_term = "3"
" let s:nord14_term = "2"
" let s:nord15_term = "5"

" let g:nord_bold = get(g:, "nord_bold", 1)
" let s:bold = (g:nord_bold == 0) ? "" : "bold,"

" let g:nord_underline = get(g:, "nord_underline", 1)
" let s:underline = (g:nord_underline == 0) ? "NONE," : "underline,"

" let g:nord_italic = get(g:, "nord_italic", (has("gui_running") || $TERM_ITALICS == "true"))
" let s:italic = (g:nord_italic == 0) ? "" : "italic,"

" let g:nord_italic_comments = get(g:, "nord_italic_comments", 0)
" let s:italicize_comments = (g:nord_italic_comments == 0) ? "" : get(s:, "italic")

" call s:hi("TabLine", s:nord4_gui, s:nord1_gui, "NONE", s:nord1_term, "NONE", "")
" call s:hi("TabLineFill", s:nord4_gui, s:nord1_gui, "NONE", s:nord1_term, "NONE", "")
" call s:hi("TabLineSel", s:nord8_gui, s:nord3_gui, s:nord8_term, s:nord3_term, "NONE", "")

hi TabLine guifg=#D8DEE9 guibg=#88C0D0 ctermfg=none ctermbg=0 gui=none
hi TabLineFill guifg=#D8DEE9 guibg=#88C0D0 ctermfg=none ctermbg=0 gui=none
hi TabLineSel guifg=#88C0D0 guibg=#4C566A ctermfg=6 ctermbg=6 gui=none cterm=italic

" function! s:hi(group, guifg, guibg, ctermfg, ctermbg, attr, guisp)
"   let cmd = ""
"   if a:guifg != ""
"     let cmd = cmd . " guifg=" . a:guifg
"   endif
"   if a:guibg != ""
"     let cmd = cmd . " guibg=" . a:guibg
"   endif
"   if a:ctermfg != ""
"     let cmd = cmd . " ctermfg=" . a:ctermfg
"   endif
"   if a:ctermbg != ""
"     let cmd = cmd . " ctermbg=" . a:ctermbg
"   endif
"   if a:attr != ""
"     let cmd = cmd . " gui=" . a:attr . " cterm=" . substitute(a:attr, "undercurl", s:underline, "")
"   endif
"   if a:guisp != ""
"     let cmd = cmd . " guisp=" . a:guisp
"   endif
"   if cmd != ""
"     exec "hi " . a:group . cmd
"   endif
" endfunction

" And finally.

let g:colors_name = "Earthsong-custom"
let colors_name   = "Earthsong-custom"
