"--- Modeline and Notes {
" vim: set sw=2 ts=2 sts=2 et tw=80 foldmarker={,} foldlevel=0 foldmethod=marker spell:
" sw -> shiftwidth
" ts -> tabstop
" sts -> softtabstop
" et -> expandtabs
" tw -> textwidth
" }

"--- Basics {

" Disable compatibility with vi which can cause unexpected issues. Must be the first line
set nocompatible

set shell=/bin/sh " Set the current shell inside vim

nnoremap <SPACE> <Nop>
let mapleader=" "

"--- }

"--- Plugins {

set runtimepath+=~/.config/ggvim/bundle/repos/github.com/Shougo/dein.vim

call dein#begin('~/.config/ggvim/bundle')

" Let dein manage dein
call dein#add('~/.config/ggvim/bundle/repos/github.com/Shougo/dein.vim')

" Color scheme
call dein#add('overcache/NeoSolarized', {'merged': 0})

" Airline
call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes')

" Navigation
call dein#add('christoomey/vim-tmux-navigator')
call dein#add('easymotion/vim-easymotion')
call dein#add('rhysd/clever-f.vim')
call dein#add('tpope/vim-surround')
call dein#add('tpope/vim-repeat')
"  call dein#add('rafaqz/ranger.vim')



" Integrations
call dein#add('tpope/vim-fugitive') " git

call dein#end()

if dein#check_install()
    call dein#install()
endif

" }

"--- General {

filetype plugin indent on   " Automatically detect file types
syntax on                   " Syntax highlighting
set mouse=a                 " Automatically enable mouse usage
set mousehide               " Hide the mouse cursor while typing
scriptencoding utf-8

if has('clipboard')
  if has('unnamedplus') " When possible use + register for copy-paste
    set clipboard=unnamed,unnamedplus
  else " On mac and Windows, use * register for copy-paste
    set clipboard=unnamed
  endif
endif

set autoread                                    " Automatically read a file changed outside of vim
set autowrite                                   " Automatically write a file when leaving a modified buffer
set shortmess+=filmnrxoOtT                      " Abbrev. of messages (avoids 'hit enter')
set viewoptions=folds,options,cursor,unix,slash " Better Unix / Windows compatibility
set virtualedit=onemore                         " Allow for cursor beyond last character
set history=1000                                " Store a ton of history (default is 20)
set spell                                       " Spell checking on
set hidden                                      " Allow buffer switching without saving
set iskeyword-=.                                " '.' is an end of word designator
set iskeyword-=#                                " '#' is an end of word designator
set iskeyword-=-                                " '-' is an end of word designator


set backup                  " Backups are nice ...
set undofile                " So is persistent undo ...
set undolevels=1000         " Maximum number of changes that can be undone
set undoreload=10000        " Maximum number lines to save for undo on a buffer reload

let g:data_path = $HOME.'/.cache/ggvim/'
let g:dirs = {'backupdir': 'backup','viewdir': 'views','directory': 'swap','undodir': 'undo'}
for [g:settingname, g:dirname] in items(g:dirs)
  let g:path = g:data_path.dirname.'/'
  if finddir(g:path) ==# ''
    silent call mkdir(g:path, 'p', 0700)
  endif
  exec "set ".settingname."=".path."/"
endfor

unlet g:settingname g:dirname g:data_path g:dirs g:path

" }

"--- UI/UX {

set tabpagemax=15               " Only show 15 tabs

