return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  init = function()
    -- disable netrw at the very start of your init.lua。官方建议关闭 netrw
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
    -- optionally enable 24-bit colour
    vim.opt.termguicolors = true
  end,
  keys = {
    {
      "<C-h>",  "<cmd>NvimTreeToggle<cr>",  mode = "n", desc = "切换菜单树"
    }
  },
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {}
  end,
}

--return {
--  "nvim-tree/nvim-tree.lua",
--  version = "*",
--  lazy = false,
--  init = function()
--    vim.g.loaded_netrw = 1
--    vim.g.loaded_netrwPlugin = 1
--    vim.opt.termguicolors = true
--  end,
--  dependencies = {
--    "nvim-tree/nvim-web-devicons",
--  },
--  config = function()
--    require("nvim-tree").setup({
--      sort_by = "case_sensitive",
--      actions = {
--        open_file = {
--          window_picker = { enable = false }
--        }
--      },
--      view = {
--        float = {
--          enable = true,
--          open_win_config = function()
--            local columns = vim.o.columns
--            local lines = vim.o.lines
--            local width = math.max(math.floor(columns * 0.5), 50)
--            local height = math.max(math.floor(lines * 0.5), 20)
--            local left = math.ceil((columns - width) * 0.5)
--            local top = math.ceil((lines - height) * 0.5 - 2)
--            return { relative = "editor", border = "rounded", width = width, height = height, row = top, col = left }
--          end,
--        }
--      },
--      update_focused_file = {
--        enable = true,
--        update_root = false,
--        ignore_list = {},
--      },
--      renderer = {
--        group_empty = true,
--        indent_markers = { enable = true },
--        icons = {
--          git_placement = "after", webdev_colors = true,
--          glyphs = {
--            git = { unstaged = "~", staged = "✓", unmerged = "", renamed = "+", untracked = "?", deleted = "", ignored = " " },
--            folder = { empty = "", empty_open = "" }
--          }
--        }
--      },
--      filters = { dotfiles = true },
--      diagnostics = {
--        enable = true, show_on_dirs = true, debounce_delay = 50,
--        icons = { hint = "", info = "", warning = "", error = "" }
--      },
--    })
--  end,
--}
