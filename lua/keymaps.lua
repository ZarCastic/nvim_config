-- general configuration
vim.api.nvim_set_keymap("n", "<CR>", ":Neoformat<cr> :w<cr>", { noremap = true })
vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n>", { noremap = true, silent = true })

-- split movement
vim.api.nvim_set_keymap("n", "<C-L>", "<C-W><C-L>", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-H>", "<C-W><C-H>", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-K>", "<C-W><C-K>", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-J>", "<C-W><C-J>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>sp", ":sp<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>vs", ":vs<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>t", ":sp<CR> :term<CR> :resize 20N<CR> i", { noremap = true })

-- telescope
vim.api.nvim_set_keymap("n", "<C-P>", "<cmd>Telescope find_files<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-F>", "<cmd>Telescope live_grep<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-B>", "<cmd>Telescope buffers<cr>", { noremap = true })

-- nvim tree
vim.api.nvim_set_keymap("n", "<C-N>", "<cmd>:NvimTreeFocus<cr>", { noremap = true })
