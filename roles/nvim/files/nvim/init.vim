" ---------------------------------------------------------------------------------------------------------------------
call plug#begin('~/.config/nvim/plugged')

" Tree
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'

" Change suroundings
Plug 'tpope/vim-surround'

" Themes and colors
Plug 'iCyMind/NeoSolarized'
Plug 'daylerees/colour-schemes', { 'rtp': 'vim/' }

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Utility
Plug 'tpope/vim-commentary'                                       " gcc to comment line
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }               " Search plugin for EVERYTHING!!!
Plug 'junegunn/fzf.vim'
Plug 'easymotion/vim-easymotion'                                  " Motion movement
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }   " Markdown (MD) previewer

" Theme / Interface
Plug 'vim-airline/vim-airline'

" Line indent
Plug 'Yggdroot/indentLine'

" PHP Utils
Plug 'StanAngeloff/php.vim'
Plug 'vim-vdebug/vdebug'
Plug 'arnaud-lb/vim-php-namespace'
Plug 'neoclide/coc.nvim', {'branch': 'release'}                   " Completion engine

" Session manager
Plug 'xolox/vim-misc'                                             " For sessions manager
Plug 'xolox/vim-session'                                          " Sessions manager

" Github copilot
Plug 'github/copilot.vim'                                         " Github copilot

call plug#end()
" ---------------------------------------------------------------------------------------------------------------------

" For nerdtree icons
set encoding=utf8
set guifont=DejaVu\ Sans\ Mono\ 11
" set guifont=Hack\ Regular\ 11

" Show line numbers
:set number relativenumber

" Center cursor
:set scrolloff=100

" Pretty color
if (has("termguicolors"))
  :set termguicolors
endif

" Set proper tabs
:set expandtab                                                     " Use regular spaces
:set shiftwidth=2                                                  " Normal mode spaces
:set softtabstop=2                                                 " Insert mode spaces
:set smarttab

" Show max char line
set colorcolumn=120

" Auto reaload file if it has been changed by outside
set autoread

" Faster scrolling
set lazyredraw

" Split management
" set splitbelow
" set splitright

" Jump to next/previous line when at the end/start of line
set whichwrap+=<,>,h,l,[,]

" Default tags + vendor for fasting reloading
set tags+=tags,tags.vendors

" Smart case sensitive search
:set ignorecase
:set smartcase

" Persistent undo
set undofile
set undodir=$HOME/.config/nvim/undo

set undolevels=1000
set undoreload=10000

" Map leader set to ,
let mapleader = ','


"-------------Mappings-------------"

" Open vim config file
nmap <Leader>ec :tabedit $MYVIMRC<CR>

" Turn off search highlight
nmap <Leader><space> :nohlsearch<CR>

" NerdTree stuff
map <C-n> :NERDTreeToggle<CR>
map <Leader>n :NERDTreeFind<CR>

" Window switching
nmap <C-J> <C-w><C-J>
nmap <C-H> <C-w><C-H>
nmap <C-K> <C-w><C-K>
nmap <C-L> <C-w><C-L>
nmap <C-Right> <C-w><Right>
nmap <C-Left> <C-w><Left>
nmap <C-Up> <C-w><Up>
nmap <C-Down> <C-w><Down>

" Tabs switching
nmap <A-S-Right> gt
nmap <A-S-Left> gT
nmap <S-Left> :tabm -1<CR>
nmap <S-Right> :tabm +1<CR>

" Go inside but in new tab
nmap <C-A-]> <C-w><C-]><C-w><S-t>

" Move selected lines up/down
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

" Unset Ex mode
nnoremap Q <nop>

" cycle through menu items with tab/shift+tab
inoremap <expr> <TAB> pumvisible() ? "\<c-n>" : "\<TAB>"
inoremap <expr> <s-tab> pumvisible() ? "\<c-p>" : "\<TAB>"

" Close all buffers exept current
noremap <Leader>bd :%bd<CR>

" Format json (python required)
nmap <Leader>fjo :%!python -m json.tool<CR>

" Format sql (pip install sqlparse required)
" nmap <Leader>fsq :%!sqlformat --reindent --keywords upper --identifiers lower -<CR>
nmap <Leader>fsq :%!sqlformat --reindent --keywords upper -<CR>

