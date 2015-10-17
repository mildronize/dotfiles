if isdirectory(expand("~/.vim/plugged/GoldenView.Vim"))
    " Use my default mappings
    let g:goldenview__enable_default_mapping = 0

    " 1. split to tiled windows
    nmap <silent> <C-L>  <Plug>GoldenViewSplit

    " 2. quickly switch current window with the main pane
    " and toggle back
    " nmap <silent> <F7>   <Plug>GoldenViewSwitchMain
    nmap <silent> <F7>   <Plug>GoldenViewSwitchToggle

    " 3. jump to next and previous window
    " Only switch windows in same tab
    nmap <silent> <C-N> <C-w>w
    " nmap <silent> <C-P>  <Plug>GoldenViewPrevious
endif
