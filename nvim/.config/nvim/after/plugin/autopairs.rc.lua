local status, autorepairs = pcall(require, 'nvim-autopairs')

if (not status) then return end

autorepairs.setup {
  disable_filetype = { 'TelescopePrompt', 'vim' }
}
