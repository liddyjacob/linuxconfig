vim.lsp.config['intelephense'] = {
  cmd = { 'intelephense', '--stdio' },
  filetypes = { 'php' },
  root_markers = { '.git', 'composer.json' },
  settings = {
    intelephense = {
      environment = {
        shortOpenTag = true;
        includePaths = {"/u/www/htdocs/onyx",
                        "/usr/share/php",
                        "/onyx"
                       }
      },
      files = {
        maxSize = 1000000;
        associations = {"*.php",
                        "*.inc",
                        "*.class"
                       }
      }
    }
  }
}
vim.lsp.enable('intelephense')
