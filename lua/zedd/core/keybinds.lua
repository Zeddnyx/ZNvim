function map(mode, shortcut, command)
	vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end
-- custome shortcut
function short(mode, shortcut, command)
	vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = false })
end

-- normal
function nmap(shortcut, command)
	map("n", shortcut, command)
end
-- insert
function imap(shortcut, command)
	map("i", shortcut, command)
end
-- virtual
function vmap(shortcut, command)
	map("v", shortcut, command)
end
-- normal ( shortkey )
function nshort(shortcut, command)
	short("n", shortcut, command)
end


-- buffer
-- nmap("<S-h>", "<CMD>bprevious<CR>", { desc = "Buffer: previous buffer" })
-- nmap("<S-l>", "<CMD>bnext<CR>", { desc = "Buffer: next buffer" })

--barbar 
nmap("<S-h>", "<CMD>BufferPrevious<CR>", { desc = "Buffer: previous buffer" })
nmap("<S-l>", "<CMD>BufferNext<CR>", { desc = "Buffer: next buffer" })
nmap("<S-c>", "<CMD>bd<CR>", { desc = "Buffer: delete buffer" })
nmap("<S-q>", "<CMD>%bd|e#<CR>", { desc = "Buffer: delete all buffer except this one" })

-- lsp saga
nmap("<S-k>", "<CMD>Lspsaga hover_doc<CR>")
nmap("<S-j>", "<CMD>Lspsaga preview-definition<CR>")
nmap("<S-r>", "<CMD>Lspsaga rename<CR>")

-- switch split screen
nmap("<leader>h", "<C-w>h<CR>")
nmap("<leader>j", "<C-w>j<CR>")
nmap("<leader>k", "<C-w>k<CR>")
nmap("<leader>l", "<C-w>l<CR>")

-- nvimtree
nmap("<leader>e", "<CMD>NvimTreeOpen<CR>")

-- custome keybind
imap("kk", "<Esc>") -- double j to Esc
imap("jj", "<Esc>") -- double k to Esc
nmap("<leader>a", "gg<S-v>G") -- select all
nmap("<leader>y", "yiw") -- copy forward word
nshort("<leader>s", [[:%s/]]) -- find and replace all matched word
nshort("<leader>ss", [[/\<\\><Left><Left>]]) -- find specific word
-- vmap("jsx", "<CMD>s/\(.*\)/{\/* \1 *\/}") -- comment jsx code

-- disable default keybind
nmap("<up>", "") -- disable arrow up
nmap("<left>", "") -- disable arrow left
nmap("<right>", "") -- disable arrow right
nmap("<down>", "") -- disable arrow down
