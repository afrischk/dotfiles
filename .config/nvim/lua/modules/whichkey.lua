local wk = require("which-key")

wk.setup {
  plugins = {
    marks = true, -- shows a list of your marks on ' and `
    registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
    spelling = {
      enabled = false, -- enabling this will show WhichKey when pressing z= to select spelling suggestions
      suggestions = 20, -- how many suggestions should be shown in the list?
    },
    -- the presets plugin, adds help for a bunch of default keybindings in Neovim
    -- No actual key bindings are created
    presets = {
      operators = true, -- adds help for operators like d, y, ... and registers them for motion / text object completion
      motions = true, -- adds help for motions
      text_objects = true, -- help for text objects triggered after entering an operator
      windows = true, -- default bindings on <c-w>
      nav = true, -- misc bindings to work with windows
      z = true, -- bindings for folds, spelling and others prefixed with z
      g = true, -- bindings for prefixed with g
    },
  },
  -- add operators that will trigger motion and text object completion
  -- to enable all native operators, set the preset / operators plugin above
  operators = { gc = "Comments" },
  key_labels = {
    -- override the label used to display some keys. It doesn't effect WK in any other way.
    -- For example:
    -- ["<space>"] = "SPC",
    -- ["<cr>"] = "RET",
    -- ["<tab>"] = "TAB",
  },
  icons = {
    breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
    separator = "➜", -- symbol used between a key and it's label
    group = "+", -- symbol prepended to a group
  },
  popup_mappings = {
    scroll_down = '<c-d>', -- binding to scroll down inside the popup
    scroll_up = '<c-u>', -- binding to scroll up inside the popup
  },
  window = {
    border = "single", -- none, single, double, shadow
    position = "bottom", -- bottom, top
    margin = { 1, 0, 1, 0 }, -- extra window margin [top, right, bottom, left]
    padding = { 2, 2, 2, 2 }, -- extra window padding [top, right, bottom, left]
    winblend = 0
  },
  layout = {
    height = { min = 4, max = 50 }, -- min and max height of the columns
    width = { min = 20, max = 50 }, -- min and max width of the columns
    spacing = 3, -- spacing between columns
    align = "left", -- align columns left, center or right
  },
  ignore_missing = false, -- enable this to hide mappings for which you didn't specify a label
  hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ "}, -- hide mapping boilerplate
  show_help = true, -- show help message on the command line when the popup is visible
  triggers = "auto", -- automatically setup triggers
  -- triggers = {"<leader>"} -- or specify a list manually
  triggers_blacklist = {
    -- list of mode / prefixes that should never be hooked by WhichKey
    -- this is mostly relevant for key maps that start with a native binding
    -- most people should not need to change this
    i = { "j", "k" },
    v = { "j", "k" },
  },
}

-- telescope projects
wk.register({
    p = {
      name = "projects",
      l = "list projects",
    },
  }, { prefix = "<leader>" }
)

-- nvimtree
wk.register({
    n = {
      name = "nvimtree",
      t = "toogle tree",
      f = "find file",
      ["<tab>"] = "focus file",
    }
  }, { prefix = "<leader>" }
)

-- flutter
wk.register({
    f = {
      name = "dart & flutter",
      r = "run",
      d = "devices",
      f = "format file",
    }
  }, { prefix = "<leader>" }
)

-- lsp
wk.register({
    l = {
      name = "language server",
      d = "to definition",
      D = "to declaration",
      r = "find references",
      i = "find implementation",
      h = "hover",
      c = "code actions",
      R = "rename",
      t = "type definition",
      f = "format file",
      --o = "document symbol",
      --S = "workspace symbol",
      s = "signature help",
      n = "next reference",
      p = "previous reference",
      o = "open float",
      l = "set loc list",
    }
  }, { prefix = "<leader>" }
)

-- debugger
wk.register({
    d = {
      name = "debugger",
      b = "toogle breakpoint",
      c = "toogle conditional breakpoint",
      ["5"] = "contiue",
      ["6"] = "step over",
      ["7"] = "step into",
      ["8"] = "step out",
      v = {
        name="variables",
        s = "scopes",
        h = "hover",
        v = "visual hover"
      },
      w = {
        name = "widgets",
        h = "hover",
        s = "scopes"
      },
      t = {
        name = "telescope",
        c = "commands",
        o = "configurations",
        b = "breakpoints",
        v = "variables",
        f = "frames"
      }

    }
  }, { prefix = "<leader>" }
)

