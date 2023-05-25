-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

-- Remove some keybindings
lvim.keys.normal_mode['s'] = nil
lvim.lsp.buffer_mappings.normal_mode['K'] = nil

-- Use kj to exit Insert mode
lvim.keys.insert_mode['kj'] = '<Esc>'

-- Normal and Visual mode mapping M-x as :
lvim.keys.normal_mode["<M-x>"] = ":<C-u>call feedkeys(':')<CR>"
lvim.keys.visual_mode["<M-x>"] = ":<C-u>call feedkeys(':')<CR>gv"

-- Mapping SPC-k as K
lvim.keys.normal_mode['<Leader>k'] = 'K'


-- LSP
lvim.lsp.buffer_mappings.normal_mode['<Leader>k'] = { vim.lsp.buf.hover, "Show hover" }
