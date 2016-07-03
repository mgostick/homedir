" Show whitespace
" MUST be inserted BEFORE the colorscheme command
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/

colorscheme desert

set clipboard=unnamedplus

" Enable syntax highlighting
" You need to reload this file for the change to apply
filetype off
filetype plugin indent on
syntax on

" folding settings
set foldmethod=indent
set foldnestmax=10
set foldlevel=1
nnoremap <Space> za

" Showing line numbers and length
"set number   " show line numbers
set tw=159    " width of document
set nowrap    " don't automatically wrap on load
set fo-=t     " don't automatically wrap text when typing
set colorcolumn=160
highlight ColorColumn ctermbg=233

" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

" TABS are evil
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set shiftround
set smarttab

" 1000 lines of copy/paste buffer
set viminfo='20,<1000,s1000

set paste

" pathogen!
execute pathogen#infect()

" NERDtree
map <C-n> :NERDTreeToggle<CR>
