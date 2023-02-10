set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set copyindent
set cmdheight=0
"set nowrap

set number
set showcmd
set wildmenu
set showmatch
set termguicolors
set linebreak

set guifont="CaskaydiaCove NF Mono":20

call plug#begin('~/AppData/Local/nvim/plugged')

" Icons
Plug 'nvim-tree/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'

" Themes
Plug 'catppuccin/nvim', {'as': 'catppuccin'}
"Plug 'morhetz/gruvbox'
"Plug 'sainnhe/sonokai'
"Plug 'tomasiser/vim-code-dark'

" Inteface
"Plug 'preservim/nerdtree'
"Plug 'Xuyuanp/nerdtree-git-plugin'
"Plug 'voldikss/vim-floaterm'
Plug 'nvim-tree/nvim-tree.lua'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'romgrk/barbar.nvim'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'nvim-treesitter/nvim-treesitter-context'

" Language
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'sheerun/vim-polyglot'
Plug 'evanleck/vim-svelte'
Plug 'jparise/vim-graphql'
Plug 'tpope/vim-ragtag'
Plug 'ziglang/zig.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Integration Development
"Plug 'cdelledonne/vim-cmake'
Plug 'skywind3000/asyncrun.vim'


call plug#end()

colorscheme catppuccin-mocha

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = "catppuccin"
let g:airline_left_sep="\uE0B0"
let g:airline_right_sep="\uE0B2"
let g:airline_section_z=''
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = ' '
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#show_tab_type = 1
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#fnamecollapse = 1
let g:airline#extensions#tabline#buffers_label = ''
let g:airline#extensions#tabline#tabs_label = ''
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_statusline_ontop = 0
let g:airline_powerline_fonts = 1

" nvim-tree
lua vim.g.loaded_netrw = 1
lua vim.g.loaded_netrwPlugin = 1
lua require('nvim-tree').setup()
nnoremap <silent>    <F1> <Cmd>NvimTreeToggle<CR>

" CMake
"let g:cmake_statusline = 1
"let g:cmake_generate_options = ['ninja']
"let g:cmake_build_options = ['Debug', 'Release', 'RelWithDebInfo', 'MinSizeRel']

" Indent highlight
"lua vim.opt.termguicolors = true
"lua vim.cmd [[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]]
"lua vim.cmd [[highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine]]
"lua vim.cmd [[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]]
"lua vim.cmd [[highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine]]
"lua vim.cmd [[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]]
"lua vim.cmd [[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]]

lua vim.opt.list = true
lua vim.opt.listchars:append "space:⋅"
lua vim.opt.listchars:append "eol:↴"

" lua require("indent_blankline").setup { char = "│", space_char_blankline = " ", char_highlight_list = {"IndentBlanklineIndent1","IndentBlanklineIndent2","IndentBlanklineIndent3","IndentBlanklineIndent4","IndentBlanklineIndent5","IndentBlanklineIndent6", },}

" Tabs
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

" Allow paste
nnoremap <silent>    <A-v> <c-v>

" Recolor line numbers
highlight LineNr guifg=#fff

" Zig
let g:zig_fmt_autosave = 0
