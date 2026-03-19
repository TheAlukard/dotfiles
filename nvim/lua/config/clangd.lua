local lspconfig = require('lspconfig')

lspconfig.clangd.setup{
    on_attach = function(client, bufnr)
        -- Configure diagnostics: super clean
        vim.diagnostic.config({
            virtual_text = false,  -- no inline text
            signs = true,          -- keep gutter signs
            underline = false,     -- remove underlines
            update_in_insert = false,
            severity_sort = true,  -- optional: sort by severity
        })

        -- Keymaps for navigating diagnostics
        local opts = { noremap=true, silent=true }
        vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>dn', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
        vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>dp', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
        vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>dl', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)

        -- Hover to see details
        -- vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
    end,

    -- Clangd flags (optional)
    cmd = { "clangd", "--clang-tidy", "--completion-style=detailed", "--cross-file-rename" },
}
