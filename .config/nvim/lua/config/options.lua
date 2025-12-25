local set = vim.opt

set.number = true
set.shiftwidth = 4
set.tabstop = 4
set.rnu = true
set.scrolloff = 10
set.clipboard = "unnamedplus"
set.ignorecase = true
set.smartcase = true
set.inccommand = "split"
set.showmode = false
set.breakindent = false
set.signcolumn = "yes"
set.cursorline = true

set.iskeyword:append("-")
set.updatetime = 50

-- undo dir settings
set.swapfile = false
set.backup = false
set.undodir = os.getenv("HOME") .. "/.vim/undodir"
set.undofile = true

