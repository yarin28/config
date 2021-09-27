lua << eof
require'lspconfig'.pyright.setup{}
eof
let g:python_highlight_all = 1
let g:terminator_runfile_map = {
            \ "javascript": "node",
            \ "python": "python3 -u ",
            \ "c": "gcc $dir$fileName -o $dir$fileNameWithoutExt && $dir$fileNameWithoutExt",
            \ "fortran": "cd $dir && gfortran $fileName -o $fileNameWithoutExt && $dir$fileNameWithoutExt"
            \ }
let g:terminator_repl_command = {
  \'python' : 'ipython3 --no-autoindent',
  \'javascript': 'node',
  \}
