-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua

-- LSP Server to use for Python.
vim.g.lazyvim_python_lsp = "pyright" -- Set to "basedpyright" to use basedpyright instead of pyright.
vim.g.lazyvim_python_ruff = "ruff"   -- Set to "ruff_lsp" to use the old LSP implementation version.
vim.g.lazyvim_python_formatter = "ruff"

-- LSP Server to use for Ruby.
vim.g.lazyvim_ruby_lsp = "ruby_lsp" -- Set to "solargraph" to use solargraph instead of ruby_lsp.
vim.g.lazyvim_ruby_formatter = "rubocop"

-- Set scrolloff to keep the cursor at the center of the screen
vim.opt.scrolloff = 999

-- indention
vim.opt.autoindent = true  -- auto indentation
vim.opt.expandtab = true   -- convert tabs to spaces
vim.opt.shiftwidth = 2     -- the number of spaces inserted for each indentation
vim.opt.smartindent = true -- make indenting smarter
vim.opt.softtabstop = 2    -- when hitting <BS>, pretend like a tab is removed, even if spaces
vim.opt.tabstop = 2        -- insert 2 spaces for a tab
vim.opt.shiftround = true  -- use multiple of shiftwidth when indenting with "<" and ">"

-- editor
vim.opt.number = true      -- set numbered lines in editor
vim.opt.signcolumn = "yes" -- always show the sign column, otherwise it would shift the text each time
vim.opt.wrap = false       -- display a long line
vim.opt.cmdheight = 0      -- more space in the neovim command line for displaying messages

-- theme
vim.opt.termguicolors = true -- enable 24-bit RGB colors

-- For conciseness
local opts = { noremap = true, silent = true }

-- quit file
vim.keymap.set('n', '<C-q>', '<cmd> q <CR>', opts)

-- delete single character without copying into register
vim.keymap.set('n', 'x', '"_x', opts)

-- Vertical scroll and center
vim.keymap.set('n', '<C-d>', '<C-d>zz', opts)
vim.keymap.set('n', '<C-u>', '<C-u>zz', opts)

-- Find and center vim. keymap.set('n'
vim.keymap.set('n', 'N', 'nzzzv', opts)
vim.keymap.set('n', 'N', 'Nzzzv', opts)

-- enable yanking highlight the text
vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight when yanking (copying) text',
    group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})

-- enable virtual text
vim.diagnostic.config({ virtual_text = true })
