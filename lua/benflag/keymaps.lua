-----------------------------------------------------------
-- Define keymaps of Neovim and installed plugins.
-----------------------------------------------------------

local options = {noremap = true, silent = true}
local function map(mode, lhs, rhs)
  vim.keymap.set(mode, lhs, rhs, options)
  return nil
end

-- Change LEADER to a SPACE
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
map('n',' ','<nop>')

-----------------------------------------------------------
-- Movement in 'bépo'
-----------------------------------------------------------
map('','w','<C-w>')

map('','é','w')
map('','É','W')
map('o','ié','iw')
map('o','iÉ','iW')
map('o','aé','aw')
map('o','aÉ','aW')

map('','<LEADER>o','o<ESC>')
map('','<LEADER>O','O<ESC>')

map({'','!'},'<A-\">','\"')
map({'','!'},'\"','\'')

map('i','jj','<ESC>')
map('v','jj','<ESC>')

map({'','!','t'},'<','«')
map({'','!','t'},'>','»')
map({'','!','t'},'«','<')
map({'','!','t'},'»','>')

map('','r','l')
map('','s','k')
map('','t','j')
map('','c','h')
map('','R','L')
map('','S','K')
map('','T','J')
map('','C','H')

map('','l','r')
map('','L','R')
map('','k','s')
map('','K','S')
map('','j','t')
map('','J','T')
map('','h','c')
map('','H','C')

map('n','gb','gT')
map('n','gé','gt')
map('n','gB',':execute \"silent! tabfirst\"<CR>')
map('n','gÉ',':execute \"silent! tablast\"<CR>')

----------------------------------------------------------
-- Neovim shortcuts
-----------------------------------------------------------
-- Disable mouse
map('', '<LeftMouse>', '<nop>')
map('', '<RightMouse>', '<nop>')
map('', '<MiddleMouse>', '<nop>')

-- Disable arrow keys
map('', '<up>', '<nop>')
map('', '<down>', '<nop>')
map('', '<left>', '<nop>')
map('', '<right>', '<nop>')

-- Clear search highlighting with <LEADER> and c
map('n', '<LEADER>h', ':nohlsearch<CR>')

-- Toggle auto-indenting for code paste
map('n', '<F2>', ':set invpaste paste?<CR>')
vim.opt.pastetoggle = '<F2>'

-- Change split orientation
map('n', '<C-t>', '<C-w>t<C-w>K') -- change vertical to horizontal
map('n', '<C-c>', '<C-w>t<C-w>H') -- change horizontal to vertical

-- Move around splits
map('', '<LEADER>c', '<C-w>H')
map('', '<LEADER>t', '<C-w>J')
map('', '<LEADER>s', '<C-w>K')
map('', '<LEADER>r', '<C-w>L')
map('', '<M-c>', '<C-w>h')
map('', '<M-t>', '<C-w>j')
map('', '<M-s>', '<C-w>k')
map('', '<M-r>', '<C-w>l')

-- Resizing panes fhgq
map('n', '<M-f>', ':vertical resize +1<CR>')
map('n', '<M-q>', ':vertical resize -1<CR>')
map('n', '<M-g>', ':resize +1<CR>')
map('n', '<M-h>', ':resize -1<CR>')

-- Reload configuration without restart nvim
map('n', '<LEADER>,', ':so %<CR>')

-- Fast saving with <LEADER> and s
map('n', '<LEADER>w', ':w<CR>')

-- Close all windows and exit from Neovim with <LEADER> and q
map('n', '<LEADER>q', ':q!<CR>')

-----------------------------------------------------------
-- Visual mode : indent and move up/down
-----------------------------------------------------------
map('v', '<M-c>', '<gv')
map('v', '<M-r>', '>gv')
map('v', '<M-t>', ":m '>+1<CR>gv=gv")
map('v', '<M-s>', ":m '<-2<CR>gv=gv")

-----------------------------------------------------------
-- Applications and Plugins shortcuts
-----------------------------------------------------------
-- Terminal mappings
--map('n', '<C-t>', ':Term<CR>', { noremap = true })  -- open
--map('t', '<Esc>', '<C-\\><C-n>')                    -- exit

-- NvimTree
map('n', '<C-n>', ':NvimTreeToggle<CR>')            -- open/close
map('n', '<LEADER>f', ':NvimTreeRefresh<CR>')       -- refresh
map('n', '<LEADER>n', ':NvimTreeFindFile<CR>')      -- search file

-- Tagbar
map('n', '<LEADER>z', ':TagbarToggle<CR>')          -- open/close
