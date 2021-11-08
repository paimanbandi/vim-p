local cmd = vim.cmd
local exec = vim.api.nvim_exec

cmd[[au VimEnter * highlight CursorLine cterm=None ctermbg=241 ctermfg=None guibg=#171717 guifg=None]]

cmd[[au BufWritePre * :%s/\s\+$//e]]

exec([[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=700}
  augroup end
]], false)

cmd[[au BufEnter * set fo-=c fo-=r fo-=o]]

cmd[[autocmd FileType text,markdown,xml,html,xhtml,javascript setlocal cc=0]]

cmd[[
  autocmd FileType xml,html,xhtml,css,scss,javascript,lua,yaml setlocal shiftwidth=2 tabstop=2
]]

cmd[[autocmd FileType markdown let g:indentLine_enabled=0]]

cmd[[autocmd BufEnter * EnableBlameLine]]

