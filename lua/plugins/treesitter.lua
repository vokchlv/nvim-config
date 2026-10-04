return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    main = 'nvim-treesitter.config',
    -- [[ Configure Treesitter ]] See :help nvim-treesitter
    opts = {
      ensure_installed = {
          'lua',
          'vimdoc',
          'vim',
          'regex',
          'yaml',
          'bash',
          'json',
          'markdown',
          'markdown_inline',
      },
      -- Autoinstall not installed languages
      auto_install = true,
      highlight = {
          enable = true,
          -- Some languages need regex highlighting system like ruby for rules
          additional_vim_regex_highlighting = { 'ruby' },
          disable = { "latex" },
      },
      indent = { enable = true, disable = { 'ruby' } },
    },
}
