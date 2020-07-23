" -----------------------------------------------------------------------------
" This config is targeted for vim, gvim, neovim and it's graphical versions
" -----------------------------------------------------------------------------

" -----------------------------------------------------------------------------
" Color settings
" -----------------------------------------------------------------------------

" Enable 24-bit true colors if your terminal supports it.
if (has("termguicolors"))
  " https://github.com/vim/vim/issues/993#issuecomment-255651605
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

  set termguicolors
endif

" Enable syntax highlighting.
syntax on

" Set the color scheme.
colorscheme onedark

" Set the color scheme to dark.
set background=dark

if has('gui_running')
  set guifont=SauceCodePro\ NF:h11
endif

" Edit Vim config file in a new tab.
map <Leader>ev :tabnew $MYVIMRC<CR>

" Source Vim config file.
map <Leader>sv :source $MYVIMRC<CR>

" Toggle spell check.
map <F5> :setlocal spell!<CR>

" Toggle relative line numbers and regular line numbers.
nmap <F6> :set invrelativenumber<CR>

" Automatically fix the last misspelled word and jump back to where you were.
"   Taken from this talk: https://www.youtube.com/watch?v=lwD8G1P52Sk
nnoremap <leader>sp :normal! mz[s1z=`z<CR>

set number
set relativenumber

" -----------------------------------------------------------------------------
" Status line
" -----------------------------------------------------------------------------

" Heavily inspired by: https://github.com/junegunn/dotfiles/blob/master/vimrc
function! s:statusline_expr()
  let mod = "%{&modified ? '[+] ' : !&modifiable ? '[x] ' : ''}"
  let ro  = "%{&readonly ? '[RO] ' : ''}"
  let ft  = "%{len(&filetype) ? '['.&filetype.'] ' : ''}"
  let fug = "%{exists('g:loaded_fugitive') ? fugitive#statusline() : ''}"
  let sep = ' %= '
  let pos = ' %-12(%l : %c%V%) '
  let pct = ' %P'

  return '[%n] %f %<'.mod.ro.ft.fug.sep.pos.'%*'.pct
endfunction

let &statusline = s:statusline_expr()
" Status bar
" set laststatus=2
" Set status line display
" set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ [BUFFER=%n]\ %{strftime('%c')}

" -----------------------------------------------------------------------------
" Basic Settings
"   Research any of these by running :help <setting>
" -----------------------------------------------------------------------------

set cursorline cursorcolumn "Cursor line vertical and horizontal

" Set the temp directory for the swap files
set directory^=$HOME/.vim/tmp//

" set autoindent
" set autoread
" set backspace=indent,eol,start
" set backupdir=/tmp//,.
" set clipboard=unnamedplus
" set colorcolumn=80
" set complete+=kspell
" set completeopt=menuone,longest
" " set cryptmethod=blowfish2
" set cursorline
" " set directory=/tmp//,.
" set encoding=utf-8
" set expandtab smarttab
" set formatoptions=tcqrn1
" set hidden
" set hlsearch
" set ignorecase
" set incsearch
" set laststatus=2
" set matchpairs+=<:> " Use % to jump between pairs
" set mmp=5000
" set modelines=2
" set mouse=a
" set nocompatible
" set noerrorbells visualbell t_vb=
" set noshiftround
" set nospell
" set nostartofline
" set number relativenumber
" set regexpengine=1
" set ruler
" set scrolloff=3
" set shiftwidth=2
" set showcmd
" set showmatch
" set shortmess+=c
" set showmode
" set smartcase
set softtabstop=2
" set spelllang=en_us
" set splitbelow
" set splitright
set tabstop=2
" set textwidth=0
" set ttimeout
" set ttyfast
" "set ttymouse=sgr
" set undodir=/tmp
" set undofile
" set virtualedit=block
" set whichwrap=b,s,<,>
" set wildmenu
" set wildmode=full
" set wrap
"
" runtime! macros/matchit.vim
"
" hi SpellBad cterm=underline ctermfg=9
" hi SpellLocal cterm=underline ctermfg=9
" hi SpellRare cterm=underline ctermfg=9
" hi SpellCap cterm=underline


" -----------------------------------------------------------------------------
" Basic autocommands
" -----------------------------------------------------------------------------

" Auto-resize splits when Vim gets resized.
autocmd VimResized * wincmd =

" Update a buffer's contents on focus if it changed outside of Vim.
au FocusGained,BufEnter * :checktime

" Unset paste on InsertLeave.
autocmd InsertLeave * silent! set nopaste

" Make sure all types of requirements.txt files get syntax highlighting.
autocmd BufNewFile,BufRead requirements*.txt set syntax=python

" Ensure tabs don't get converted to spaces in Makefiles.
autocmd FileType make setlocal noexpandtab

" Only show the cursor line in the active buffer.
" augroup CursorLine
"     au!
"     au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
"     au WinLeave * setlocal nocursorline
" augroup END

" ----------------------------------------------------------------------------
" Basic commands
" ----------------------------------------------------------------------------

" Add all TODO items to the quickfix list relative to where you opened Vim.
" function! s:todo() abort
"   let entries = []
"   for cmd in ['git grep -niIw -e TODO -e FIXME 2> /dev/null',
"             \ 'grep -rniIw -e TODO -e FIXME . 2> /dev/null']
"     let lines = split(system(cmd), '\n')
"     if v:shell_error != 0 | continue | endif
"     for line in lines
"       let [fname, lno, text] = matchlist(line, '^\([^:]*\):\([^:]*\):\(.*\)')[1:3]
"       call add(entries, { 'filename': fname, 'lnum': lno, 'text': text })
"     endfor
"     break
"   endfor
"
"   if !empty(entries)
"     call setqflist(entries)
"     copen
"   endif
" endfunction

command! Todo call s:todo()

" Profile Vim by running this command once to start it and again to stop it.
" function! s:profile(bang)
"   if a:bang
"     profile pause
"     noautocmd qall
"   else
"     profile start /tmp/profile.log
"     profile func *
"     profile file *
"   endif
" endfunction
"
" command! -bang Profile call s:profile(<bang>0)

" Toggle visually showing all whitespace characters.
noremap <F7> :set list!<CR>
inoremap <F7> <C-o>:set list!<CR>
cnoremap <F7> <C-c>:set list!<CR>

" Toggle quickfix window.
function! QuickFix_toggle()
    for i in range(1, winnr('$'))
        let bnum = winbufnr(i)
        if getbufvar(bnum, '&buftype') == 'quickfix'
            cclose
            return
        endif
    endfor

    copen
endfunction
nnoremap <silent> <Leader>c :call QuickFix_toggle()<CR>

" Convert the selected text's title case using the external tcc script.
"   Requires: https://github.com/nickjj/title-case-converter
vnoremap <Leader>tc c<C-r>=system('tcc', getreg('"'))[:-2]<CR>

" Navigate the complete menu items like CTRL+n / CTRL+p would.
inoremap <expr> <Down> pumvisible() ? "<C-n>" :"<Down>"
inoremap <expr> <Up> pumvisible() ? "<C-p>" : "<Up>"

" Select the complete menu item like CTRL+y would.
inoremap <expr> <Right> pumvisible() ? "<C-y>" : "<Right>"
inoremap <expr> <CR> pumvisible() ? "<C-y>" :"<CR>"

" Cancel the complete menu item like CTRL+e would.
inoremap <expr> <Left> pumvisible() ? "<C-e>" : "<Left>"
