require("formatter").setup(
  {
    logging = false,
    filetype = {
      javascript = {
        -- eslint
        function()
          return {
            exe = "eslint",
            args = {"--stdin-filename", vim.api.nvim_buf_get_name(0), "--fix", "--cache", "--no-eslintrc", "--rule \"quotes: [2, 'double']\"", "--rule \"comma-dangle: [2, \"never\"]\"", "--rule \"semi: [2, \"always\"]\"" },
            stdin = false
          }
        end
      }
    }
  }
)
