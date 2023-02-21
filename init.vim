:set number
:set autoindent
:set tabstop=2
:set shiftwidth=2
:set smarttab
:set softtabstop=2
:set mouse=a

" Basic settings
set clipboard=unnamedplus " Copy to system clipboard
set encoding=utf-8 " Encoding
set fileencoding=utf-8 " File encoding
set clipboard=unnamedplus " Copy to system clipboard

call plug#begin('~/.config/nvim/plugged')
" Basic, essential plugins
Plug 'preservim/nerdtree' " Project directories and files in a sidebar
Plug 'vim-airline/vim-airline' " Colorful and more detailed status bar at the bottom
Plug 'Lokaltog/vim-airline-themes' " Themes for vim-airline
Plug 'wakatime/vim-wakatime' " Wakatime, coding time statistics
Plug 'tpope/vim-commentary' " Commenting code
Plug 'tpope/vim-surround' " Surrounding text with quotes, brackets, etc

" Syntax Highlighting
Plug 'sheerun/vim-polyglot' " Syntax highlighting for most popular languages
Plug 'posva/vim-vue' " Syntax highlighting for vuejs

" Code completion
Plug 'neoclide/coc.nvim', {'branch': 'release'} " suggestions for code completion
Plug 'github/copilot.vim' " Github CoPilot, yes i do use that

" Code formatting
Plug 'prettier/vim-prettier' " Prettier for code formatting on save
Plug 'editorconfig/editorconfig-vim' " EditorConfig for consistent coding styles between different editors

" Front-end Web-Dev stuff
Plug 'mattn/emmet-vim' " Emmet's abbreviation for easier element creation


call plug#end()

let g:airline#extensions#wakatime#enabled = 1 " Enable wakatime in vim-airline

" NERDTree
let NERDTreeShowHidden=1 " Show hidden files
let NERDTreeMinimalUI=1 " Minimal UI
let NERDTreeWinSize=20 " Sidebar width
let NERDTreeDirArrows=1 " Show arrows for directories
let NERDTreeChDirMode=2 " Change directory to the selected file
autocmd vimenter * NERDTree " Open NERDTree on startup

" Copilot
let g:copilot#enable = 1 " Enable Copilot
let g:copilot#enable_at_startup = 1 " Enable Copilot at startup

" Prettier
let g:prettier#autoformat = 1 " Autoformat on save

" Hotkeys
nnoremap <C-s> :w<CR> " Save file with Ctrl + S

