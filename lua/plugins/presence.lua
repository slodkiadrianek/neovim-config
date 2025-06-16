-- ~/.config/nvim/lua/plugins/presence.lua
return {
  "andweeb/presence.nvim",
  event = "VeryLazy",
  config = function()
    require("presence"):setup({
      -- General options
      auto_update = true,
      neovim_image_text = "The One True Text Editor",
      main_image = "file", -- "neovim" or "file"

      -- Rich Presence text options
      editing_text = "Arguing with a compiler in  %s",
      file_explorer_text = "Browsing %s",
      git_commit_text = "Committing changes",
      plugin_manager_text = "Managing plugins",
      reading_text = "Reading %s",
      workspace_text = "Probably overengineering %s",
      line_number_text = "Line %s out of %s",
    })
  end,
}
