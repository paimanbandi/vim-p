local dap_install = require("dap-install")
dap_install.config("python", {})
dap_install.config("go_delve", {})
dap_install.config("ccppr_vsc", {})
dap_install.config("jsnode", {})

vim.fn.sign_define('DapBreakpoint', {text='🔴', texthl='', linehl='', numhl=''})
vim.fn.sign_define('DapStopped', {text='🟢', texthl='', linehl='', numhl=''})

vim.api.nvim_set_keymap("n", "<leader>dh", "<Cmd>lua require'dap'.toggle_breakpoint()<CR>", {noremap=true})
vim.api.nvim_set_keymap("n", "<leader>dc", "<Cmd>lua require'dap'.continue()<CR>", {noremap=true})
vim.api.nvim_set_keymap("n", "<leader>dn", "<Cmd>lua require'dap'.step_into()<CR>", {noremap=true})
vim.api.nvim_set_keymap("n", "<leader>do", "<Cmd>lua require'dap'.step_out()<CR>", {noremap=true})
