-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

-- Remove some keybindings
vim.api.nvim_set_keymap('n', 's', '<Nop>', { silent = true })
lvim.lsp.buffer_mappings.normal_mode['K'] = nil

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

lvim.builtin.which_key.mappings[";"] = { "<Plug>(comment_toggle_linewise_current)", "Comment toggle current line" }
lvim.builtin.which_key.vmappings[";"] = { "<Plug>(comment_toggle_linewise_visual)", "Comment toggle linewise (visual)" }
lvim.builtin.which_key.mappings["/"] = { "<cmd>Alpha<CR>", "Dashboard" }

-- LSP
lvim.lsp.buffer_mappings.normal_mode['<Leader>k'] = { vim.lsp.buf.hover, "Show hover" }
