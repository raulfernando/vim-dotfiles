syntax enable
autocmd!
autocmd BufWritePre * %s/\s\+$//e

function! s:SourceConfigFilesIn(directory)
  let directory_splat = '~/.vim/' . a:directory . '/*'
  for config_file in split(glob(directory_splat), '\n')
    if filereadable(config_file)
      execute 'source' config_file
    endif
  endfor
endfunction

call s:SourceConfigFilesIn('rcconfig')

call plug#begin('~/.vim/plugged')
call s:SourceConfigFilesIn('plugins')
call plug#end()