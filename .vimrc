"Plugins"{{{
set nocompatible              " be iMproved, required
filetype off                  " required
packadd minpac
call minpac#init()
set rtp+=/usr/local/opt/fzf
call minpac#add('w0rp/ale')
call minpac#add('jiangmiao/auto-pairs')
call minpac#add('chrisbra/colorizer', {'type': 'opt'})
call minpac#add('junegunn/fzf.vim')
call minpac#add('k-takata/minpac', {'type': 'opt'})
call minpac#add('tomasr/molokai')
call minpac#add('scrooloose/nerdcommenter')
call minpac#add('scrooloose/nerdtree')
call minpac#add('SirVer/ultisnips')
call minpac#add('bling/vim-airline')
call minpac#add('vim-airline/vim-airline-themes')
call minpac#add('ryanoasis/vim-devicons')
call minpac#add('tommcdo/vim-exchange')
call minpac#add('tpope/vim-fugitive')
call minpac#add('tpope/vim-repeat')
call minpac#add('tpope/vim-rails')
call minpac#add('honza/vim-snippets')
call minpac#add('tpope/vim-surround')
call minpac#add('tpope/vim-unimpaired')
call minpac#add('Valloric/YouCompleteMe')
call minpac#add('altercation/vim-colors-solarized')
"}}}
"Global settings"{{{
  "Gets rid of auto commenting
  autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
  syntax enable
  set nu
  set relativenumber
  set expandtab
  set noswapfile
  set hidden
  set incsearch
  set ignorecase
  set smartcase
  set nohlsearch
  "Turn off annoying bells
  set noeb vb t_vb=
  set undofile
  set undodir=~/.vim/undodir
  let mapleader=" ""}}}
" Text settings"{{{
  set encoding=utf-8
  set smartindent
  set textwidth=80
  set shiftwidth=2
  set softtabstop=2
  set foldmethod=marker"}}}
"ColorScheme settings"{{{
  set termguicolors
  colorscheme molokai
  set background=dark
  "}}}
"Ultisnips"{{{
  let g:UltiSnipsExpandTrigger = '<C-j>'
  let g:UltiSnipsJumpForwardTrigger = '<C-j>'
  let g:UltiSnipsJumpBackwardTrigger = '<C-k>'
"}}}
"Vim-Airline"{{{
  let g:airline#extensions#tabline#enabled = 1
  set laststatus=2
  set noshowmode
  let g:bufferline_echo = 0
  let g:airline_powerline_fonts = 1

  if !exists('g:airline_symbols')
      let g:airline_symbols = {}
  endif

  " unicode symbols
  let g:airline_left_sep = '»'
  let g:airline_left_sep = '▶'
  let g:airline_right_sep = '«'
  let g:airline_right_sep = '◀'
  let g:airline_symbols.linenr = '␊'
  let g:airline_symbols.linenr = '␤'
  let g:airline_symbols.linenr = '¶'
  let g:airline_symbols.branch = '⎇'
  let g:airline_symbols.paste = 'ρ'
  let g:airline_symbols.paste = 'Þ'
  let g:airline_symbols.paste = '∥'
  let g:airline_symbols.whitespace = 'Ξ'

  " airline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = ''"}}}
"Mappings"{{{
  nnoremap <leader>rn :set relativenumber!<cr>
  nnoremap <leader>ev :vsplit $MYVIMRC<cr>
  nnoremap <leader>t :NERDTreeToggle<CR>
  nnoremap <C-p> :Files<CR>
  nnoremap <C-o> :Buffers<CR>

  "Fugitive
  nnoremap <leader>gd :Gdiff<cr>
  nnoremap <leader>gr :Gread<cr>
  nnoremap <leader>gl :Glog<cr>
  nnoremap <leader>gb :Gblame<cr>
  nnoremap <leader>gs :Gstatus<cr>

  nnoremap <leader>l :set nohlsearch!<CR>
  nnoremap <leader>ch :ColorHighlight<CR>
  nnoremap <leader>co :ColorClear<CR>

  "Remove all trailing whitespace
  nnoremap <leader>rw :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

  "Format json
  noremap =j :%!python -m json.tool<CR>

  "Window switching
  nnoremap <C-k> <C-w><Up>
  nnoremap <C-j> <C-w><Down>
  nnoremap <C-l> <C-w><Right>
  nnoremap <C-h> <C-w><Left>
  "Buffers
  nnoremap <leader>n :bn<CR>
  nnoremap <leader>p :bp<CR>
"}}}