set cursorline                  " Highlight cursor line
set backspace=indent,eol,start  " Backspace for dummies
set linespace=0                 " No extra spaces between rows
set linebreak                   " Do not break words
set relativenumber              " Enable line number
set showmatch                   " Show matching brackets/parenthesis
set incsearch                   " Find as you type search
set hlsearch                    " Highlight search terms
set winminheight=0              " Windows can be 0 line high
set nowrap                      " Do not wrap lines
set ignorecase                  " Case insensitive search
set smartcase                   " Case sensitive when uc present
set wildmenu                    " Show list instead of just completing
set wildmode=list:longest,full  " Command <Tab> completion, list matches, then longest common part, then all.
set whichwrap=b,s,h,l,<,>,[,]   " Backspace and cursor keys wrap too
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx " Wildmenu will ignore files with these extensions.
set scrolljump=5                " Lines to scroll when cursor leaves screen
set scrolloff=3                 " Minimum lines to keep above and below cursor
set foldenable                  " Auto fold code
set showmode                    " Show the mode you are on the last line.
set showcmd                     " Show partial commands in status line and Selected characters/lines in visual mode
set list
set listchars=tab:→\ ,trail:·,extends:↷,precedes:↶ " Highlight problematic whitespace
set fillchars=vert:│,fold:·
set nrformats-=octal

highlight clear SignColumn      " SignColumn should match background
highlight clear LineNr          " Current line number row will have same background color in relative mode

"---- Theme {
set background=dark
colorscheme NeoSolarized
" }

"---- Airline {
set laststatus=2

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_left_sep = ' '
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ' '
let g:airline_right_alt_sep = ' '

let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ' '
let g:airline#extensions#tabline#right_alt_sep = ' '

let g:airline_symbols.branch = ''
let g:airline_symbols.colnr = ' ℅:'
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ' :'
let g:airline_symbols.maxlinenr = '☰ '
let g:airline_symbols.dirty='⚡'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = 'Ξ'


" Automatically displays all buffers when there's only one tab open
let g:airline#extensions#tabline#enabled = 1

" Path formatter
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

" Define the set of text to display for each mode
let g:airline_mode_map = {
\ '__'     : '-',
\ 'c'      : 'C',
\ 'i'      : 'I',
\ 'ic'     : 'I',
\ 'ix'     : 'I',
\ 'n'      : 'N',
\ 'multi'  : 'M',
\ 'ni'     : 'N',
\ 'no'     : 'N',
\ 'R'      : 'R',
\ 'Rv'     : 'R',
\ 's'      : 'S',
\ 'S'      : 'S',
\ ''     : 'S',
\ 't'      : 'T',
\ 'v'      : 'V',
\ 'V'      : 'V',
\ ''     : 'V',
\ }

"}

autocmd VimResized * : wincmd = " Automatically rebalance windows on vim resize

"}

"--- Formatting {

set nowrap                      " Do not wrap long lines
set autoindent                  " Indent at the same level of the previous line
set shiftwidth=2                " Use indents of 4 spaces
set expandtab                   " Tabs are spaces, not tabs
set tabstop=2                   " An indentation every four columns
set softtabstop=2               " Let backspace delete indent
set smartindent
set cindent
set nojoinspaces                " Prevents inserting two spaces after punctuation on a join (J)
set splitright                  " Puts new vsplit windows to the right of the current
set splitbelow                  " Puts new split windows to the bottom of the current

" Automatically set/unset Vim's paste mode when you paste
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction

"}

"--- Navigation {

let g:loaded_netrwPlugin = 'disable' " Disable netrw plugin

"--- Ranger integration {

function! s:ReadRangerOutput(choosefiles) abort
  if filereadable(a:choosefiles)
    return readfile(a:choosefiles)
  endif
endfun

function! s:VimRangerChooser(path) abort
  let l:choosefiles = tempname()

  exec 'silent !ranger --choosefiles=' . shellescape(l:choosefiles) . ' ' . shellescape(a:path)

  if bufnr('%') != bufnr('#')
    setl bufhidden=delete | buffer! #
  else
    enew | bdelete! #
  endif

  let l:files = s:ReadRangerOutput(l:choosefiles)
  call delete(l:choosefiles)

  if empty(l:files)| enew | return | endif

  for f in l:files
    exec 'silent edit ' . fnameescape(f)
    doau BufRead
  endfor

  redraw!
  " reset the filetype to fix the issue that happens
  " when opening ranger on VimEnter (with `vim .`)
  filetype detect
endfun

function! s:RangerChooser(path)
  if isdirectory(a:path)
    call s:VimRangerChooser(a:path)
  endif
endfun

autocmd BufEnter * silent call s:RangerChooser(expand("<amatch>"))

"}

"}
