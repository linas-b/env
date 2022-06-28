" ---------------------------------------------------------------------------------------------------------------------
call plug#begin('~/.config/nvim/plugged')
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Tree
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'

" Search
Plug 'mileszs/ack.vim'
" Plug 'brooth/far.vim'                                           " Search and replace

" Change suroundings
Plug 'tpope/vim-surround'

" Quick fix list movement mapping
Plug 'tpope/vim-unimpaired'

" Project
" Plug 'amiorin/vim-project'

Plug 'neomake/neomake'
" Plug 'posva/vim-vue'

" Typescript
Plug 'leafgarland/typescript-vim'

" Themes and colors
Plug 'iCyMind/NeoSolarized'
Plug 'daylerees/colour-schemes', { 'rtp': 'vim/' }

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

Plug 'pangloss/vim-javascript'
Plug 'othree/html5.vim'
Plug 'digitaltoad/vim-pug'

" Utility
Plug 'ctrlpvim/ctrlp.vim'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'craigemery/vim-autotag'                                     " Auto regenerates ctags
" Plug 'ludovicchabant/vim-gutentags'                               " Another option for ctags auto regen
Plug 'tpope/vim-commentary'
Plug 'SirVer/ultisnips'                                           " Snippets Engine
Plug 'honza/vim-snippets'                                         " Snippets
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' } " Search plugin
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }               " Search plugin
Plug 'junegunn/fzf.vim'
Plug 'majutsushi/tagbar'                                          " ctags sidebar
Plug 'vim-php/tagbar-phpctags.vim'                                " php tags for tag bar (requires phpctags in $PATH)
" Plug 'vim-syntastic/syntastic'                                    " Syntax
Plug 'dense-analysis/ale'                                         " Syntax
Plug 'easymotion/vim-easymotion'                                  " Motion movement
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }   " Markdown (MD) previewer

" Theme / Interface
Plug 'vim-airline/vim-airline'

" Line indent
Plug 'Yggdroot/indentLine'

" PHP Utils
Plug 'padawan-php/deoplete-padawan', { 'for': 'php' }             " Auto complete (simple)
Plug 'StanAngeloff/php.vim'
Plug 'vim-vdebug/vdebug'
Plug 'lvht/phpcd.vim', { 'for': 'php', 'do': 'composer install' } " Auto complete (advanced)
Plug 'arnaud-lb/vim-php-namespace'
Plug 'stephpy/vim-php-cs-fixer'                                   " Code sniffer
" Plug 'tobyS/vmustache'                                            " For below
" Plug 'tobyS/pdv'                                                  " Php Doc generator
Plug 'adoy/vim-php-refactoring-toolbox'                           " Useful tools for php
" Plug 'roxma/nvim-completion-manager'                            " Super fast auto complete for nvim
" Plug 'phpactor/phpactor' ,  {'do': 'composer install'}          " For above
" Plug 'roxma/ncm-phpactor'                                       " For above

Plug 'xolox/vim-misc'                                             " For sessions manager
Plug 'xolox/vim-session'                                          " Sessions manager

" Try ncm2

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

" Project
" nmap <Leader><F2> :tabedit ~/.vimprojects<CR>

" cycle through menu items with tab/shift+tab
inoremap <expr> <TAB> pumvisible() ? "\<c-n>" : "\<TAB>"
inoremap <expr> <s-tab> pumvisible() ? "\<c-p>" : "\<TAB>"

" Close all buffers exept current
" noremap <Leader>bd :%bd | NERDTree<CR>
noremap <Leader>bd :%bd<CR>

" Php Doc Generator
" let g:pdv_template_dir = $HOME ."/.config/nvim/plugged/pdv/templates_snip"
" nnoremap <Leader>pd :call pdv#DocumentWithSnip()<CR>

" Ulti snips
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"
" for PHP7
let g:ultisnips_php_scalar_types = 1

" Toggle ctags bar
nmap <Leader>tg :TagbarToggle<CR>

" Format json (python required)
nmap <Leader>fjo :%!python -m json.tool<CR>

" Format sql (pip install sqlparse required)
nmap <Leader>fsq :%!sqlformat --reindent --keywords upper --identifiers lower -<CR>

" Ale Syntax
nmap <F12> <Plug>(ale_fix)

" Ack
cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>




"-------------Auto-Commands-------------"
" Automatically source vim config file on save
augroup autosourcing
    autocmd!
    " autocmd BufWritePost *.vim source %
augroup END

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

" augroup code_sniffer
    " autocmd!
    " " Code Sniffer auto fix on save
    " " autocmd BufWritePost *.php silent! call PhpCsFixerFixFile()
" augroup END

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

command! Test call s:Test()

let s:php_regex_member_line = '^\s*\%(\%(private\|protected\|public\|static\)\s*.*\)\+\$'
let s:php_regex_func_line   = '^\s*\%(\%(private\|protected\|public\|static\|abstract\)\s*\)*function\_s\+'

