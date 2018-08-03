" esquema de cores
set background=dark
colorscheme material-monokai
let g:materialmonokai_subtle_spell=1

" Tamanho da identação
set tabstop=2

" Identifica o tipo de arquivo
filetype plugin indent on

" Ativa a syntax
syntax on

" Ajusta o tamanho de tab
set shiftwidth=2

" Comportamento do backspace
set backspace=2

" Numera as linhas
set number

" Feedback de busca em tempo real 
set incsearch

" Destaque nos resultados
set hlsearch

" Usar espaços no lugar de tab
set expandtab

" Backspace respeitar identação
set softtabstop=2

" Faz o backspace funcionar como a maioria dos outros programas
set backspace=2

" Desativar a criação automática de arquivos de backup
set nobackup
set nowritebackup
set noswapfile

" Define o historico para 50 linhas
set history=50

" Habilita autocomplete para comandos vim
set wildmenu
set wildmode=list:longest,full
set wildignore+=*/tmp/*,*.so,*.swp,*.zip

" Sempre exibe statusLine
set laststatus=2

" Salvamento automatico
set autowrite

" Exibe espaços em branco
set list listchars=tab:»·,trail:·,nbsp:·

" Abrir painéis divididos a direita e abaixo, o que parece mais natural
set splitbelow
set splitright

" Limita a 80 caracters
set colorcolumn=80

" Mostrar parênteses correspondentes quando indicador estiver sobre eles
set showmatch

" Quantos décimos de segundo piscar ao combinar parênteses
set mat=2

" Realce a linha atual do cursor
set cursorline

" Auto indent
set ai

" Smart indent
set si

" Quebra linha
set wrap

" Usa espaço em vez de tab
set expandtab

" Seja esperto ao usar guias ;)
set smarttab

" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2

set rtp+=/usr/local/opt/fzf

set t_Co=256
