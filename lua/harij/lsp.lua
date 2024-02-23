local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

-- local cmp = require('cmp')
-- local cmp_select = {behavior = cmp.SelectBehavior.Select}
-- local cmp_mappings = lsp_zero.defaults.cmp_mappings({
--   ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
--   ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
--   ['<C-y>'] = cmp.mapping.confirm({ select = true }),
--   ["<C-Space>"] = cmp.mapping.complete(),
-- })

-- cmp_mappings['<Tab>'] = nil
-- cmp_mappings['<S-Tab>'] = nil

-- lsp_zero.setup_nvim_cmp({
--   mapping = cmp_mappings
-- })

lsp_zero.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {
        error = 'E',
        warn = 'W',
        hint = 'H',
        info = 'I'
    }
})

require('mason').setup({})
require('mason-lspconfig').setup({
	ensure_installed = {'pyright', 'julials', 'r_language_server', 'matlab_ls'},
	handlers = {
		lsp_zero.default_setup,
		matlab_ls = function()
		    require('lspconfig').matlab_ls.setup({
			filetypes = {"matlab"},
			settings = {
			    matlab = {
				installPath = "c/Program Files/MATLAB/R2023a/bin"
			    },
			},
			single_file_support = true
		    })
	    end,

},
})

lsp_zero.setup()


