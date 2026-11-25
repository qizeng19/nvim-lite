local keymap = vim.keymap.set

keymap("n", "<leader>e", "<cmd>Neotree toggle<cr>", { desc = "Toggle file tree" })
keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find files" })
keymap("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Live grep" })
keymap("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Find buffers" })
keymap("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { desc = "Help tags" })
keymap("n", "<leader>sa", "<cmd>w<cr>", { desc = "save file" })
keymap("n", "<leader>mp", "<cmd>MarkdownPreviewToggle<cr>", { desc = "md 文档预览" })
-- keymap("n", "<leader>bb", "<cmd>b#<cr>", { desc = "切换到上一个 Buffer" })
--  下面的写法是为了避免 neo-tree 的时候执行这个命令 会有问题 直接退出
keymap("n", "<leader>bb", function()
  local ft = vim.bo.filetype
  -- 如果当前在 neo-tree 等侧边栏/特殊窗口里，先切回上一个窗口
  if ft == "neo-tree" or vim.bo.buftype ~= "" then
    vim.cmd("wincmd p")
    -- 如果跳过去之后依然不是普通 buffer，就直接返回，避免误操作
    if vim.bo.buftype ~= "" then
      return
    end
  end

  -- 只有在有合法的 alternate buffer（#）时才执行 b#
  local alt = vim.fn.bufnr("#")
  if alt > 0 and alt ~= vim.fn.bufnr("%") and vim.fn.buflisted(alt) == 1 then
    vim.cmd("b#")
  end
end, { desc = "安全切换到上一个 Buffer" })
