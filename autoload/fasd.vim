function! Z(...)
  let cmd = 'fasd -d -l -e printf'
  for arg in a:000
    let cmd = cmd . ' ' . arg
  endfor
  let pathes = split(system(cmd),"\n")
  for i in range(0,len(pathes)-1)
      echo i ."  " . pathes[i]
  endfor
  if len(pathes) == 0
      echo "No Directory"
      return
  elseif len(pathes) == 1
      let path=pathes[0]
      let ans = input('lcd ' . path . '?[Y/n]')
      if ans != "n"
          exec "lcd " . path
      endif
  else 
      let ans = input('which directory?[num]')
      if ans != ""
          exec "lcd " . pathes[ans]
      endif
  endif
endfunction
function! F(...)
  let cmd = 'fasd -l -e printf -b viminfo'
  for arg in a:000
    let cmd = cmd . ' ' . arg
  endfor
  let pathes = split(system(cmd),"\n")
  for i in range(0,len(pathes)-1)
      echo i ."  " . pathes[i]
  endfor
  if len(pathes) == 0
      echo "No file"
      return
  elseif len(pathes) == 1
      let path=pathes[0]
      let ans = input('edit ' . path . '?[Y/n]')
      if ans != "n"
          exec "edit " . path
      endif
  else 
      let ans = input('which file?[num]')
      if ans != ""
          exec "edit " . pathes[ans]
      endif
  endif
endfunction
