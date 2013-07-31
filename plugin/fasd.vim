" Z - cd to recent / frequent directories 
command! -nargs=* F :call F(<f-args>)
" F - search and open mru file
command! -nargs=* Z :call Z(<f-args>)
nmap <Space>z :<C-u>Z 
nmap <Space>f :<C-u>F 
