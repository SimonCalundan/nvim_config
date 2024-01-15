vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
-- Når man er i visual mode, kan man trykke stort K eller J for at flytte markerede tekst
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
-- Appender linjen nednunder til den nuværende linje.
vim.keymap.set("n", "J", "mzJ`z")
-- Ctrl-d eller u for at gå en halv side op og ned af gangen
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
--
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>vwm", function()
    require("vim-with-me").StartVimWithMe()
end)
vim.keymap.set("n", "<leader>svwm", function()
    require("vim-with-me").StopVimWithMe()
end)


-- greatest remap ever. Hvis man markerer noget med yank
-- Så kan kan man derefter markere et ord og lave leader p
-- for at erstatte det ny markede ord med det yankede ord
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("v", "<F13>", "<Esc>")
vim.keymap.set("x", "<F13>", "<Esc>")
vim.keymap.set("i", "<F13>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>");
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

--[[ -- Split window to the right and move focus to the new window
vim.keymap.set('n', '<Right>', '<Cmd>vsplit<CR><C-w>l', { noremap = true, silent = true })

-- Split window downwards and move focus to the new window
vim.keymap.set('n', '<Down>', '<Cmd>split<CR><C-w>j', { noremap = true, silent = true }) ]]

-- Formater kode
--vim.keymap.set("n", "<leader>p", vim.lsp.buf.format, { noremap = true, silent = true }) -- Gamle formaterings keymap
vim.keymap.set("n", "<leader>p", "mzgg=G`z", { noremap = true, silent = true }) -- Ny formaterings keymap
-- Går ud af terminal når man er i terminal mode
vim.keymap.set('t', '<C-Space>', [[<C-\><C-n>]], { noremap = true })

-- Gå til definition, f.eks. tryk gd når cursor er på et React komponent, for at gå til det komponent
vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, { noremap = true, silent = true })

-- Split windows
vim.keymap.set('n', '<leader>h', '<Cmd>vsplit<CR><C-w>l', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>v', '<Cmd>split<CR><C-w>j', { noremap = true, silent = true })

-- Resize windows
vim.keymap.set("n", "<Left>", ":vertical resize +4<CR>")
vim.keymap.set("n", "<Right>", ":vertical resize -4<CR>")
