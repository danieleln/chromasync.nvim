# chromasync.nvim
Neovim colorscheme that syncs to
[chromasync](https://github.com/danieleln/chromasync)

> NOTE: `chromasync.nvim` is still under development.

## Installation
Installation highly depends on the package manager.
For [https://github.com/folke/lazy.nvim](lazy.nvim):
```lua
{
  "danieleln/chromasync.nvim",
  lazy = false,
  priority = 1000,

  -- Add these lines to load the colorscheme at startup
  config = function()
    vim.cmd.colorscheme("chromasync")
  end
}
```

## Usage
To load the colorscheme manually, use:

### Vim Script
```vim
colorscheme chromasync
```

### Lua
```lua
vim.cmd.colorscheme("chromasync")
```
