local fn = vim.fn
local cmd = vim.cmd
local call = vim.call
local Plug = fn['plug#']

call('plug#begin', '~/.config/nvim/plugged')

Plug('Shougo/deoplete.nvim', {['do'] = fn[':UpdateRemotePlugins']})

-- Tree
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'

-- Search
Plug 'mileszs/ack.vim'
-- Plug 'brooth/far.vim'                                           -- Search and replace

-- Change suroundings
Plug 'tpope/vim-surround'

-- Quick fix list movement mapping
Plug 'tpope/vim-unimpaired'

-- Project
-- Plug 'amiorin/vim-project'

Plug 'neomake/neomake'
-- Plug 'posva/vim-vue'

-- Typescript
Plug 'leafgarland/typescript-vim'

-- Themes and colors
Plug 'iCyMind/NeoSolarized'
Plug('daylerees/colour-schemes', {['rtp'] = 'vim/'})

-- Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

Plug 'pangloss/vim-javascript'
Plug 'othree/html5.vim'
Plug 'digitaltoad/vim-pug'

-- Utility
Plug 'ctrlpvim/ctrlp.vim'
Plug 'jeetsukumaran/vim-buffergator'
-- Plug 'craigemery/vim-autotag'                                     -- Auto regenerates ctags  <------ segmentation fault on save
-- Plug 'ludovicchabant/vim-gutentags'                               -- Another option for ctags auto regen
Plug 'tpope/vim-commentary'
Plug 'SirVer/ultisnips'                                           -- Snippets Engine
Plug 'honza/vim-snippets'                                         -- Snippets
-- Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' } -- Search plugin
Plug('junegunn/fzf', {['do'] = fn['fzf#install']})               -- Search plugin
Plug 'junegunn/fzf.vim'
Plug 'majutsushi/tagbar'                                          -- ctags sidebar
Plug 'vim-php/tagbar-phpctags.vim'                                -- php tags for tag bar (requires phpctags in $PATH)
-- Plug 'vim-syntastic/syntastic'                                    -- Syntax
Plug 'dense-analysis/ale'                                         -- Syntax
Plug 'easymotion/vim-easymotion'                                  -- Motion movement
Plug('iamcco/markdown-preview.nvim', {['do'] = fn['cd app && yarn install']})   -- Markdown (MD) previewer

-- Theme / Interface
Plug 'vim-airline/vim-airline'

-- Line indent
Plug 'Yggdroot/indentLine'

-- PHP Utils
Plug('padawan-php/deoplete-padawan', {['for'] = 'php'})             -- Auto complete (simple)
Plug 'StanAngeloff/php.vim'
Plug 'vim-vdebug/vdebug'
Plug('lvht/phpcd.vim', {['for'] = 'php', ['do'] = fn['composer install']}) -- Auto complete (advanced)
-- Plug('padawan-php/deoplete-padawan', {['for'] = 'php'})             -- Auto complete (simple)
Plug 'arnaud-lb/vim-php-namespace'
Plug 'stephpy/vim-php-cs-fixer'                                   -- Code sniffer
-- Plug 'tobyS/vmustache'                                            -- For below
-- Plug 'tobyS/pdv'                                                  -- Php Doc generator
Plug 'adoy/vim-php-refactoring-toolbox'                           -- Useful tools for php
-- Plug 'roxma/nvim-completion-manager'                            -- Super fast auto complete for nvim
-- Plug 'phpactor/phpactor' ,  {'do': 'composer install'}          -- For above
-- Plug 'roxma/ncm-phpactor'                                       -- For above

Plug 'xolox/vim-misc'                                             -- For sessions manager
Plug 'xolox/vim-session'                                          -- Sessions manager

Plug 'github/copilot.vim'                                         -- Github copilot

call('plug#end')
