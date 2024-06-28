return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  {
    'vladdoster/remember.nvim',
    config = function()
      require('remember')
    end,
    lazy = false,
  },


  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  {
   	"williamboman/mason.nvim",
  	opts = {
  		ensure_installed = {
  			"html-lsp",
  			"lua-language-server",
        "css-lsp",
        "prettier",
        "stylua",
        "gopls",
        "terraform-ls",
        "ansible-language-server",
        "ansible-lint",
  		},
  	},
  },
  {
  	"nvim-treesitter/nvim-treesitter",
   	opts = {
   		ensure_installed = {
   			"vim", "lua", "vimdoc",
        "html", "css", "go", "terraform"
 		  },
  	},
  },
  {
    "pearofducks/ansible-vim",
    opts = {},
  },
}
