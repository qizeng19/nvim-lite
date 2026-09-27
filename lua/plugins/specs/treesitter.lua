return {
  "nvim-treesitter/nvim-treesitter",
  branch = "master",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "bash",
        "json",
        "python",
        "yaml",
        "toml",
        "html",
        "css",
        "javascript",
        "typescript",
      },
      auto_install = true,
      highlight = {
        enable = true,
        disable = { "c", "lua", "markdown", "markdown_inline", "query", "vim", "vimdoc" },
      },
      indent = {
        enable = true,
      },
    })
  end,
}
