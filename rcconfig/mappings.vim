let mapleader="\<space>"

nnoremap <leader>; A;<esc>
nnoremap <leader>q :bd<esc>
nnoremap <leader>Q :q!<esc>
nnoremap <leader>w :w!<esc>
nnoremap <leader><Tab> gt<esc>
nnoremap <leader>o :tabedit
nnoremap <leader>p :Files!<cr>
nnoremap <leader>n :NERDTree<cr>
nnoremap <leader>e :Explore<cr>
nnoremap <leader>f :Ag!<cr>

let g:vimrubocop_keymap = 0
nmap <Leader>r :RuboCop -a<CR>
nmap <Leader>ra :RuboCop -l<CR>

" mappings para rodar rspec no vim
nnoremap <Leader>t :call RunCurrentSpecFile()<CR>
nnoremap <Leader>s :call RunNearestSpec()<CR>
nnoremap <Leader>l :call RunLastSpec()<CR>
nnoremap <Leader>a :call RunAllSpecs()<CR>

"resize current buffer by +/- 5
nnoremap <C-A-H> :vertical resize -5<cr>
nnoremap <C-A-J> :resize +5<cr>
nnoremap <C-A-K> :resize -5<cr>
nnoremap <C-A-L> :vertical resize +5<cr>

nnoremap w :bnext<CR>
nnoremap q :bprev<CR>

nnoremap <A-k> :m-2<CR>
nnoremap <A-j> :m+<CR>
inoremap <A-k> <Esc>:m-2<CR>
inoremap <A-j> <Esc>:m+<CR>

" disable arrows
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

let g:ale_set_highlights = 0

let g:SuperTabDefaultCompletionType    = '<C-n>'
let g:SuperTabCrMapping                = 0
let g:UltiSnipsExpandTrigger           = '<tab>'
let g:UltiSnipsJumpForwardTrigger      = '<tab>'
let g:UltiSnipsJumpBackwardTrigger     = '<s-tab>'
let g:ycm_key_list_select_completion   = ['<C-j>', '<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<C-p>', '<Up>']

let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetsDir = '~/.vim/UltiSnips'

" Use patched fonts
let g:airline_powerline_fonts = 1
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#show_tabs = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
" enable/disable fugitive/lawrencium integration
let g:airline#extensions#branch#enabled = 1
" enable/disable showing a summary of changed hunks under source control.
let g:airline#extensions#hunks#enabled = 1
" enable/disable showing only non-zero hunks.
let g:airline#extensions#hunks#non_zero_only = 1
let g:airline#extensions#whitespace#enabled = 0
let g:airline_theme='deus'
let g:airline#extensions#ale#enabled = 1
let g:airline_section_b = '%{strftime("%H:%M")}'

" config para rodar o rspec no vim
let g:rspec_command = "Dispatch! rspec {spec}"

" emmet
let g:user_emmet_leader_key='<C-Z>'

" Use deoplete.
let g:deoplete#enable_at_startup = 1
" autocomplete
let g:deoplete#enable_ignore_case = 0
let g:deoplete#enable_smart_case = 0
let g:deoplete#delimiters = ['/', '.', '::', ':', '#']
let g:deoplete#max_list = 5
let g:deoplete#auto_complete_delay = 0
let g:deoplete#auto_refresh_delay = 0
let g:neocomplete#min_pattern_length = 2

let g:ale_fix_on_save = 0
let g:ale_fixers = {'ruby': ['rubocop']}

let g:gist_use_password_in_gitconfig = 1

let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
 \ 'bg':      ['bg', 'Normal'],
 \ 'hl':      ['fg', 'Comment'],
 \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
 \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
 \ 'hl+':     ['fg', 'Statement'],
 \ 'info':    ['fg', 'PreProc'],
 \ 'border':  ['fg', 'Ignore'],
 \ 'prompt':  ['fg', 'Conditional'],
 \ 'pointer': ['fg', 'Exception'],
 \ 'marker':  ['fg', 'Keyword'],
 \ 'spinner': ['fg', 'Label'],
 \ 'header':  ['fg', 'Comment'] }

com! FormatJSON :%!jq '.'
com! MinifyJSON :%!jq -c '.'
com! Ctags :!ctags -R .
