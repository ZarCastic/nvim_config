-- general configuration
vim.api.nvim_set_keymap("n", "<CR>", ":Neoformat<cr>:w<cr>:noh<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Esc>", ":noh<cr>", { noremap = true })
vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>f", ":Neoformat<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader><leader>", "<C-6>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>y", '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<leader>y", '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>p", '"+p', { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<leader>p", '"+p', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>P", '"+P', { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<leader>P", '"+P', { noremap = true, silent = true })

-- split movement
vim.api.nvim_set_keymap("n", "<leader>l", "<C-W><C-L>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>h", "<C-W><C-H>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>k", "<C-W><C-K>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>j", "<C-W><C-J>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>sp", ":sp<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>vs", ":vs<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>t", ":sp<CR> :term<CR> :resize 20<CR> i", { noremap = true })

-- telescope
vim.api.nvim_set_keymap("n", "<C-P>", "<cmd>Telescope find_files hidden=true<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-F>", "<cmd>Telescope live_grep<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-B>", "<cmd>Telescope buffers<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-A>", "<cmd>Telescope marks<cr>", { noremap = true })

-- nvim tree
vim.api.nvim_set_keymap("n", "<C-N>", "<cmd>:NvimTreeFindFileToggle<cr>", { noremap = true })

-- lsp
local opts = { noremap = true, silent = true }
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, opts)
vim.keymap.set("n", "<leader>cj", vim.diagnostic.goto_next, opts)
vim.keymap.set("n", "<leader>ck", vim.diagnostic.goto_prev, opts)
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, opts)

-- telekasten
vim.keymap.set("n", "<leader>z", "<cmd>:Telekasten panel<CR>", opts)

-- Most used functions
local telekasten = require("telekasten")
vim.keymap.set("n", "<leader>zf", telekasten.find_notes, opts)
vim.keymap.set("n", "<leader>zd", telekasten.find_daily_notes, opts)
vim.keymap.set("n", "<leader>zg", telekasten.search_notes, opts)
vim.keymap.set("n", "<leader>zz", telekasten.follow_link, opts)
vim.keymap.set("n", "<leader>zT", telekasten.goto_today, opts)
vim.keymap.set("n", "<leader>zW", telekasten.goto_thisweek, opts)
vim.keymap.set("n", "<leader>zw", telekasten.find_weekly_notes, opts)
vim.keymap.set("n", "<leader>zn", telekasten.new_note, opts)
vim.keymap.set("n", "<leader>zN", telekasten.new_templated_note, opts)
vim.keymap.set("n", "<leader>zy", telekasten.yank_notelink, opts)
vim.keymap.set("n", "<leader>zc", telekasten.show_calendar, opts)
vim.keymap.set("n", "<leader>zC", "<cmd>:CalendarT<CR>", opts)
vim.keymap.set("n", "<leader>zi", telekasten.paste_img_and_link, opts)
vim.keymap.set("n", "<leader>zt", telekasten.toggle_todo, opts)
vim.keymap.set("n", "<leader>zb", telekasten.show_backlinks, opts)
vim.keymap.set("n", "<leader>zF", telekasten.find_friends, opts)
-- lvim.keys.normal_mode["<leader>zI"] = ":lua require('telekasten').insert_img_link({ i=true })<CR>"
vim.keymap.set("n", "<leader>zp", telekasten.preview_img, opts)
vim.keymap.set("n", "<leader>zm", telekasten.browse_media, opts)
vim.keymap.set("n", "<leader>za", telekasten.show_tags, opts)
vim.keymap.set("n", "<leader>#", telekasten.show_tags, opts)
vim.keymap.set("n", "<leader>zr", telekasten.rename_note, opts)
-- lvim.keys.normal_mode["<leader>zl"] = "<cmd>Telekasten insert_link<CR>"
