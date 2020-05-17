" -----------------------------------------------------------------------------
" vscodeneo.vim - vimrc configuration for vscode - neovim plugin
" -----------------------------------------------------------------------------

" include the common vimrc
" source ~/.pkconfig/Vim/common.vim

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
