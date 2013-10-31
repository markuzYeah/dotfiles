"Environment {

  " assusmes pathogen is installed
  "set nocompatible
  call pathogen#runtime_append_all_bundles()
  filetype plugin indent on
  
  syntax on
	if $THEME == 'light'
	  set background=light
	else
	  set background=dark
	endif

  set t_Co=256      " Assuming xterm-256color
  set mouse=a      " Enable mouse usage (all modes) in terminal
  set encoding=utf-8
  set shell=/bin/zsh

  "set noswapfile

	if &bg == "dark"
		color mgj256
    "color solarized
    "color twilight
	else
		color github
	endif

"}
"
"Vim UI {

  set nofoldenable
  set foldmethod=indent
  set foldlevel=2



  " setting colorfull {, [, ( 
  
  au VimEnter * RainbowParenthesesToggle
  au Syntax * RainbowParenthesesLoadRound
  au Syntax * RainbowParenthesesLoadSquare
  au Syntax * RainbowParenthesesLoadBraces

  set showmode
  set ruler
  set breakat=\ "this is a comment, the vim sytanx highlight is tripping, we need a trailing space here.
  set linebreak
  set showbreak=\...\ " This is a also a comment, we need a trailing space here as well
  set relativenumber

  set scrolloff=2
  set laststatus=2
  "set statusline=%{getcwd()}/%f\ %=\ ☼\ a=\%03.3b,h=\%03.3B%=(%l,%c)\ %p%%
  set statusline=%{getcwd()}/%f\ %=\ ツ\ %=(%l,%c)\ %p%%

  set nohls
  nmap <F9> :set hlsearch! hlsearch? <CR>
  set incsearch
  set ignorecase
  "set winminheight=0
  set smartcase
  set showmatch

  "set wildmenua
  "set wildmode=list:longest,full
  "set backspace=indent,eol,start
  "set shortmess+=filmrxoOT
  "set virtualedit=onemore
  "set spell
"}
"
" Formating {
  set autoindent
  set backspace=2
  set tabstop=2
  set expandtab
  set shiftwidth=2
  set smarttab
  set softtabstop=2
  set pastetoggle=<F10>

  set wildignore+=*/tmp/*,*.so,*.swp,*.zip
  let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/](\.git|\.hg|\.svn)$',
      \ 'file': '\.exe$\|\.so$\|\.dll$',
      \ 'link': 'some_bad_symbolic_links',
      \ }


"}
"
" Key (re)mappins {
"  cmap W w
"  cmap Q q
"  cmap Wq wq
"  cmap wQ wq
"  cmap WQ wq
"
"  cmap w!! w !sudo tee % >/dev/null
"  cmap W!! w !sudo tee % >/dev/null
"
"  cmap wq!! wq !sudo tee % >/dev/null
"  cmap Wq!! wq !sudo tee % >/dev/null
"  cmap wQ!! wq !sudo tee % >/dev/null
"  cmap WQ!! wq !sudo tee % >/dev/null
"}


"" The following are commented out as they cause vim to behave a lot differently from regular Vi. They are highly recommended though.

"set colorcolumn=78

""set showcmd" Show (partial) command in status line.
""set showmatch" Show matching brackets.
""set ignorecase" Do case insensitive matching
""set incsearch" Incremental search
""set autowrite" Automatically save before commands like :next and :make
""set hidden             " Hide buffers when they are abandoned
""set hls" this highlight maches
""set nobackup
""set noignorecase" doesn't ignore case in search
""
""set number          "  numbers in line
""set undofile
""filetype on
""set ofu=syntaxcomplete#Complete
""autocmd FileType python set omnifunc=pythoncomplete#Complete



"assumes the indent guid plugin is installed

let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

" changing to mysql
let g:sql_type_default = 'mysql'

set listchars=tab:>-,eol:¬
function! IndentWhiteSpaceToggle()
  set list!
  " this function is from a indent guide plugin
  :IndentGuidesToggle
endfunction
nmap <silent><leader>t :call IndentWhiteSpaceToggle() <CR>

function! Clean()
  :silent! %s/\s\+$//g
  :silent! %s///g
endfunction
nmap <silent><leader>c :call Clean() <CR>

function! CClean()
  :silent! %s/\s\+$//g
  :silent! %s///g
  :silent! g/^$/d
endfunction
nmap <silent><leader>C :call CClean() <CR>

function! Make00()
  :w!
  :!justMake.bash
  :redraw!
endfunction
nmap <silent><leader>m :silent! call Make00()<CR>

function! Make01()
  :w!
  :!sh build.sh -g
  :redraw!
endfunction
nmap <silent><leader>g :silent! call Make01()<CR>

function! Make02()
  :w!
  :!make -s
  :redraw!
endfunction
nmap <silent><leader>M :call Make02()<CR>


cnoreabbrev <expr> W ((getcmdtype() is# ':' && getcmdline() is# 'W')?('w'):('W'))

cnoreabbrev <expr> Q ((getcmdtype() is# ':' && getcmdline() is# 'Q')?('q'):('Q'))

nmap <silent><leader>f :CtrlP




autocmd BufNewFile,BufRead *.json set ft=coffee
autocmd BufNewFile,BufRead *.ts setfiletype ts
" use coffee-script sintaxy on .json files.
