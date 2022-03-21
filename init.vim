
"============
"setting
"============
set number
syntax on
set wildmenu
set hlsearch 
exec "nohlsearch"
set ignorecase
set cursorline
set scrolloff=5
set showcmd
set wrap
set nocompatible
set mouse=a
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
au BufReadPost * if line("'\'") <= line("$") | exe "normal! g'\"" | endif
set ts=4
set sw=4
"coc
set hidden
set updatetime=100
set shortmess+=c


"============
"map key
"============
let mapleader=" "
noremap e i
noremap E I
noremap i k
noremap k j
noremap j h
noremap I 5k
noremap K 5j
noremap h e
noremap H E
map s <nop>
map S <nop>
map t <nop>
map R :source $MYVIMRC<CR>
nmap <C-s> :w<CR>

"============
"split screen
"============
noremap sl :set splitright<CR>:vsplit<CR>
noremap sj :set nosplitright<CR>:vsplit<CR>
noremap sk :set splitbelow<CR>:split<CR>
noremap si :set nosplitbelow<CR>:split<CR>
noremap sv <C-w>t<C-w>K
noremap sh <C-w>t<C-w>H
noremap <LEADER>l <C-w>l
noremap <LEADER>j <C-w>h
noremap <LEADER>k <C-w>j
noremap <LEADER>i <C-w>k
noremap <C-left> ::vertical resize-5<CR>
noremap <C-right> :vertical resize+5<CR>
noremap <C-up> :res +5<CR>
noremap <C-down> :res -5<CR>

"============
"tabview
"============
nnoremap <LEADER>n :tabe<CR>
nnoremap <LEADER>= :+tabnext<CR>
nnoremap <LEADER>- :-tabnext<CR>
nnoremap <LEADER>1 1gt
nnoremap <LEADER>2 2gt
nnoremap <LEADER>3 3gt
nnoremap <LEADER>4 4gt
nnoremap <LEADER>5 5gt
nnoremap <LEADER>6 6gt
nnoremap <LEADER>7 7gt
nnoremap <LEADER>8 8gt
nnoremap <LEADER>9 9gt
nnoremap <LEADER>0 :tablast<CR>


"=============
"NERDTree
"=============
"nnoremap tt :NERDTreeToggle<CR>
"nnoremap tc :NERDTreeTabsClose<CR>:NERDTreeToggle<CR>
"nnoremap tf :NERDTreeFocus<CR>

"============
"Undotree
"============
nnoremap <LEADER>u :UndotreeToggle<CR>

"============
"NERDCommenter
"============
"<leader>c<space>

"============
"fzf
"============
nnoremap <LEADER>/ :FZF<CR>
nnoremap <LEADER>/f <cmd>Telescope find_files<cr>
nnoremap <LEADER>/g <cmd>Telescope live_grep<cr>
nnoremap <LEADER>/b <cmd>Telescope buffers<cr>
nnoremap <LEADER>/h <cmd>Telescope help_tags<cr>

"============
"coc.nvim
"============
nmap <LEADER>t :CocCommand explorer<CR>
inoremap <silent><expr> <c-space> coc#refresh()
nmap <silent> <LEADER>- <Plug>(coc-diagnostic-prev)
nmap <silent> <LEADER>= <Plug>(coc-diagnostic-next)
nmap <silent>gd <Plug>(coc-definition)
"nmap <silent>gD :tab sp<CR><Plug>(coc-definition)
nmap <silent>gy <Plug>(coc-type-definition)
nmap <silent>gi <Plug>(coc-implementation)
nmap <silent>gr <Plug>(coc-references)
nmap <leader>rn <Plug>(coc-rename)
nmap <leader>f  <Plug>(coc-format-selected)
xmap <leader>f  <Plug>(coc-format-selected)


"============
"vista
"============
noremap <LEADER>v :Vista!!<CR>
"noremap <c-t> :silent! Vista finder coc<CR>


"============
" Install vim-plug if not found
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif
" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
\| PlugInstall --sync | source $MYVIMRC
\| endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"============

