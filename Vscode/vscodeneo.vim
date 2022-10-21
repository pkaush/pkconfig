" -----------------------------------------------------------------------------
" vscodeneo.vim - vimrc configuration for vscode - neovim plugin
" -----------------------------------------------------------------------------

" include the common vimrc
" source ~/.pkconfig/Vim/common.vim
" -----------------------------------------------------------------------------
" Basic Settings
" -----------------------------------------------------------------------------
let mapleader="," 	"Map the <Leader> key

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
imap jk <ESC> 

" map Ctrl -hjkl to move between windows
nnoremap <silent> <C-j> :<C-u>call VSCodeNotify('workbench.action.focusBelowGroup')<CR>
xnoremap <silent> <C-j> :<C-u>call VSCodeNotify('workbench.action.focusBelowGroup')<CR>
nnoremap <silent> <C-k> :<C-u>call VSCodeNotify('workbench.action.focusAboveGroup')<CR>
xnoremap <silent> <C-k> :<C-u>call VSCodeNotify('workbench.action.focusAboveGroup')<CR>
nnoremap <silent> <C-h> :<C-u>call VSCodeNotify('workbench.action.focusLeftGroup')<CR>
xnoremap <silent> <C-h> :<C-u>call VSCodeNotify('workbench.action.focusLeftGroup')<CR>
nnoremap <silent> <C-l> :<C-u>call VSCodeNotify('workbench.action.focusRightGroup')<CR>
xnoremap <silent> <C-l> :<C-u>call VSCodeNotify('workbench.action.focusRightGroup')<CR>

" Tree settings
nnoremap <silent> <expr> <Leader>n :<C-u>call VSCodeNotify('workbench.action.toggleSidebarVisibility')<CR>
nnoremap <silent> <C-y> :<C-u>call VSCodeNotify('workbench.action.toggleSidebarVisibility')<CR>
nnoremap <silent> <leader>f :<C-u>call VSCodeNotify('revealInExplorer')<CR>
nnoremap <silent> <leader>n :<C-u>call VSCodeNotify('fileutils.renameFile')<CR>
"
" " Ctrl+w gd to open the defination in a different file
nnoremap <silent> <C-w>gd :<C-u>call VSCodeNotify('editor.action.revealDefinitionAside')<CR>
nnoremap <silent> <leader>fa :<C-u>call VSCodeNotify('workbench.action.findInFiles', { 'query': expand('<cword>')})<CR>


" Map Ctrl move keys to move between windows
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
