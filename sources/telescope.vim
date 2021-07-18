lua << EOF
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
        "aseprite", "png", "jpeg", "fnt", "hl"
    },
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
        theme = "dropdown",
        sorting_strategy = "descending",
    },
    file_browser = {
        previewer = false,
        theme = "dropdown",
        sorting_strategy = "descending",
    },
    live_grep = {
        theme = "dropdown",
        sorting_strategy = "descending",
    }
  },
}
EOF
nnoremap <C-P> <cmd>Telescope find_files<CR>
nnoremap <C-Space> <cmd>Telescope live_grep<CR>
nnoremap <silent><leadeR>tp <cmd>Telescope find_files<CR>
nnoremap <silent><leader>tb <cmd>Telescope buffers<CR>
nnoremap <silent><leader>tf <cmd>Telescope file_browser<CR>
nnoremap <silent><leader>tg <cmd>Telescope live_grep<CR>
