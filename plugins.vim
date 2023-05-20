call plug#begin('~/.config/nvim/autoload/plugged')

    Plug 'junegunn/vim-plug'

    " Themes
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'Yggdroot/indentLine'
    Plug 'itchyny/vim-cursorword'
    Plug 'lfv89/vim-interestingwords'
    Plug 'kien/rainbow_parentheses.vim'
    Plug 'romainl/vim-cool'
    Plug 'Konfekt/FastFold'
    Plug 'morhetz/gruvbox'
    Plug 'w0ng/vim-hybrid'
    Plug 'joshdick/onedark.vim'


    Plug 'easymotion/vim-easymotion'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'MattesGroeger/vim-bookmarks'
    Plug 'majutsushi/tagbar'
    Plug 'mhinz/vim-startify'
    Plug 'farmergreg/vim-lastplace'
    Plug 'vim-scripts/TaskList.vim'
    Plug 'rizzatti/dash.vim'
    Plug 'voldikss/vim-floaterm'

    " Efficiency
    Plug 'jiangmiao/auto-pairs'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-repeat'
    Plug 'terryma/vim-multiple-cursors'
    Plug 'mbbill/undotree'
    Plug 'tpope/vim-commentary'
    Plug 'w0rp/ale'


    Plug 'scrooloose/nerdtree'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'jistr/vim-nerdtree-tabs'
    Plug 'mhinz/vim-signify'
    Plug 'tpope/vim-eunuch'

    " Rust
    Plug 'rust-lang/rust.vim'
    Plug 'mattn/webapi-vim'
    Plug 'timonv/vim-cargo'
    Plug 'racer-rust/vim-racer'

    " Markdown
    Plug 'iamcco/mathjax-support-for-mkdp'
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }


call plug#end()

" ------------------------------------------------
" For init leader key
" ------------------------------------------------
filetype indent on
set nocompatible
scriptencoding utf-8
let mapleader=","
let g:mapleader=","
nmap <Leader>v :so $MYVIMRC<CR>

" Set termguicolors
" Colorscheme onedark
colorscheme hybrid
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
highlight Normal ctermbg=None
highlight clear SignColumn

" ------------------------------------------------
" For handsome
" ------------------------------------------------
set complete-=i   " disable scanning included files
set complete-=t   " disable searching tags
set autoindent
set smartindent
autocmd FileType c,java,shell,bash,vim,cpp,rust set ai et ts=2 sw=2 sts=2
autocmd FileType javascript,typescript,html,css,react set ai et ts=2 sw=2 sts=2
autocmd FileType go set ai noet ts=8 sw=8 sts=8
set smarttab
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:. " Highlight problematic whitespace
set backspace=2
set backspace=indent,eol,start
set shiftround
set cursorline
set textwidth=127
set wrap
set linebreak
set wrapmargin=1
set ruler

" Edit
set noswapfile
set undofile
set undodir=~/.vim/.undo//
set autochdir
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

set title " Change the terminal's title
set showcmd
set wildmenu " Show list instead of just completing
set wildmode=list:longest,full " Command <Tab> completion, list matches, then longest common part, then all.
set showmatch
set smartcase       " Case insensitive searches become sensitive with capitals
set relativenumber
set number

set ignorecase
set incsearch       " Incremental search
set hlsearch        " High light search

set scrolloff=8
set sidescrolloff=15
set sidescroll=1
set cmdheight=2
set laststatus=2

set autoread
set autowrite       " Automatically save before commands like :next and :make
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo

set novisualbell           " don't beep
set noerrorbells         " don't beep
set t_vb=
set mouse=a
set mousehide
set ttimeout
set ttimeoutlen=100


" ------------------------------------------------
" For airline
" ------------------------------------------------
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_skip_empty_sections = 1

" ------------------------------------------------
" For vim-cool
" ------------------------------------------------
let g:CoolTotalMatches = 1

" ------------------------------------------------
" For rainbow_parentheses.vim
" http://vimawesome.com/plugin/rainbow-parentheses-vim
" http://www.wklken.me/posts/2015/06/07/vim-plugin-rainbowparentheses.html
" ------------------------------------------------
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
" \ ['black',       'SeaGreen3'],

" ------------------------------------------------
" For NerdTree
" ------------------------------------------------
nnoremap <leader>nt :NERDTreeToggle<CR>
nnoremap <leader>nf :NERDTreeFind<CR>
let g:nerdtree_tabs_open_on_gui_startup=0
let NERDTreeShowBookmarks=0
let NERDTreeIgnore=['\.py[cd]$', '\~$', '\.swo$', '\.swp$', '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$']
let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=0
let NERDTreeMouseMode=2
let NERDTreeShowHidden=0
let NERDTreeKeepTreeInNewTab=1
let NERDTreeWinSize=36
autocmd BufEnter * if 0 == len(filter(range(1, winnr('$')), 'empty(getbufvar(winbufnr(v:val), "&bt"))')) | qa! | endif


" ------------------------------------------------
" For ale
" ------------------------------------------------
let g:ale_linters_explicit = 1
let g:ale_linters = {
\   'cpp': ['cppcheck','clang','gcc'],
\   'c': ['cppcheck','clang', 'gcc'],
\   'rust': [ 'cargo', 'rls', 'rustc' ],
\   'bash': ['shellcheck'],
\   'go': ['golint'],
\   'javascript': ['eslint'],
\}
let g:ale_rust_rls_toolchain = 'nightly'
let g:ale_fixers = {
\   'rust': ['rustfmt'],
\   'javascript': ['eslint'],
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\}
let g:ale_set_hightlights = 1
let g:ale_change_sign_column_color = 0
let g:ale_sign_column_always = 0
let g:ale_linters_explicit = 1
let g:ale_echo_delay = 20
let g:ale_lint_delay = 500
let g:ale_echo_msg_format = '[%linter%] %code: %%s'
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_enter = 0
let g:ale_set_quickfix = 1
let g:ale_open_list = 1
let g:ale_c_gcc_options = '-Wall -O2 -std=c99'
let g:ale_cpp_gcc_options = '-Wall -O2 -std=c++14'
let g:ale_c_cppcheck_options = ''
let g:ale_cpp_cppcheck_options = ''
nmap sp <Plug>(ale_previous_wrap)
nmap sn <Plug>(ale_next_wrap)
nnoremap <leader>at :ALEToggle<CR>
nnoremap <leader>af :ALEFix<cr>

