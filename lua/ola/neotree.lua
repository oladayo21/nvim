local M = {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    }
}

function M.config()
  local icons = require "ola.icons"

  require("neo-tree").setup({
    close_if_last_window = true,

    default_component_configs = {
      git_status = {
        symbols = {
          untracked = icons.git.FileUntracked, 
          unstaged = icons.git.FileUntracked,
          ignored = icons.git.FileIgnored,
          deleted = icons.git.FileDeleted,
          renamed = icons.git.FileRenamed,
          staged = icons.git.FileStaged,
        }
      },

    filtered_items = {
      hide_by_name = {
        ".DS_Store",
        "thumbs.db",
        "node_modules",
      }
    }
  }
  })

  vim.keymap.set("n", "<leader>b", "<Cmd>Neotree toggle<CR>", { desc = "Toggle file explorer" })
end

return M