" Copy file path
nnoremap <leader>cf :let @+=expand("%").':'.line(".")<CR>

" COC mappings:
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)

" FZF mappings:
nmap <C-f> :Files<CR>
nmap <C-b> :Buffers<CR>
nmap <C-a> :Ag<Space>


"-------------Auto-Commands-------------"

" Php namespace
augroup php_namespace
    autocmd!
    " Insert namespace use
    function! IPhpInsertUse()
      call PhpInsertUse()
      call feedkeys('a',  'n')
    endfunction
    autocmd FileType php inoremap <Leader>pn <Esc>:call IPhpInsertUse()<CR>
    autocmd FileType php noremap <Leader>pn :call PhpInsertUse()<CR>

    " Insert full namespace
    function! IPhpExpandClass()
        call PhpExpandClass()
        call feedkeys('a', 'n')
    endfunction
    autocmd FileType php inoremap <Leader>pne <Esc>:call IPhpExpandClass()<CR>
    autocmd FileType php noremap <Leader>pne :call PhpExpandClass()<CR>
augroup END

" NERDTree autocmds
augroup nerdtree
    autocmd!
    " NERDTree show relative numbers
    autocmd FileType nerdtree setlocal relativenumber
augroup END

augroup no_eol_in_json
    autocmd!
    autocmd FileType json setlocal noeol binary
augroup END

" Trim white spaces at the end of line
augroup trim_white_spaces
    autocmd!
    function! TrimWhitespace()
        let l:save = winsaveview()
        %s/\s\+$//e
        call winrestview(l:save)
    endfunction
    autocmd FileType php autocmd BufWritePre * :call TrimWhitespace()
augroup END

augroup tabs_for_file_types
    autocmd!
    " 4 spaces
    autocmd FileType php setlocal shiftwidth=4 softtabstop=4

    " 2 spaces
    autocmd FileType yaml setlocal shiftwidth=2 softtabstop=2
    autocmd FileType javascript setlocal shiftwidth=2 softtabstop=2
    autocmd FileType vhost setlocal shiftwidth=2 softtabstop=2
augroup END

augroup sort_uses
    autocmd!
    autocmd FileType php inoremap <Leader>ps <Esc>:call PhpSortUse()<CR>
    autocmd FileType php noremap <Leader>ps :call PhpSortUse()<CR>
augroup END

augroup conceal
    autocmd!
    " Show quotes in json
    autocmd Filetype json
      \ let g:indentLine_setConceal = 0 |
      \ let g:vim_json_syntax_conceal = 0
augroup END


"-------------Commands-------------"

command! CloseHiddenBuffers call s:CloseHiddenBuffers()

function! s:CloseHiddenBuffers()
  let open_buffers = []

  for i in range(tabpagenr('$'))
    call extend(open_buffers, tabpagebuflist(i + 1))
  endfor

  for num in range(1, bufnr("$") + 1)
    if buflisted(num) && index(open_buffers, num) == -1
      exec "bdelete ".num
    endif
  endfor
endfunction

command! UuidTimeBased call s:UuidTimeBased()

function! s:UuidTimeBased()
  " let l:new_uuid=system('uuidgen')[:-2]
  let l:new_uuid=system('uuidgen -t')[:-2]
  echo l:new_uuid
  return l:new_uuid
endfunction

map <Leader>ut :UuidTimeBased<CR>

command! UuidRandomBased call s:UuidRandomBased()

function! s:UuidRandomBased()
  let l:new_uuid=system('uuidgen')[:-2]
  return tolower(l:new_uuid)
endfunction


"-------------Macros-------------"

source $HOME/.config/nvim/config/macros.vimrc

"-------------Other plugin configs-------------"

"" Nerd tree
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeShowHidden=1
let g:NERDTreeShowLineNumbers=1
let g:NERDTreeWinSize=50

" Color schema
colorscheme earthsong

" Vim-Airline Configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#show_splits = 0                    " hide buffers???

" Vdebug config
source $HOME/.config/nvim/config/vdebug.vimrc

" Auto tags config
let g:autotagTagsFile="tags"

" Session manager
let g:nerdtree_tabs_open_on_new_tab = 0
let g:session_autoload = 'no'
let g:session_autosave = 'no'

