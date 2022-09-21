-- general configuration
vim.api.nvim_set_keymap("n", "<CR>", ":w<cr>:noh<cr>", { noremap = true })
vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>f", ":Neoformat<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader><leader>", "<C-6>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-a>", "ggVG", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>y", '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<leader>y", '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>p", '"+p', { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<leader>p", '"+p', { noremap = true, silent = true })

-- split movement
vim.api.nvim_set_keymap("n", "<leader>l", "<C-W><C-L>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>h", "<C-W><C-H>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>k", "<C-W><C-K>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>j", "<C-W><C-J>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>sp", ":sp<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>vs", ":vs<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>t", ":sp<CR> :term<CR> :resize 20N<CR> i", { noremap = true })

-- telescope
vim.api.nvim_set_keymap("n", "<C-P>", "<cmd>Telescope find_files<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-F>", "<cmd>Telescope live_grep<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-B>", "<cmd>Telescope buffers<cr>", { noremap = true })

-- nvim tree
vim.api.nvim_set_keymap("n", "<C-N>", "<cmd>:CHADopen<cr>", { noremap = true })

-- lsp
local opts = { noremap = true, silent = true }
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, opts)
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, opts)
