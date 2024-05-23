M = {
	'nvim-treesitter/nvim-treesitter',
	build = ":TSUpdate",
	lazy = vim.fn.argc(-1) == 0, -- load treesitter early when openeing a file form the cmd line
opts = {
	highlight = { enable = true},
	indent = {enable = true},
	 ensure_installed = {
      "bash",
      "c",
      "diff",
      "html",
      "javascript",
      "jsdoc",
      "json",
      "jsonc",
      "lua",
      "luadoc",
      "luap",
      "markdown",
      "markdown_inline",
      "python",
      "query",
      "regex",
      "terraform",
      "toml",
      "tsx",
      "typescript",
      "vim",
      "vimdoc",
      "xml",
      "yaml",
    }
}
}

return M
