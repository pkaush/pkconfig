--[[ init.lua ]]

-- LEADER
-- These keybindings need to be defined before the first /
-- is called; otherwise, it will default to "\"

-- IMPORTS
-- require('vars')      -- Variables
-- require('opts')      -- Options
-- require('keys')      -- Keymaps
-- require('plugins')      -- Plugins


----------------------------------------------------------
--          Plugins
----------------------------------------------------------
local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')
-- vim.call('plug#begin') 

Plug 'tpope/vim-sensible'
Plug ('scrooloose/nerdtree', {on = 'NERDTreeToggle'})
Plug 'vim-airline/vim-airline' -- Status bar

-- [[ One dark color theme ]]
Plug 'joshdick/onedark.vim'

Plug ('nvim-treesitter/nvim-treesitter') -- , {['do'] = vim.cmd("TSUpdate")})

--
-- [[ Telescope ]]
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

vim.call('plug#end')

----------------------------------------------------------
--          Variables
----------------------------------------------------------
local g = vim.g
-- Leader keys
g.mapleader = ","
g.localleader = "\\"

g.t_co = 256
g.background = "dark"

-- vim.cmd "colorscheme desert"

-- DarkOne needs to be installed - use PlugInstall
vim.cmd "colorscheme onedark"

----------------------------------------------------------
--          Key Mappings
----------------------------------------------------------

local map = vim.api.nvim_set_keymap

-- remap the key used to leave insert mode
map('i', 'jk', '<ESC>', {})

-- vim.api.nvim_set_keymap('n', '<Leader><Space>', ':set hlsearch!<CR>', { noremap = true, silent = true })
-- :nnoremap <silent> <Leader><Space> :set hlsearch<CR>

-- nnoremap <C-f> :NERDTreeFocus<CR>
map('n', '<C-f>', ':NERDTreeFocus<CR>', {noremap = true})
-- nnoremap <C-n> :NERDTree<CR>
map('n', '<C-n>', ':NERDTree<CR>', {noremap = true})
-- nnoremap <C-t> :NERDTreeToggle<CR>
map('n', '<C-t>', ':NERDTreeToggle<CR>', {noremap = true})
-- nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR> 
-- map('n', '<C-n>', ':NERDTree<CR>', {noremap = true})


-- Map Ctrl move keys to move between windows
map('n', '<C-h>', '<C-w><C-h>', {noremap = true})
map('n', '<C-l>', '<C-w><C-l>', {noremap = true})
map('n', '<C-j>', '<C-w><C-j>', {noremap = true})
map('n', '<C-k>', '<C-w><C-k>', {noremap = true})

-- Telescope config
-- nnoremap <leader>ff <cmd>Telescope find_files<cr>
map('n', '<leader>ff', ':Telescope find_files<CR>', {noremap = true})
-- nnoremap <leader>fg <cmd>Telescope live_grep<cr>
map('n', '<leader>fg', ':Telescope live_grep<CR>', {noremap = true})
-- nnoremap <leader>fb <cmd>Telescope buffers<cr>
map('n', '<leader>fb', ':Telescope buffers<CR>', {noremap = true})
-- nnoremap <leader>fh <cmd>Telescope help_tags<cr>
map('n', '<leader>fh', ':Telescope help_tags<CR>', {noremap = true})
----------------------------------------------------------
--          Options
----------------------------------------------------------

--[[ opts.lua ]]
local opt = vim.opt

-- [[ Context ]]
-- opt.colorcolumn = '80'           -- str:  Show col for max line length
opt.number = true                -- bool: Show line numbers
opt.relativenumber = true        -- bool: Show relative line numbers
opt.scrolloff = 4                -- int:  Min num lines of context
opt.signcolumn = "yes"           -- str:  Show the sign column

-- [[ Filetypes ]]
opt.encoding = 'utf8'            -- str:  String encoding to use
opt.fileencoding = 'utf8'        -- str:  File encoding to use

-- [[ Theme ]]
opt.syntax = "ON"                -- str:  Allow syntax highlighting
opt.termguicolors = true         -- bool: If term supports ui color then enable

-- [[ Search ]]
opt.ignorecase = true            -- bool: Ignore case in search patterns
opt.smartcase = true             -- bool: Override ignorecase if search contains capitals
opt.incsearch = true             -- bool: Use incremental search
opt.hlsearch = false             -- bool: Highlight search matches

-- [[ Whitespace ]]
opt.expandtab = true             -- bool: Use spaces instead of tabs
opt.shiftwidth = 4               -- num:  Size of an indent
opt.softtabstop = 4              -- num:  Number of spaces tabs count for in insert mode
opt.tabstop = 4                  -- num:  Number of spaces tabs count for

-- [[ Splits ]]
opt.splitright = true            -- bool: Place new window to right of current one
opt.splitbelow = true            -- bool: Place new window below the current one

opt.termguicolors = true
-- opt.colorscheme = "desert"



