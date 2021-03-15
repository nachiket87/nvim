require("format").setup {
    ["*"] = {
        {cmd = {"sed -i 's/[ \t]*$//'"}} -- remove trailing whitespace
    },
    vimwiki = {
        {
            cmd = {"prettier -w --parser babel"},
            start_pattern = "^{{{javascript$",
            end_pattern = "^}}}$"
        }
    },
    javascript = {
        {cmd = {"prettier -w", "./node_modules/.bin/eslint --fix"}}
    },
    typescript = {
        {cmd = {"prettier -w", "./node_modules/.bin/eslint --fix"}}
    },
    typescriptreact = {
        {cmd = {"prettier -w", "./node_modules/.bin/eslint --fix"}}
    },
    javascriptreact = {
        {cmd = {"prettier -w", "./node_modules/.bin/eslint --fix"}}
    },
    markdown = {
        {cmd = {"prettier -w"}},
        {
            cmd = {"black"},
            start_pattern = "^```python$",
            end_pattern = "^```$",
            target = "current"
        }
    },
    ruby = {
        {cmd = {"rubocop -a"}}
    },
}
