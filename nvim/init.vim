" remappings
noremap J }
noremap K {
noremap H :bp<cr>
noremap L :bn<cr>
noremap ,j J
noremap ,w :w<cr>
noremap ,n :e 
noremap ,k :bd<cr>
noremap <c-l> <c-w>l
noremap <c-h> <c-w>h
noremap <c-j> <c-w>j
noremap <c-k> <c-w>k
noremap ,f :Files<cr>
noremap U <c-r>

" settings
set ignorecase smartcase
autocmd BufEnter * :syntax sync fromstart

" plugins
call plug#begin('~/.vim/plugged')
Plug 'bling/vim-bufferline'
Plug 'psf/black', { 'branch': 'stable' }
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
Plug 'nightsense/seabird'
Plug 'tpope/vim-sleuth'
call plug#end()

let g:bufferline_rotate = 2
autocmd BufWritePre *.py execute ':Black'
colorscheme petrel
