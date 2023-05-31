-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

-- Remove some keybindings
vim.api.nvim_set_keymap('n', 's', '<Nop>', { silent = true })
lvim.lsp.buffer_mappings.normal_mode['K'] = nil

-- Toggle wrap
lvim.keys.normal_mode['sw'] = '<Cmd>set wrap!<CR>'

-- Split window
lvim.keys.normal_mode['sv'] = '<Cmd>vsp<CR>'
lvim.keys.normal_mode['sh'] = '<Cmd>sp<CR>'

-- Switch to previous/next buffer
lvim.keys.normal_mode['sp'] = '<Cmd>bprevious<CR>'
lvim.keys.normal_mode['sn'] = '<Cmd>bnext<CR>'

-- Save and Quit
lvim.keys.normal_mode["si"] = "<Cmd>wq<CR>"

-- Add newline above/below
lvim.keys.normal_mode['[<Leader>'] = "O<Esc>j"
lvim.keys.normal_mode[']<Leader>'] = "o<Esc>k"

-- Use kj to exit Insert mode
lvim.keys.insert_mode['kj'] = '<Esc>'

-- Normal and Visual mode mapping M-x as :
lvim.keys.normal_mode["<M-x>"] = ":<C-u>call feedkeys(':')<CR>"
lvim.keys.visual_mode["<M-x>"] = ":<C-u>call feedkeys(':')<CR>gv"

-- Mapping SPC-k as K
lvim.keys.normal_mode['<Leader>k'] = 'K'

-- Move fast
lvim.keys.normal_mode['J'] = "5j"
lvim.keys.normal_mode['K'] = "5k"
lvim.keys.normal_mode['H'] = "0"
lvim.keys.normal_mode['L'] = "$"
lvim.keys.visual_mode['J'] = "5j"
lvim.keys.visual_mode['K'] = "5k"
lvim.keys.visual_mode['H'] = "0"
lvim.keys.visual_mode['L'] = "$"
lvim.keys.normal_mode['<Leader><Leader>'] = '<Esc>/<++><CR><Cmd>nohlsearch<CR>"_c4l'

-- Emacs moving style
lvim.keys.insert_mode["<C-p>"] = "<Up>"
lvim.keys.insert_mode["<C-n>"] = "<Down>"
lvim.keys.insert_mode["<C-b>"] = "<Left>"
lvim.keys.insert_mode["<C-f>"] = "<Right>"
lvim.keys.insert_mode["<C-a>"] = "<Home>"
lvim.keys.insert_mode["<C-e>"] = "<End>"

-- Leader mappings
lvim.builtin.which_key.mappings["/"] = { "<Cmd>Telescope live_grep<CR>", "Find Text" }
lvim.builtin.which_key.mappings[";"] = { "<Plug>(comment_toggle_linewise_current)", "Comment toggle current line" }
lvim.builtin.which_key.vmappings[";"] = { "<Plug>(comment_toggle_linewise_visual)", "Comment toggle linewise (visual)" }
lvim.builtin.which_key.mappings["h"] = { "<cmd>Alpha<CR>", "Dashboard" }
lvim.builtin.which_key.mappings["<CR>"] = { "<Cmd>nohlsearch<CR>", "No Highlight" }
lvim.builtin.which_key.mappings["Q"] = { "<Cmd>confirm qa<CR>", "Quit All" }

-- LSP
lvim.lsp.buffer_mappings.normal_mode['<Leader>k'] = { vim.lsp.buf.hover, "Show hover" }

require('mdsnippet')
-- reload "mdsnippet"
