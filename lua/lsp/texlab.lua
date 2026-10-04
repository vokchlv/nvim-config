-- brew install --cask mactex
-- brew install --cask skim
vim.lsp.config.texlab = {
  cmd = { "texlab" },
  filetypes = { "tex", "plaintex", "bib" },
  settings = {
    texlab = {
      -- Automatischen Build von Texlab deaktivieren (wird von VimTeX übernommen)
      build = {
        onSave = false,
      },
      -- Statische LaTeX-Code-Analyse aktivieren
      chktex = {
        onOpenAndSave = true,
        onEdit = false,
      },
      -- Diagnostics-Aktualisierungsrate
      diagnosticsDelay = 300,
      formatterLineLength = 80,
    },
  },
}
