set encoding=utf-8

call plug#begin('~/.config/nvim/plugged')

Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'github/copilot.vim'

Plug 'pwntester/octo.nvim'


Plug 'f-person/git-blame.nvim'

Plug 'nvim-lua/plenary.nvim'
Plug 'lewis6991/gitsigns.nvim'

Plug 'nvim-telescope/telescope.nvim'

Plug 'lukas-reineke/indent-blankline.nvim'

Plug 'nvim-lualine/lualine.nvim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

" More NERDTree Configs
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

" Set the numebrs

set nu


" basic keybinds

nnoremap <C-u> :undo<CR>
nnoremap <C-y> :redo<CR>

" Vim Airline THeme

let g:airline_theme="bubblegum"
" Discord RPC Config

let g:presence_auto_update         = 1
let g:presence_neovim_image_text   = "Neovim v0.6.0"
let g:presence_main_image          = "neovim"