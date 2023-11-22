return {
  colorscheme = "gruvbox",

  plugins = {
    {
      "morhetz/gruvbox",
      name = "gruvbox",
      -- config = function()
      --   require("gruvbox").setup {}
      -- end,
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
