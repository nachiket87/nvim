require('telescope').setup {
    extensions = {
        fzy_native = {
            override_generic_sorter = true,
            override_file_sorter = true,
        }
    }
}
require('telescope').load_extension('fzy_native')
require('telescope').load_extension('gh')
require('lspconfig').tsserver.setup{ on_attach=require'completion'.on_attach }

