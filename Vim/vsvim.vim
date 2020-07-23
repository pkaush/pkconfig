" -----------------------------------------------------------------------------
" This config is targeted for VsVim - Visual Studio vsvim configuration
" -----------------------------------------------------------------------------

"Use Visual Studio defaults for tabs
set vsvim_useeditordefaults

" include the common vimrc
source ~/.pkconfig/Vim/common.vim

" Basic Settings
set vsvimcaret=60  "Changes opacity of cursor from 0 - 100


" Visual Studio Commands
map <Leader>fi       : vsc Edit.Find<CR>
map <Leader>fa      : vsc Edit.FindAllReferences<CR>
map <Leader>re       : vsc Edit.Replace<CR>
map <Leader>ra      : vsc Edit.ReplaceinFiles<CR>

map <Leader>gd      :vsc Edit.GoToDefinition<CR>
map <Leader>gc      :vsc Edit.GoToDeclaration<CR>

vnoremap <C-p>         :vsc Edit.GoToAll<CR>
inoremap <C-p>         :vsc Edit.GoToAll<CR>
nnoremap <C-p>         :vsc Edit.GoToAll<CR>

vnoremap <Leader>ft    :vsc Edit.FormatSelection<CR>
nnoremap <Leader>ft    :vsc Edit.FormatDocument<CR>


map <Leader>b       : vsc Build.BuildSelection<CR>
map <Leader>bs      : vsc Build.BuildSolution<CR>


map <Leader>qk      : vsc Tools.CustomizeKeyboard<CR>
map <Leader><Leader>: vsc Tools.InvokeAceJumpCommand<CR>
vnoremap <Leader>sw       : vsc Edit.SurroundWith<CR>

map <Leader>se      : vsc View.SolutionExplorer<CR>
map <Leader>te      : vsc View.TfsTeamExplorer<CR>

vnoremap <Leader>kc         : vsc Edit.CommentSelection<CR>
vnoremap <Leader>ku         : vsc Edit.UncommentSelection<CR>

nmap <C-O>          :vsc View.NavigateBackward<CR>
nmap <C-I>          :vsc View.NavigateForward<CR>

nnoremap <Leader>bp         : vsc Debug.Breakpoints<CR>

" Resharper mappings
 map gd            : vsc ReSharper.ReSharper_GotoDeclaration<CR>
 map <Leader>cn    : vsc ReSharper.ReSharper_Rename<CR>
 map <Leader>gf     : vsc ReSharper.ReSharper_GotoFile<CR>
 map <Leader>gm     : vsc ReSharper.ReSharper_GotoFileMember<CR>
 map <Leader>e     : vsc ReSharper.ReSharper_GotoNextErrorInSolution<CR>
 map <Leader>E     : vsc ReSharper.ReSharper_GotoPrevErrorInSolution<CR>
 map <Leader>l     : vsc ReSharper.ReSharper_LiveTemplatesInsert
 map <Leader>u     : vsc ReSharper.ReSharper_GotoUsage<CR>
 map <Leader>d     : vsc ReSharper.ReSharper_DuplicateText<CR>
 map <Leader>,     : vsc ReSharper.ReSharper_GotoText<CR>
 map <Leader>v     : vsc ReSharper.Resharper_IntroVariable<CR>
 map <Leader>m     : vsc ReSharper.ReSharper_ExtractMethod<CR>
 map <Leader>o     : vsc ReSharper.ReSharper_Move<CR>
 map <Leader>t     : vsc ReSharper.ReSharper_GotoType<CR>
 map <Leader>tr    : vsc ReSharper.ReSharper_UnitTestRunFromContext<CR>
 map <Leader>td    : vsc ReSharper.ReSharper_UnitTestDebugContext<CR>
 map <Leader>ta    : vsc ReSharper.ReSharper_UnitTestRunSolution<CR>
 map <Leader>tl    : vsc ReSharper.ReSharper_UnitTestSessionRepeatPreviousRun<CR>
 map <Leader>tt    : vsc ReSharper.ReSharper_ShowUnitTestSessions<CR>
 map <Leader>/     : vsc ReSharper.ReSharper_LineComment<CR>
 map ]             : vsc ReSharper.ReSharper_GotoNextMethod<CR>
 map [             : vsc ReSharper.ReSharper_GotoPrevMethod<CR>
