require("thisme.core")
require("thisme.lazy")

vim.opt.clipboard = "unnamedplus"

-- this is just a test to see if the ssh connection with github works in lazygit now
-- this is another test from work
-- and again
vim.api.nvim_create_autocmd("TermOpen", {
  group = vim.api.nvim_create_augroup("custom-term-open", { clear = true }),
  callback = function()
    vim.opt.number = false
    vim.opt.relativenumber = false
  end,
})

--opening the internal neovim terminal
vim.keymap.set("n", "<space>st", function()
  vim.cmd.vnew()
  vim.cmd.term()
  vim.cmd.wincmd("J")
  vim.api.nvim_win_set_height(0, 10)
end, { desc = "Create terminal - bottom split" })
