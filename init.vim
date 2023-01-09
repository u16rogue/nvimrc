set tabstop=4    
set softtabstop=4
set shiftwidth=4 
set expandtab    
set autoindent
set copyindent   
"set nowrap

set number
set showcmd
set wildmenu
set showmatch
set termguicolors
set linebreak

call plug#begin('~/AppData/Local/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'skywind3000/asyncrun.vim'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-ragtag'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'sainnhe/sonokai'
Plug 'morhetz/gruvbox'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'
"Plug 'voldikss/vim-floaterm'
"Plug 'sainnhe/sonokai'
"Plug 'tomasiser/vim-code-dark'

call plug#end()

"autocmd vimenter * NERDTree

colorscheme gruvbox
let g:airline_theme = "gruvbox"

"let g:sonokai_style = 'andromeda'
"let g:sonokai_enable_italic = 1
"let g:sonokai_disable_italic_comment = 1
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_section_z=''
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#fnamecollapse = 1
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tabline#buffers_label = ''
let g:airline#extensions#tabline#tabs_label = ''
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_statusline_ontop=0

nnoremap <silent>    <S-e> <Cmd>NERDTreeToggle<CR>
nnoremap <silent>    <A-z> <Cmd>BufferPrevious<CR>
nnoremap <silent>    <A-c> <Cmd>BufferClose<CR>
nnoremap <silent>    <A-x> <Cmd>BufferNext<CR>
nnoremap <silent>    <A-1> <Cmd>BufferGoto 1<CR>
nnoremap <silent>    <A-2> <Cmd>BufferGoto 2<CR>
nnoremap <silent>    <A-3> <Cmd>BufferGoto 3<CR>
nnoremap <silent>    <A-4> <Cmd>BufferGoto 4<CR>
nnoremap <silent>    <A-5> <Cmd>BufferGoto 5<CR>
nnoremap <silent>    <A-6> <Cmd>BufferGoto 6<CR>
nnoremap <silent>    <A-7> <Cmd>BufferGoto 7<CR>
nnoremap <silent>    <A-8> <Cmd>BufferGoto 8<CR>
nnoremap <silent>    <A-9> <Cmd>BufferGoto 9<CR>
"nnoremap <silent>    <A-t> <Cmd>FloatermToggle<CR>
