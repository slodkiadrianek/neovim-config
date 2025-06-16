return {
  "navarasu/onedark.nvim",
  priority = 1000,
  lazy = false,
  config = function()
    require("onedark").setup({
      style = "dark", -- keep your preferred style
      transparent = true, -- enable transparent background
      lualine_transparent = true, -- if you use lualine
      highlights = {
        -- Optional: customize specific highlight groups
        Normal = { bg = "none" },
        NormalFloat = { bg = "none" },
        SignColumn = { bg = "none" },
      },
    })
    require("onedark").load()
  end,
}
