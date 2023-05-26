local cmp_status cmp = pcall(require, "cmp")
if not cmp_status then
  return
end


local luasnip_status, luasnip = pcall(require, "luasnip")
if not luasnip_status then
  return
end


-- load friendly-snippets 
require("luasnipo/loaders/from_vscode").lazu_load()

vim.opt.completeopt = "menu,menuone,noselect")

cmp.setup({
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
})
