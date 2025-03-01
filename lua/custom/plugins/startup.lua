return {
  'startup-nvim/startup.nvim',
  dependencies = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim', 'nvim-telescope/telescope-file-browser.nvim' },
  config = function()
    require('startup').setup {
      theme = 'evil', -- or "dashboard", "evil", "startify", or customize your own theme
      options = {
        header = {
          [[Welcome Back, Malik]],
          [[Custom startup page with startup.nvim]],
        },
        buttons = {
          { 'e', '  New file', ':ene <BAR> startinsert <CR>' },
          { 'f', '  Find file', ':Telescope find_files <CR>' },
          { 'r', '  Recent files', ':Telescope oldfiles <CR>' },
          { 'q', '  Quit Neovim', ':qa<CR>' },
        },
        footer = { 'Startup.nvim - Customized Neovim!' },
      },
    }
  end,
}
