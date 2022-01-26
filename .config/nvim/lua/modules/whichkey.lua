local wk = require("which-key")

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

-- lsc
wk.register({
    g = {
      name = "code nav",
      d = "to definition",
      D = "to definition (split)",
      r = "find references",
      I = "find implementation",
      a = "find code actions",
      R = "rename",
      o = "document symbol",
      S = "workspace symbol",
      m = "signature help",
      n = "next reference",
      p = "previous reference",
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

