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
    }
  }, { prefix = "<leader>" }
)

-- debugger
wk.register({
    d = {
      name = "debugger",
    }
  }, { prefix = "<leader>" }
)
