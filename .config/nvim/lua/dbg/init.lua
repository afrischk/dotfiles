require('telescope').load_extension('dap')
local dap_install = require("dap-install")

dap_install.setup({
    installation_path = "~/.local/share/nvim/debuggers",
    verbosely_call_debuggers = true,
  })

dap_install.config(
  "dart",
  {
    adapters = {
        type = "executable",
        command = "node",
        args = {"~/.local/share/nvim/debuggers/Dart-Code/out/dist/debug.js", "flutter"}
    },
    configurations = {
      {
        type = "dart",
        request = "launch",
        name = "Launch flutter",
        dartSdkPath = "/opt/flutter/bin/cache/dart-sdk/",
        flutterSdkPath = "/opt/flutter",
        program = "${workspaceFolder}/lib/main.dart",
        cwd = "${workspaceFolder}",
      }
    }
  }
)

-- keymappings
require'mapx'.setup{ global = true }

nnoremap("<leader>d5", ":lua require('dap').continue()<cr><cr>")
nnoremap("<leader>d6", ":lua require('dap').step_over()<cr>")
nnoremap("<leader>d7", ":lua require('dap').step_into()<cr>")
nnoremap("<leader>d8", ":lua require('dap').step_out()<cr>")
nnoremap("<leader>db", ":lua require('dap').toggle_breakpoint()<cr>")
nnoremap("<leader>dc", ":lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))<cr>")

nnoremap("<leader>dvs", ":lua require('dap.ui.variables').scopes()<cr>")
nnoremap("<leader>dvh", ":lua require('dap.ui.variables').hover()<cr>")
vnoremap("<leader>dvv", ":lua require('dap.ui.variables').visual_hover()<cr>")

nnoremap("<leader>dwh", ":lua require('dap.ui.widgets').hover()<cr>")
nnoremap("<leader>dws", ":lua local widgets=require('dap.ui.widgets');widgets.centered_float(widgets.scopes)<cr>")
--nnoremap("<leader>dsbm", ":lua require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<cr>")
--nnoremap("<leader>dro", ":lua require('dap').repl.open()<cr>")
--nnoremap("<leader>drl", ":lua require('dap').repl.run_last()<cr>")

---- telescope-dap
nnoremap("<leader>dtc", ":lua require('telescope').extensions.dap.commands{}<cr>")
nnoremap("<leader>dto", ":lua require('telescope').extensions.dap.configurations{}<cr>")
nnoremap("<leader>dtb", ":lua require('telescope').extensions.dap.list_breakpoints{}<cr>")
nnoremap("<leader>dtv", ":lua require('telescope').extensions.dap.variables{}<cr>")
nnoremap("<leader>dtf", ":lua require('telescope').extensions.dap.frames{}<cr>")