" ------------------------------------------------
" For Fastflod
" ------------------------------------------------
set foldmethod=indent
set foldopen+=jump
set foldlevelstart=99
nmap zuz <Plug>(FastFoldUpdate)

nnoremap <space> za 
let g:fastfold_savehook = 1
let g:fastfold_fold_command_suffixes =  ['x','X','a','A','o','O','c','C']
let g:fastfold_fold_movement_commands = [']z', '[z', 'zj', 'zk']
let g:markdown_folding = 1
let g:tex_fold_enabled = 1
let g:vimsyn_folding = 'af'
let g:javaScript_fold = 1
let g:sh_fold_enabled= 7
let g:r_syntax_folding = 1
let g:rust_fold = 1


" ------------------------------------------------
" For Signify see :help Signify
" ------------------------------------------------
let g:signify_disable_by_default=1
nnoremap <leader>se :SignifyEnable<CR>
nnoremap <leader>st :SignifyToggle<CR>
nnoremap <leader>sd :SignifyDiff<CR>

" ------------------------------------------------
" For startify
" ------------------------------------------------
let g:startify_change_to_dir = 0

" ------------------------------------------------
"  For commentary
" ------------------------------------------------
autocmd FileType apache setlocal commentstring=#\ %s


" ------------------------------------------------
"  For fzf.vim
" ------------------------------------------------
nnoremap <silent> <Leader>f :Files<CR>
nnoremap <silent> <C-p> :GFiles<CR>
nnoremap <silent> <Leader>b :Buffers<CR>
nnoremap <silent> <Leader>rg :Rg<CR>
nnoremap <silent> <Leader>l :BLines<CR>
nnoremap <silent> <Leader>h :History<CR>
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview({'dir': systemlist('git rev-parse --show-toplevel')[0]}), <bang>0)
let g:fzf_preview_window = 'right:50%'

" ------------------------------------------------
" For tagbar
" ------------------------------------------------
nnoremap <leader>tt :TagbarToggle<CR>
" let g:tagbar_position="left"
let g:tagbar_width=36


" ------------------------------------------------
" For dash.vim
" ------------------------------------------------
nmap <silent> <leader>ds <Plug>DashSearch

" ------------------------------------------------
" For bookmarks
" ------------------------------------------------
nmap <Leader>mm <Plug>BookmarkToggle
nmap <Leader>mi <Plug>BookmarkAnnotate
nmap <Leader>ma <Plug>BookmarkShowAll
nmap <Leader>mj <Plug>BookmarkNext
nmap <Leader>mk <Plug>BookmarkPrev
nmap <Leader>mc <Plug>BookmarkClear
nmap <Leader>mx <Plug>BookmarkClearAll
nmap <Leader>kk <Plug>BookmarkMoveUp
nmap <Leader>jj <Plug>BookmarkMoveDown
nmap <Leader>mg <Plug>BookmarkMoveToLine
let g:bookmark_no_default_key_mappings = 1
let g:bookmark_sign = '♥'
let g:bookmark_highlight_lines = 1
highlight BookmarkSign ctermbg=NONE ctermfg=160
highlight BookmarkLine ctermbg=194 ctermfg=NONE

" ------------------------------------------------
" For TaskList.vim
" ------------------------------------------------
nmap <leader>tl <Plug>TaskList

" ------------------------------------------------
" For easymotion.vim
" ------------------------------------------------
nmap ss <Plug>(easymotion-s)

" ------------------------------------------------
" For interestingwords.vim
" ------------------------------------------------
nnoremap <silent> <leader>k :call InterestingWords('n')<cr>
nnoremap <silent> <leader>K :call UncolorAllWords()<cr>
nnoremap <silent> n :call WordNavigation('forward')<cr>
nnoremap <silent> N :call WordNavigation('backward')<cr>


let g:floaterm_width = 0.9
let g:floaterm_height = 0.9
let g:floaterm_keymap_toggle = '<F12>'


if has('clipboard')
  if has('unnamedplus')  " When possible use + register for copy-paste
    set clipboard=unnamed,unnamedplus
  else         " On mac and Windows, use * register for copy-paste
    set clipboard=unnamed
  endif
endif

nnoremap <leader>so :normal A # noqa<CR>
vnoremap so :normal A # noqa<CR>
noremap <leader>w :w<cr>
cnoremap w!! w !sudo tee % >/dev/null

noremap <leader>hh <C-w>h
noremap <leader>jj  <C-w>j
noremap <leader>kk <C-w>k
noremap <leader>ll <C-w>l

noremap j gj
noremap k gk
vnoremap < <gv
vnoremap > >gv

cnoremap %% <C-R>=fnameescape(expand('%:h')).'/'<cr>


nnoremap [<space>  :<c-u>put! =repeat(nr2char(10), v:count1)<cr>'[
nnoremap ]<space>  :<c-u>put =repeat(nr2char(10), v:count1)<cr>
nnoremap <expr> gb '`[' . strpart(getregtype(), 0, 1) . ']`'
