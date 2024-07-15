-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.g.mapleader = " "

-- Alt + arrow left to jump to older cursor position (back in jump list) keep existing ctrl + o keymap
-- vim.api.nvim_set_keymap("n", "<A-Left>", "<C-o>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("i", "<A-Left>", "<C-o>", { noremap = true, silent = true })
-- Alt + arrow right to jump to newer cursor position (forward in jump list) keep existing ctrl + i keymap
vim.api.nvim_set_keymap("n", "<A-Right>", "<C-i>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<A-Down>", "<C-i>", { noremap = true, silent = true })

-- Define keybindings for undo and redo
vim.api.nvim_set_keymap("n", "<C-z>", ":undo<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-y>", ":redo<CR>", { noremap = true, silent = true })

-- Ignore CTRL-Z
vim.api.nvim_set_keymap("n", "<C-z>", "<NOP>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<C-z>", "<NOP>", { noremap = true, silent = true })

-- Split window
vim.api.nvim_set_keymap("n", "<leader>w", ":vsp<CR>", { noremap = true, silent = true })
-- Map Ctrl + h/j/k/l to switch between split windows
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

-- move lines up and down using alt + arrow up/down
vim.api.nvim_set_keymap("n", "<A-j>", ":m .+1<CR>==", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-k>", ":m .-2<CR>==", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-Up>", ":m .-2<CR>==", { noremap = true, silent = true }) -- learn to stop using arrow keys but keep this for now
vim.api.nvim_set_keymap("n", "<A-Down>", ":m .+1<CR>==", { noremap = true, silent = true })

-- -- telescope
vim.keymap.set(
  "n",
  "<leader><leader>",
  require("telescope.builtin").oldfiles,
  { desc = "[?] Find recently opened files" }
)
vim.keymap.set("n", "<C-p>", require("telescope.builtin").find_files, { desc = "Find [F]iles" })
vim.keymap.set("n", "<leader>f", require("telescope.builtin").live_grep, { desc = "Search [A]ll" })
vim.keymap.set("n", "<leader>sd", require("telescope.builtin").diagnostics, { desc = "[S]earch [D]iagnostics" })
vim.keymap.set("n", "<leader>jl", require("telescope.builtin").jumplist, { desc = "[J]ump [L]ist" })
vim.keymap.set("n", "<leader>gf", require("telescope.builtin").git_files, { desc = "Find [G]it [F]iles" })
vim.keymap.set("n", "<leader>km", require("telescope.builtin").keymaps, { desc = "[K]ey[M]aps" })
vim.keymap.set("n", "<leader>rg", require("telescope.builtin").registers, { desc = "[R]egisters" })
vim.keymap.set("n", "<leader>ht", require("telescope.builtin").help_tags, { desc = "[H]elp [T]ags" })
