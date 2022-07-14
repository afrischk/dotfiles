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
    f = {
      name = "Find",
      f = {"<cmd>Telescope find_files<cr>","Files"},
      p = {"<cmd>Telescope projects<cr>","Projects"},
      g = {"<cmd>Telescope live_grep<cr>","Live grep"},
      b = {"<cmd>Telescope buffers<cr>","Buffers"},
      h = {"<cmd>Telescope help_tags<cr>","Help tags"},
    },
  }, { prefix = "<leader>" }
)

-- nvimtree
wk.register({
    n = {
      name = "Nvimtree",
      t = {"<cmd>NvimTreeToggle<cr>", "Toogle"},
      f = {"<cmd>NvimTreeFindFile<cr>","Find file"},
      ["<tab>"] = {"<cmd>NvimTreeFocus<cr>", "Focus file"},
    }
  }, { prefix = "<leader>" }
)

-- symbols
wk.register({
    s = {
      name = "Symbols",
      o = {"<cmd>SymbolsOutline<cr>", "Outline"},
    }
  }, { prefix = "<leader>" }
)

-- lsp (only mapped if lnaguage server is attached)
wk.register({
    l = {
      name = "LSP",
      d = "Goto definition",
      D = "Goto declaration",
      r = "References",
      i = "Goto implementation",
      h = "Hover",
      c = "Code actions",
      R = "Rename",
      t = "Type definition",
      f = "Format file",
      s = "Signature help",
    }
  }, { prefix = "<leader>" }
)

-- debugger
wk.register({
  [""] = {
    ["5"] = {"<cmd>lua require('dap').continue()<cr>", "Run/Continue"},
    ["6"] = {"<cmd>lua require('dap').step_over()<cr>", "Step over"},
    ["7"] = {"<cmd>lua require('dap').step_into()<cr>", "Step into"},
    ["8"] = {"<cmd>lua require('dap').step_out()<cr>", "Step out"},
    ["0"] = {"<cmd>lua require('dap').terminate()<cr>", "Terminate"},
    b     = {"<cmd>lua require('dap').toggle_breakpoint()<cr>", "Breakpoint"},
    c     = {"<cmd>lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))<cr>", "Cond. breakpoint"},
    },
  d = {
    name = "Debug",
    r    = {"<cmd>lua require('dap').repl.toggle()<cr>", "REPL"},
    l    = {"<cmd>lua require('dap').run_last()<cr>", "Run last"},
    h    = {"<cmd>lua require('dap.ui.widgets').hover()<cr>", "Hover"},
    s    = {"<cmd>lua local swidgets = require('dap.ui.widgets'); local swindow = swidgets.centered_float(swidgets.scopes)<cr>", "Scopes"},
    f    = {"<cmd>lua local fwidgets = require('dap.ui.widgets'); local fwindow = fwidgets.centered_float(fwidgets.frames)<cr>", "Frames"},
    e    = {"<cmd>lua local ewidgets = require('dap.ui.widgets'); local ewindow = ewidgets.centered_float(ewidgets.expression)<cr>", "Expressions"},
    t    = {"<cmd>lua local twidgets = require('dap.ui.widgets'); local twindow = twidgets.centered_float(twidgets.expression)<cr>", "Threads"},
    }
  }, { prefix = "<leader>" }
)
