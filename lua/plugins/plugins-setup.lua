local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
	"git",
	"clone",
	"--filter=blob:none",
	"https://github.com/folke/lazy.nvim.git",
	"--branch=stable",
	lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
	"folke/tokyonight.nvim",
	{
	  'nvim-lualine/lualine.nvim',
          dependencies = { 'nvim-tree/nvim-web-devicons' }
	},
	{
          "nvim-neo-tree/neo-tree.nvim",
      	  branch = "v3.x",
      	  dependencies = {
          "nvim-lua/plenary.nvim",
          "MunifTanjim/nui.nvim",
          "nvim-tree/nvim-web-devicons", -- optional, but recommended
        },
        lazy = false, -- neo-tree will lazily load itself
	  ---@module 'neo-tree'
	  ---@type neotree.Config
	  opts = {
        
	  }
  	},
}
local opts = {}

require("lazy").setup(plugins, opts)