"============
"Plug-in
"============
call plug#begin('~/.config/nvim/plugged')
"thmem
"Plug 'vim-airline/vim-airline'
Plug 'itchyny/lightline.vim'
"Plug 'connorholyday/vim-snazzy'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
"Plug 'morhetz/gruvbox'
"Plug 'olimorris/onedarkpro.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"nerdtree
"Plug 'preservim/nerdtree'
"Plug 'Xuyuanp/nerdtree-git-plugin'
"Plug 'jistr/vim-nerdtree-tabs'
"Plug 'PhilRunninger/nerdtree-buffer-ops'
"Plug 'ryanoasis/vim-devicons'
"
Plug 'mbbill/undotree'
Plug 'gcmt/wildfire.vim'
Plug 'tpope/vim-surround'
"surround
" cs"' change surround
" ds"  del "
" ysiw] add ] surround
" use S' in visual mode add ' surround
Plug 'liuchengxu/vista.vim'
"Plug 'vim-scripts/taglist.vim'
Plug 'preservim/nerdcommenter'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'airblade/vim-gitgutter'
Plug 'mg979/vim-xtabline'
Plug 'mhinz/vim-startify'

call plug#end()


"theme
"colorscheme snazzy
"
let g:tokyonight_style = "night"
let g:tokyonight_transparent = 1
let g:tokyonight_italic_comments =0
colorscheme tokyonight
"
"colorscheme onedarkpro
"
"color gruvbox

"===========
"NERDTree
"===========
"autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" Open the existing NERDTree on each new tab.
"autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" Mirror the NERDTree before showing it. This makes it the same on all tabs.
"autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif
" Open the existing NERDTree on each new tab.
"let g:NERDTreeGitStatusConcealBrackets = 1
"let g:NERDTreeGitStatusIndicatorMapCustom = { 'Modified'  :'✹', 'Staged'    :'✚', 'Untracked' :'✭', 'Renamed'   :'➜', 'Unmerged'  :'═', 'Deleted'   :'✖', 'Dirty'     :'✗', 'Ignored'   :'☒', 'Clean'     :'✔︎', 'Unknown'   :'?'  }

"============
"xtabline
"============
let g:xtabline_settings = {}
let g:xtabline_settings.buffers_paths = 0
let g:xtabline_settings.current_tab_paths = 0
let g:xtabline_settings.other_tabs_paths = 0


"============
"gitgutter
"============
let g:gitgutter_sign_allow_clobber = 0
let g:gitgutter_override_sign_column_highlight = 0
let g:gitgutter_preview_win_floating = 1
"let g:gitgutter_sign_added = '▎'
"let g:gitgutter_sign_modified = '░'
"let g:gitgutter_sign_removed = '▏'
"let g:gitgutter_sign_removed_first_line = '▔'
"let g:gitgutter_sign_modified_removed = '▒'

" ===
" === Vista.vim
" ===
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
let g:vista_default_executive = 'coc'
let g:vista_fzf_preview = ['right:50%']

let g:startify_custom_header = [
 \'     ___           ___           ___                                    ___'     ,
 \'    /__/\         /  /\         /  /\          ___        ___          /__/\'    ,
 \'    \  \:\       /  /:/_       /  /::\        /__/\      /  /\        |  |::\'   ,
 \'     \  \:\     /  /:/ /\     /  /:/\:\       \  \:\    /  /:/        |  |:|:\'  ,
 \' _ ___\__\:\   /  /:/ /:/_   /  /:/  \:\       \  \:\  /__/::\      __|__|:|\:\' ,
 \'/__/::::::::\ /__/:/ /:/ /\ /__/:/ \__\:\  ___  \__\:\ \__\/\:\__  /__/::::| \:\',
 \'\  \:\~~\~~\/ \  \:\/:/ /:/ \  \:\ /  /:/ /__/\ |  |:|    \  \:\/\ \  \:\~~\__\/',
 \' \  \:\  ~~~   \  \::/ /:/   \  \:\  /:/  \  \:\|  |:|     \__\::/  \  \:\'      ,
 \'  \  \:\        \  \:\/:/     \  \:\/:/    \  \:\__|:|     /__/:/    \  \:\'     ,
 \'   \  \:\        \  \::/       \  \::/      \__\::::/      \__\/      \  \:\'    ,
 \'    \__\/         \__\/         \__\/           ~~~~                   \__\/'    
 \]
autocmd User Startified for key in ['b', 's', 't', 'v', 'i' ] |     
	\ execute 'nunmap <buffer>' key | endfor


"============
"coc.nvim
"============
"
let g:coc_global_extensions = [
	\ 'coc-explorer',
	\ 'coc-json',
	\ 'coc-vimlsp',
	\ 'coc-marketplace',
	\ 'coc-clangd',
	\ 'coc-cmake',
	\ 'coc-sh',
	\ 'coc-go'
\]

inoremap <silent><expr> <TAB>
	\ pumvisible() ? "\<C-n>" :
	\ <SID>check_back_space() ? "\<TAB>" :
	\ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
		let col = col('.') - 1
		return !col || getline('.')[col - 1]  =~# '\s'
endfunction
"set signcolumn=number


