function! s:PhpEchoError(message)
    echohl ErrorMsg
    echomsg a:message
    echohl NONE
endfunction

function! s:PhpInsertMethod(modifiers, name, params, returnType, impl)
    call search(s:php_regex_func_line, 'beW')
    call search('{', 'W')
    echomsg "Debug:" . a:returnType
    if len(a:returnType) == 0
      let l:return = ""
    else
      let l:return = ": " . a:returnType
    endif
    exec "normal! %"
    exec "normal! o\<CR>" . a:modifiers . " function " . a:name . "(" . join(a:params, ", ") . ")" . l:return . "\<CR>{\<CR>" . a:impl . "}\<Esc>=a{"
endfunction

function! s:Test()
    normal! gg
    let l:properties = []
    while search(s:php_regex_member_line, 'eW') > 0
        normal! w"xye
        normal! B"cye
        call s:PhpEchoError('Found:' . @x)
        call add(l:properties, @x)
        call add(l:types, @c)
    endwhile
    for l:property in l:properties
        echomsg "Debug:Property: " . l:property . " with Type: "
        let l:camelCaseName = substitute(l:property, '^_\?\(.\)', '\U\1', '')
        if g:vim_php_refactoring_auto_validate_g == 0
            call s:PhpEchoError('Create get' . l:camelCaseName . '()')
            if inputlist(["0. No", "1. Yes"]) == 0
                continue
            endif
        endif
        if search(s:php_regex_func_line . "get" . l:camelCaseName . '\>', 'n') == 0
            call s:PhpInsertMethod("public", "get" . l:camelCaseName, [], "", "return $this->" . l:property . ";\n")
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

"
let g:deoplete#sources#padawan#add_parentheses = 1
" let g:deoplete#skip_chars = ['$'] // depprecated
" call deoplete#custom#option('deoplete#skip_chars', ['$'])

" let g:deoplete#sources = {} // depprecated
" let g:deoplete#sources.php = ['padawan', 'ultisnips', 'tags', 'buffer'] // depprecated
" call deoplete#custom#option("sources", {'php': ['padawan', 'ultisnips', 'tags', 'buffer']})

" for phpcd plugin
" let g:deoplete#ignore_sources = get(g:, 'deoplete#ignore_sources', {}) // depprecated
" let g:deoplete#ignore_sources.php = ['omni'] // depprecated
" call deoplete#custom#option('ignore_sources', {'php': ['omni']})

let g:deoplete#enable_at_startup = 1

"" Nerd tree
let g:nerdtree_tabs_open_on_console_startup=1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeShowHidden=1
let g:NERDTreeShowLineNumbers=1
let g:NERDTreeWinSize=50

" Project
" let g:project_use_nerdtree = 1
" let g:project_enable_welcome = 1
" set rtp+=~/.vim/bundle/vim-project/
" call project#rc("~/code")
" so ~/.vimprojects

" NeoMake
" autocmd BufWritePost * Neomake
let g:neomake_error_sign   = {'text': '✖', 'texthl': 'NeomakeErrorSign'}
let g:neomake_warning_sign = {'text': '∆', 'texthl': 'NeomakeWarningSign'}
let g:neomake_message_sign = {'text': '➤', 'texthl': 'NeomakeMessageSign'}
let g:neomake_info_sign    = {'text': 'ℹ', 'texthl': 'NeomakeInfoSign'}

" Color schema
colorscheme earthsong

" Vim-Airline Configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#show_splits = 0                    " hide buffers???

" CtrlP settings
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.idea$\|\.yardoc\|node_modules\|log\|tmp$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }
let g:ctrlp_max_files = 40000
let g:ctrlp_max_depth = 40
let g:ctrlp_show_hidden=1
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'

if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif


" Vdebug config
source $HOME/.config/nvim/config/vdebug.vimrc

" Auto tags config
let g:autotagTagsFile="tags"

" Syntax checker
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 0
" let g:syntastic_auto_loc_list = 0
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

" let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
" let g:syntastic_php_checkers = ['php', 'phpmd']

" GitGutter fix with php namespace
" let g:gitgutter_async = 0

" Ale Syntax checker
let g:ale_fixers = {'php': []}
" let g:ale_fixers = {'php': ['php_cs_fixer']} " Disable for laravel pint
" let g:ale_fixers = {'php': ['phpcbf', 'php_cs_fixer']}
" let g:ale_fixers = {'php': ['phpcbf', 'php_cs_fixer']} " Disabled cs fixer 2021-01-20
" let g:ale_fixers = {'php': ['phpcbf', 'php_cs_fixer', 'phpmd']}
let g:ale_fix_on_save = 1

" Session manager
let g:nerdtree_tabs_open_on_new_tab = 0
let g:session_autoload = 'no'
let g:session_autosave = 'no'

