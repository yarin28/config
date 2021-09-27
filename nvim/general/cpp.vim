"the wihte space
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
au BufWinEnter * match ExtraWhitespace /\s\+$/
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhitespace /\s\+$/
au BufWinLeave * call clearmatches()

nnoremap <silent> <leader>rs :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>

function! s:JbzCppMan()
    let old_isk = &iskeyword
    setl iskeyword+=:
    let str = expand("<cword>")
    let &l:iskeyword = old_isk
    execute 'Man ' . str
endfunction
command! JbzCppMan :call s:JbzCppMan()
"opem cppman with k
au FileType cpp,c nnoremap <buffer>K :JbzCppMan<CR>
au BufEnter *.h  let b:fswitchdst = "c,cpp,cc,m"
au BufEnter *.cc let b:fswitchdst = "h,hpp"
au BufEnter *.h let b:fswitchdst = 'c,cpp,m,cc' | let b:fswitchlocs = 'reg:|include.*|src/**|'
nnoremap <silent> <A-o> :FSHere<cr>
" Extra hotkeys to open header/source in the split
au BufEnter *.cpp,*.c,*.h nnoremap <silent> <localleader>oh :FSSplitLeft<cr>
au BufEnter *.cpp,*.c,*.h nnoremap <silent> <localleader>oj :FSSplitBelow<cr>
au BufEnter *.cpp,*.c,*.h nnoremap <silent> <localleader>ok :FSSplitAbove<cr>
au BufEnter *.cpp,*.c,*.h nnoremap <silent> <localleader>ol :FSSplitRight<cr>
"for not indexisg unwanted files
set tags=./tags;
let g:gutentags_ctags_exclude_wildignore = 1
let g:gutentags_ctags_exclude = [
  \'node_modules', '_build', 'build', 'CMakeFiles', '.mypy_cache', 'venv',
  \'*.md', '*.tex', '*.css', '*.html', '*.json', '*.xml', '*.xmls', '*.ui']
"vimspector
command! -nargs=+ Vfb call vimspector#AddFunctionBreakpoint(<f-args>)

 au BufEnter *.cpp,*.c,*.h nnoremap <localleader>gd :call vimspector#Launch()<cr>
au BufEnter *.cpp,*.c,*.h nnoremap <localleader>gc :call vimspector#Continue()<cr>
 au BufEnter *.cpp,*.c,*.h nnoremap <localleader>gs :call vimspector#Stop()<cr>
 au BufEnter *.cpp,*.c,*.h nnoremap <localleader>gR :call vimspector#Restart()<cr>
 au BufEnter *.cpp,*.c,*.h nnoremap <localleader>gp :call vimspector#Pause()<cr>
 au BufEnter *.cpp,*.c,*.h nnoremap <localleader>gb :call vimspector#ToggleBreakpoint()<cr>
au BufEnter *.cpp,*.c,*.h nnoremap <localleader>gB :call vimspector#ToggleConditionalBreakpoint()<cr>
au BufEnter *.cpp,*.c,*.h nnoremap <localleader>gn :call vimspector#StepOver()<cr>
au BufEnter *.cpp,*.c,*.h nnoremap <localleader>gi :call vimspector#StepInto()<cr>
au BufEnter *.cpp,*.c,*.h nnoremap <localleader>go :call vimspector#StepOut()<cr>
au BufEnter *.cpp,*.c,*.h nnoremap <localleader>gr :call vimspector#RunToCursor()<cr>
function! s:JbzRemoveDebugPrints()
  let save_cursor = getcurpos()
  :g/\/\/\ prdbg$/d
  call setpos('.', save_cursor)
endfunction
command! JbzRemoveDebugPrints call s:JbzRemoveDebugPrints()

au FileType c,cpp nnoremap <buffer><leader>rd :JbzRemoveDebugPrints<CR>

lua << eof
require'lspconfig'.clangd.setup{}
eof
