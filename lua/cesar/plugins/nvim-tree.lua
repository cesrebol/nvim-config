local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
  return
end

-- recommented setup from the documentations of nvim-tree

vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

nvimtree.setup({
  actions = {
    open_file = {
      window_picker = {
        enable = false,
      },
    },
  },
})
