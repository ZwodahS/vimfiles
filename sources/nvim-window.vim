nmap <silent> <C-W><C-W> :lua require('nvim-window').pick()<CR>
lua << EOF
    require('nvim-window').setup({
      -- The characters available for hinting windows.
      chars = {
        '0', '1', '2', '3', '4', '5',
        'q', 'w', 'e', 'r', 't',
        'a', 's', 'd', 'f', 'g',
      },
    });
EOF

