require 'core.options'
require("config.lazy")

require 'core.autostarttree'
require 'core.colors'
require 'core.cmp'

vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_python3_provider = 0
vim.g.loaded_ruby_provider = 0

-- Install Language-Server
require('lsp.luals')
require('lsp.clangd')

-- Enable Language-Server
vim.lsp.enable('luals')
vim.lsp.enable('clangd')
