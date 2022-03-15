-- telescope
-- https://github.com/nvim-telescope/telescope.nvim
local m = require('conf.mappings')
require("telescope").setup {
  defaults = {
    -- Your defaults config goes in here
    mappings = {
        i = {
            ["<C-j>"] = require("telescope.actions").move_selection_next,
            ["<C-k>"] = require("telescope.actions").move_selection_previous,
            ["<C-q>"] = require("telescope.actions").close,
            ["qqq"] = require("telescope.actions").close,
        },
        n = {
            ["q"] = require('telescope.actions').close,
        }
    },
    file_ignore_patterns = {
        "*.aseprite", "*.png", "*.jpeg", "*.fnt", "*.hl"
    },
    sorters = "fuzzy_with_index_bias",
  },
  pickers = {
    buffers = {
        sort_lastused = true,
        theme = "cursor",
        previewer = false,
        mappings = {
            i = {
                ["<C-d>"] = require("telescope.actions").delete_buffer,
            },
            n = {
                ["d"] = require("telescope.actions").delete_buffer,
            }
        }
    },
    find_files = {
        sorting_strategy = "descending",
        follow = true
    },
    file_browser = {
        sorting_strategy = "descending",
    },
    live_grep = {
        sorting_strategy = "descending",
    }
  },
}
m.nmap('<C-P>', '<cmd>Telescope find_files previewer=false theme=get_dropdown<CR>')
m.nmap('<leader>tp', '<cmd>Telescope find_files<CR>')
m.nmap('<leader>tb', '<cmd>Telescope buffers<CR>')
m.nmap('<leader>tf', '<cmd>Telescope file_browser theme=get_dropdown previewer=false<CR>')
m.nmap('<leader>tg', '<cmd>Telescope live_grep find_command=rg,--follow,--files<CR>')
m.nmap('<C-Space>', '<cmd>Telescope live_grep<CR>')
