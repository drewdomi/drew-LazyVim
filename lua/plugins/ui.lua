return {
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      table.insert(opts.routes, {
        filter = {
          event = "notify",
          find = "No information available",
        },
        opts = {
          skip = true,
        },
      })
      opts.presets.lsp_doc_border = true
    end,
  },

  {
    "rcarriga/nvim-notify",
    opts = {
      timeout = 800,
      background_colour = "#000000",
    },
  },

  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function(_, opts)
      local logo = [[
██████╗ ██████╗ ███████╗██╗    ██╗  ██████╗  ██████╗ ███╗   ███╗██╗
██╔══██╗██╔══██╗██╔════╝██║    ██║  ██╔══██╗██╔═══██╗████╗ ████║██║
██║  ██║██████╔╝█████╗  ██║ █╗ ██║  ██║  ██║██║   ██║██╔████╔██║██║
██║  ██║██╔══██╗██╔══╝  ██║███╗██║  ██║  ██║██║   ██║██║╚██╔╝██║██║
██████╔╝██║  ██║███████╗╚███╔███╔╝  ██████╔╝╚██████╔╝██║ ╚═╝ ██║██║
╚═════╝ ╚═╝  ╚═╝╚══════╝ ╚══╝╚══╝   ╚═════╝  ╚═════╝ ╚═╝     ╚═╝╚═╝
      ]]
      logo = string.rep("\n", 8) .. logo .. "\n\n"
      opts.config.header = vim.split(logo, "\n")
    end,
  },

  {
    "akinsho/bufferline.nvim",
    options = {
      offsets = {
        {
          filetype = "neo-tree",
          text = "",
          highlight = "Directory",
          text_align = "left",
        },
      },
    },
  },
}
