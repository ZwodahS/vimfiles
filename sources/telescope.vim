lua << EOF
require("telescope").setup {
  defaults = {
    -- Your defaults config goes in here
    mappings = {
        i = {
            ["<C-j>"] = require("telescope.actions").move_selection_next,
            ["<C-k>"] = require("telescope.actions").move_selection_previous,
        }
    },
    file_ignore_patterns = {
        "aseprite", "png", "jpeg", "fnt", "hl"
    },
  },
  pickers = {
    -- Your special builtin config goes in here
    buffers = {
      sort_lastused = true,
      theme = "dropdown",
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
  },
}
EOF
nnoremap <C-P> <cmd>Telescope find_files<cr>
nnoremap <silent><leader>b <cmd>Telescope buffers<cr>
