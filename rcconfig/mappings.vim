let mapleader="\<space>"

nnoremap <leader>; A;<esc>
nnoremap <leader>q :q!<esc>
nnoremap <leader>w :w!<esc>
nnoremap <leader><Tab> gt<esc>
nnoremap <leader>o :tabedit
nnoremap <leader>p :Files<cr>
nnoremap <leader>n :NERDTree<cr>
nnoremap <leader>e :Explore<cr>

" mappings para rodar rspec no vim
nnoremap <Leader>t :call RunCurrentSpecFile()<CR>
nnoremap <Leader>s :call RunNearestSpec()<CR>
nnoremap <Leader>l :call RunLastSpec()<CR>
nnoremap <Leader>a :call RunAllSpecs()<CR>

"resize current buffer by +/- 5
nnoremap <C-left> :vertical resize -5<cr>
nnoremap <C-down> :resize +5<cr>
nnoremap <C-up> :resize -5<cr>
nnoremap <C-right> :vertical resize +5<cr>

nnoremap <leader>. :bnext<CR>
nnoremap <leader>, :bprev<CR>

nnoremap <A-Up> :m-2<CR>
nnoremap <A-Down> :m+<CR>
inoremap <A-Up> <Esc>:m-2<CR>
inoremap <A-Down> <Esc>:m+<CR>

let g:SuperTabDefaultCompletionType    = '<C-n>'
let g:SuperTabCrMapping                = 0
let g:UltiSnipsExpandTrigger           = '<tab>'
let g:UltiSnipsJumpForwardTrigger      = '<tab>'
let g:UltiSnipsJumpBackwardTrigger     = '<s-tab>'
let g:ycm_key_list_select_completion   = ['<C-j>', '<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<C-p>', '<Up>']

let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetsDir = '~/.vim/UltiSnips'

let g:airline_theme='deus'
let g:airline_powerline_fonts = 1

" config para rodar o rspec no vim
let g:rspec_runner = "os_x_iterm2"
let g:rspec_command = "Dispatch rspec {spec}"
