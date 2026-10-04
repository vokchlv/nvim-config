vim.lsp.config.ltex = {
  cmd = { "ltex-ls" },
  filetypes = { "tex", "plaintex", "markdown" },
  settings = {
    ltex = {
      language = "de-DE",
      diagnosticSeverity = "information",
      additionalRules = {
        enablePickyRules = true,
        motherTongue = "de-DE",
      },
    },
  },
}
