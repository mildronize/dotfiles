" Combine 2 plugins

" map <leader>f :call JsBeautify()<cr>

noremap <leader>fj :Autoformat js<cr>
noremap <leader>fh :call HtmlBeautify()<cr>
noremap <leader>fc :call CSSBeautify()<cr>

vnoremap <leader>fj :call RangeCSSBeautify()<cr>
vnoremap <leader>fh :call RangeHtmlBeautify()<cr>
vnoremap <leader>fc :call RangeCSSBeautify()<cr>

" or
" autocmd FileType javascript noremap <buffer>  <leader>f :call JsBeautify()<cr>
" " for html
" autocmd FileType html noremap <buffer> <leader>f :call HtmlBeautify()<cr>
" " for css or scss
" autocmd FileType css noremap <buffer> <leader>f :call CSSBeautify()<cr>


" autocmd FileType javascript vnoremap <buffer>  <leader>f :call RangeJsBeautify()<cr>
" autocmd FileType html vnoremap <buffer> <leader>f :call RangeHtmlBeautify()<cr>
" autocmd FileType css vnoremap <buffer> <leader>f :call RangeCSSBeautify()<cr>
