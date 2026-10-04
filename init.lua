require 'core.options'
require("config.lazy")

require 'core.autostarttree'
require 'core.colors'
require 'core.cmp'

vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_python3_provider = 0
vim.g.loaded_ruby_provider = 0

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "tex", "markdown" },
  callback = function()
    vim.opt_local.spell = true
    vim.opt_local.spelllang = { "de", "en" } -- Deutsch und Englisch parallel
  end,
})

-- Install Language-Server
require('lsp.luals')
require('lsp.clangd')
require('lsp.texlab')

-- Enable Language-Server
vim.lsp.enable('luals')
vim.lsp.enable('clangd')
vim.lsp.enable('texlab')
