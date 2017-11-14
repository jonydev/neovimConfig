" Plugins
call plug#begin('~/.config/nvim/plugged')

" Editor Enhancement
Plug 'wellle/targets.vim'
Plug 'tpope/vim-repeat'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-endwise'
Plug 'jiangmiao/auto-pairs'
Plug 'terryma/vim-expand-region'
Plug 'tpope/vim-ragtag'

Plug 'alvan/vim-closetag'
Plug 'Valloric/MatchTagAlways'

Plug 'kana/vim-textobj-user'
Plug 'jasonlong/vim-textobj-css'
Plug 'whatyouhide/vim-textobj-xmlattr'

" Applications
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'mbbill/undotree'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'gregsexton/gitv'
Plug 'scrooloose/nerdcommenter'
Plug 'kshenoy/vim-signature'

" Workspace & File Management
Plug 'kien/ctrlp.vim'
Plug 'vim-ctrlspace/vim-ctrlspace'
" Plug 'Shougo/denite.nvim'
Plug 'mileszs/ack.vim'

Plug 'ervandew/supertab'

" Auto Complete & Snippets
Plug 'Valloric/YouCompleteMe', { 'do': './install.sh' }
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

Plug 'w0rp/ale'

" UI
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'
Plug 'ryanoasis/vim-devicons'

" Language Supports
Plug 'sheerun/vim-polyglot'
Plug 'plasticboy/vim-markdown'
Plug 'hail2u/vim-css3-syntax'
Plug 'jparise/vim-graphql'
Plug 'reasonml-editor/vim-reason'

call plug#end()

" vim-ariline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

let g:CtrlSpaceGlobCommand = 'ag -l --nocolor -g ""'
let g:CtrlSpaceUseTabline = 1
let g:CtrlSpaceLoadLastWorkspaceOnStart = 1
let g:CtrlSpaceSaveWorkspaceOnSwitch = 1
let g:CtrlSpaceSaveWorkspaceOnExit = 1

if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag %s -l --nocolor -f -g ""'

  let g:ackprg = 'ag --vimgrep'
else
  let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
endif
 
let g:ale_fixers = {
\   'javascript': ['eslint'],
\   'css': ['stylelint'],
\}

let g:javascript_plugin_jsdoc = 1
let g:jsx_ext_required = 0

let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.php,*.jsx,*.js"

let g:UltiSnipsSnippetsDir = '~/.config/nvim/UltiSnips'

let g:NERDSpaceDelims = 1
