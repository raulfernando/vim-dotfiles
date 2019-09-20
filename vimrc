syntax on
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

command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>,
  \                 <bang>0 ? fzf#vim#with_preview('up:60%')
  \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
  \                 <bang>0)

" command! -bang -nargs=* Ag
"   \ call fzf#vim#ag(<q-args>,
"                     {'options': '--delimiter : --nth 4..'},
"                     <bang>0)

command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)
