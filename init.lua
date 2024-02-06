return {
  colorscheme = "gruvbox-material",
  -- colorscheme = "solarized-osaka",

  plugins = {
    -- {
    --   "morhetz/gruvbox",
    --   name = "gruvbox",
    --   -- config = function()
    --   --   require("gruvbox").setup {}
    --   -- end,
    -- },
    {
      "craftzdog/solarized-osaka.nvim",
      name = "solarized-osaka",
      lazy = false,
      priority = 1000,
      opts = {},
      config = function()
        require("solarized-osaka").setup {
          -- your configuration comes here
          -- or leave it empty to use the default settings
          transparent = false, -- Enable this to disable setting the background color
          terminal_colors = false,
        }
      end,
    },
    {
      "xiyaowong/transparent.nvim",
      name = "transparent",
      lazy = false,
    },
    {
      "folke/zen-mode.nvim",
      lazy = false,
      opts = {},
    },
    {
      "sainnhe/gruvbox-material",
      name = "gruvbox-material",
      config = function()
        vim.g.gruvbox_material_foreground = "mix"
        vim.g.gruvbox_material_background = "hard"
        vim.cmd.colorscheme "gruvbox-material"
      end,
    },
    {
      "rebelot/kanagawa.nvim",
      name = "kanagawa",
      config = function()
        require("kanagawa").setup {
          compile = false, -- enable compiling the colorscheme
          undercurl = true, -- enable undercurls
          commentStyle = { italic = true },
          functionStyle = {},
          keywordStyle = { italic = true },
          statementStyle = { bold = true },
          typeStyle = {},
          transparent = false, -- do not set background color
          dimInactive = false, -- dim inactive window `:h hl-NormalNC`
          terminalColors = true, -- define vim.g.terminal_color_{0,17}
          colors = { -- add/modify theme and palette colors
            palette = {},
            theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
          },
          overrides = function(colors) -- add/modify highlights
            return {}
          end,
          theme = "dragon", -- Load "wave" theme when 'background' option is not set
          background = { -- map the value of 'background' option to a theme
            dark = "dragon", -- try "dragon" !
            light = "lotus",
          },
        }
      end,
    },
    { "mattn/emmet-vim" },
    {
      "onsails/lspkind.nvim",
      opts = function(_, opts)
        -- use codicons preset
        opts.preset = "codicons"
        -- set some missing symbol types
        opts.symbol_map = {
          Array = "",
          Boolean = "",
          Key = "",
          Namespace = "",
          Null = "",
          Number = "",
          Object = "",
          Package = "",
          String = "",
        }
        return opts
      end,
    },
    {
      "nvim-neo-tree/neo-tree.nvim",
      branch = "main", -- HACK: force neo-tree to checkout `main` for initial v3 migration since default branch has changed
      dependencies = { "MunifTanjim/nui.nvim" },
      cmd = "Neotree",
      init = function() vim.g.neo_tree_remove_legacy_commands = true end,
      opts = function()
        local utils = require "astronvim.utils"
        local get_icon = utils.get_icon
        return {
          filesystem = {
            filtered_items = {
              visible = true,
            },
          },
        }
      end,
    },
  },

  icons = {
    ActiveLSP = "",
    ActiveTS = " ",
    BufferClose = "",
    DapBreakpoint = "",
    DapBreakpointCondition = "",
    DapBreakpointRejected = "",
    DapLogPoint = "",
    DapStopped = "",
    DefaultFile = "",
    Diagnostic = "",
    DiagnosticError = "",
    DiagnosticHint = "",
    DiagnosticInfo = "",
    DiagnosticWarn = "",
    Ellipsis = "",
    FileModified = "",
    FileReadOnly = "",
    FoldClosed = "",
    FoldOpened = "",
    FolderClosed = "",
    FolderEmpty = "",
    FolderOpen = "",
    Git = "",
    GitAdd = "",
    GitBranch = "",
    GitChange = "",
    GitConflict = "",
    GitDelete = "",
    GitIgnored = "",
    GitRenamed = "",
    GitStaged = "",
    GitUnstaged = "",
    GitUntracked = "",
    LSPLoaded = "",
    LSPLoading1 = "",
    LSPLoading2 = "",
    LSPLoading3 = "",
    MacroRecording = "",
    Paste = "",
    Search = "",
    Selected = "",
    TabClose = "",
  },
}
