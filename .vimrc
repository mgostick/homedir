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
"set tw=159    " width of document
set nowrap    " don't automatically wrap on load
set fo-=t     " don't automatically wrap text when typing
"set colorcolumn=160
"highlight ColorColumn ctermbg=233

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
"set shiftround
"set smarttab

" 1000 lines of copy/paste buffer
set viminfo='20,<1000,s1000

" auto paste mode detection
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"
inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()
function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction

" pathogen!
execute pathogen#infect()

" NERDtree
map <C-n> :NERDTreeToggle<CR>
" Default is 31, not wide enough
let g:NERDTreeWinSize=50

" scrolling with ctrl and pg keys!
map <ESC>[1;5D <C-Left>
map <ESC>[1;5C <C-Right>
map <ESC>[1;5B <PageDown>
map <ESC>[1;5A <PageUp>
map! <ESC>[1;5D <C-Left>
map! <ESC>[1;5C <C-Right>
map! <ESC>[1;5B <PageDown>
map! <ESC>[1;5A <PageUp>
