local lsp = require "lspconfig"
local coq = require "coq"

lsp.dartls.setup(coq.lsp_ensure_capabilities({
    cmd = { 'dart',  '/opt/flutter/bin/cache/dart-sdk/bin/snapshots/analysis_server.dart.snapshot', '--protocol=lsp' },
    --on_attach = require('coq').on_attach,
  }))

lsp.ccls.setup(coq.lsp_ensure_capabilities({
    cmd = { 'ccls' }
  }))
