" -----------------------------------------------------------------------------
" common.vim - common file for all vim like tools like vsvim, vscode neovim etc
" -----------------------------------------------------------------------------

" -----------------------------------------------------------------------------
" Basic Settings
" -----------------------------------------------------------------------------
let mapleader="\\" 	"Map the <Leader> key

set wrap            "Automatically wrap text that extends beyond the screen length.
set magic           "Better regex
set clipboard=unnamed " map system clipboard

"Backspace and cursor keys wrap to previous/next line
set backspace=indent,eol,start whichwrap+=<,>,[,]
"set backspace=indent,eol,start " Make backspace more effective


set scrolloff=5 " Display 5 lines above/below the cursor when scrolling with a mouse.

set hlsearch "Highlight matching search patterns
set incsearch "Enable incremental search
set ignorecase "Include matching uppercase words with lowercase search term
set smartcase "Include only uppercase words with uppercase search term


" -----------------------------------------------------------------------------
" Basic mappings
" -----------------------------------------------------------------------------

"remove search highlight.
nnoremap <ESC><ESC> :nohlsearch<CR>
map <Leader>w     :w<CR>
map <Leader>q     :q<CR>

" -----------------------------------------------------------------------------
" Mapping some of the Windows hotkeys
" -----------------------------------------------------------------------------
" CTRL-X and SHIFT-Del are Cut
" vnoremap <C-X> "+x
" vnoremap <S-Del> "+x

" CTRL-C and CTRL-Insert are Copy
" vnoremap <C-C> "+y
" vnoremap <C-Insert> "+y

" CTRL-V and SHIFT-Insert are Paste
" map <C-V> "+gP
" map <S-Insert> "+gP


" cmap <C-V> <C-R>+
" cmap <S-Insert> <C-R>+

" Use CTRL-Q to do what CTRL-V used to do
" noremap <C-Q>		<C-V>

" CTRL-A is Select all
" noremap <C-A> gggH<C-O>G
" inoremap <C-A> <C-O>gg<C-O>gH<C-O>G
" cnoremap <C-A> <C-C>gggH<C-O>G
" onoremap <C-A> <C-C>gggH<C-O>G
" snoremap <C-A> <C-C>gggH<C-O>G
" xnoremap <C-A> <C-C>ggVG

" Seamlessly treat visual lines as actual lines when moving around.
noremap j gj
noremap k gk
noremap <Down> gj
noremap <Up> gk
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk

" Navigate around splits with a single key combo.
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-j> <C-w><C-j>

" Cycle through splits.
nnoremap <S-Tab> <C-w>w

" Press * to search for the term under the cursor or a visual selection and
" then press a key below to replace all instances of it in the current file.
nnoremap <Leader>r :%s///g<Left><Left>
nnoremap <Leader>rc :%s///gc<Left><Left><Left>

" The same as above but instead of acting on the whole file it will be
" restricted to the previously visually selected range. You can do that by
" pressing *, visually selecting the range you want it to apply to and then
" press a key below to replace all instances of it in the current selection.
xnoremap <Leader>r :s///g<Left><Left>
xnoremap <Leader>rc :s///gc<Left><Left><Left>

" Type a replacement term and press . to repeat the replacement again. Useful
" for replacing a few instances of the term (comparable to multiple cursors).
nnoremap <silent> s* :let @/='\<'.expand('<cword>').'\>'<CR>cgn
xnoremap <silent> s* "sy:let @/=@s<CR>cgn

" Clear search highlights.
map <Leader><Space> :let @/=''<CR>

" Format paragraph (selected or not) to 80 character lines.
nnoremap <Leader>g gqap
xnoremap <Leader>g gqa

" Prevent x from overriding what's in the clipboard.
noremap x "_x
noremap X "_x

" Prevent selecting and pasting from overwriting what you originally copied.
xnoremap p pgvy

" Keep cursor at the bottom of the visual selection after you yank it.
vmap y ygv<Esc>