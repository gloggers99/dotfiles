call plug#begin("~/.config/nvim/plugged")

Plug 'sheerun/vim-polyglot'
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
Plug 'ntpeters/vim-better-whitespace'
Plug 'jiangmiao/auto-pairs'
Plug 'catppuccin/nvim', {'as': 'catppuccin'}
Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jackguo380/vim-lsp-cxx-highlight'
Plug 'vim-syntastic/syntastic'
Plug 'voldikss/vim-floaterm'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ollykel/v-vim'

call plug#end()

set mouse=a

syntax on
set number
set ruler
set autoindent

set tabstop=4
set shiftwidth=4
set expandtab

set smartindent
set updatetime=300
set hidden
set cmdheight=1

set nobackup
set nowritebackup

"set ls=0

set encoding=utf-8

nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-s> :vsplit<CR>
nnoremap <C-h> :split<CR>

autocmd TermOpen * setlocal nonumber norelativenumber

let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1

let g:syntastic_cpp_checkers = ['cpplint']
let g:syntastic_c_checkers = ['cpplint']
let g:syntastic_cpp_cpplint_exec = 'cpplint'
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:v_autofmt_bufwritepre = 1

if has("nvim-0.5.0") || has("patch-8.1.1564")
  set signcolumn=number
else
  set signcolumn=yes
endif

"let g:coc_global_extensions=[ 'coc-omnisharp' ]

if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif

let g:catppuccin_flavour = "mocha"
colorscheme catppuccin
let g:lightline = {'colorscheme': 'catppuccin'}

hi Normal guibg=NONE ctermbg=NONE

set cursorline
highlight CursorLine cterm=NONE ctermfg=NONE ctermbg=233 guifg=NONE guibg=#121212
autocmd InsertEnter * highlight CursorLine cterm=NONE ctermfg=NONE ctermbg=234 guifg=NONE guibg=#1c1c1c
autocmd InsertLeave * highlight CursorLine cterm=NONE ctermfg=NONE ctermbg=233 guifg=NONE guibg=#121212
