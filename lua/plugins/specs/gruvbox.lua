return {
  "ellisonleao/gruvbox.nvim",
  priority = 1000,
  config = function()
    --  或者light
    vim.o.background = "dark" 
    vim.cmd.colorscheme("gruvbox")
  end,
}
