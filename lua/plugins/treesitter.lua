return {
  -- Treesitter configuration
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- Core languages
        "lua",
        "vim",
        "vimdoc",
        "query",

        -- Web development
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "json",

        -- System/Config
        "bash",
        "yaml",
        "toml",

        -- Programming languages
        "go",
        "python",
        "rust",
        "c",
        "cpp",

        -- Markup
        "markdown",
        "markdown_inline",

        -- Remove these invalid parsers:
        -- "printf", -- This is not a valid parser
        -- "xml",    -- Use "html" for XML-like syntax
      },

      -- Auto install missing parsers when entering buffer
      auto_install = true,

      highlight = {
        enable = true,
        -- Disable for large files
        disable = function(lang, buf)
          local max_filesize = 100 * 1024 -- 100 KB
          local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
          if ok and stats and stats.size > max_filesize then
            return true
          end
        end,
      },

      indent = {
        enable = true,
      },

      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    },
  },
}
