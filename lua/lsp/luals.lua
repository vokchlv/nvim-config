local capabilities = vim.lsp.protocol.make_client_capabilities()

local ok, cmp_lsp = pcall(require, 'cmp_nvim_lsp')
if ok then
    capabilities = cmp_lsp.default_capabilities(capabilities)
end

vim.lsp.config('luals', {
    cmd = {'lua-language-server'},
    filetypes = {'lua'},
    root_markers = { {'.luarc.json', '.luarc.jsonc', '.luarc.jsonzscbsonc'}, '.git' },

    capabilities = capabilities,

    settings = {
        Lua = {
            diagnostics = { globals = {'vim'} },
            workspace = { checkThirdParty = false },
            telemetry = { enable = false} ,
        },
    },
})
