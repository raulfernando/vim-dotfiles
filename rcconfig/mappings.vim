let mapleader="\<space>"

nnoremap <leader>; A;<esc>
nnoremap <leader>q :bd<esc>
nnoremap <leader>Q :q!<esc>
nnoremap <leader>w :w!<esc>
nnoremap <leader><Tab> gt<esc>
nnoremap <leader>o :tabedit
nnoremap <leader>p :FZF<cr>
nnoremap <leader>n :NERDTree<cr>
nnoremap <leader>e :Explore<cr>
nnoremap <leader>f :Ag<space>

" mappings para rodar rspec no vim
nnoremap <Leader>t :call RunCurrentSpecFile()<CR>
nnoremap <Leader>s :call RunNearestSpec()<CR>
nnoremap <Leader>l :call RunLastSpec()<CR>
nnoremap <Leader>a :call RunAllSpecs()<CR>

"resize current buffer by +/- 5
nnoremap <C-h> :vertical resize -5<cr>
nnoremap <C-j> :resize +5<cr>
nnoremap <C-k> :resize -5<cr>
nnoremap <C-l> :vertical resize +5<cr>

nnoremap <leader>l :bnext<CR>
nnoremap <leader>h :bprev<CR>

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
let g:rspec_runner = "os_x_iterm2"
let g:rspec_command = "Dispatch rspec {spec}"

" emmet
let g:user_emmet_leader_key='<C-Z>'

" Use deoplete.
let g:deoplete#enable_at_startup = 1


"--=language client=--
"\ 'ruby': ['tcp://localhost:7658']
let g:LanguageClient_autoStop = 0
let g:LanguageClient_serverCommands = {
    \ 'ruby': ['tcp://localhost:7658']
    \ }

let g:LanguageClient_autoStart = 1

nnoremap <F5> :call LanguageClient_contextMenu()<CR>
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

autocmd FileType ruby setlocal omnifunc=LanguageClient#complete
