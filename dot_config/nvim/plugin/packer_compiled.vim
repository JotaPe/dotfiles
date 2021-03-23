" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
local package_path_str = "/home/bino/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/bino/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/bino/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/bino/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/bino/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

_G.packer_plugins = {
  ["alchemist.vim"] = {
    loaded = true,
    path = "/home/bino/.local/share/nvim/site/pack/packer/start/alchemist.vim"
  },
  ["auto-pairs"] = {
    loaded = true,
    path = "/home/bino/.local/share/nvim/site/pack/packer/start/auto-pairs"
  },
  ["completion-buffers"] = {
    loaded = true,
    path = "/home/bino/.local/share/nvim/site/pack/packer/start/completion-buffers"
  },
  ["completion-nvim"] = {
    loaded = true,
    path = "/home/bino/.local/share/nvim/site/pack/packer/start/completion-nvim"
  },
  ["completion-tags"] = {
    loaded = true,
    path = "/home/bino/.local/share/nvim/site/pack/packer/start/completion-tags"
  },
  ["completion-treesitter"] = {
    loaded = true,
    path = "/home/bino/.local/share/nvim/site/pack/packer/start/completion-treesitter"
  },
  fzf = {
    loaded = true,
    path = "/home/bino/.local/share/nvim/site/pack/packer/start/fzf"
  },
  ["fzf.vim"] = {
    loaded = true,
    path = "/home/bino/.local/share/nvim/site/pack/packer/start/fzf.vim"
  },
  ["gruvbox.nvim"] = {
    loaded = true,
    path = "/home/bino/.local/share/nvim/site/pack/packer/start/gruvbox.nvim"
  },
  ["kotlin-vim"] = {
    loaded = true,
    path = "/home/bino/.local/share/nvim/site/pack/packer/start/kotlin-vim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/home/bino/.local/share/nvim/site/pack/packer/start/lualine.nvim"
  },
  ["lush.nvim"] = {
    loaded = true,
    path = "/home/bino/.local/share/nvim/site/pack/packer/start/lush.nvim"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/bino/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lspinstall"] = {
    loaded = true,
    path = "/home/bino/.local/share/nvim/site/pack/packer/start/nvim-lspinstall"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/bino/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/bino/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/bino/.local/share/nvim/site/pack/packer/opt/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/bino/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/bino/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["rust.vim"] = {
    loaded = true,
    path = "/home/bino/.local/share/nvim/site/pack/packer/start/rust.vim"
  },
  ["specs.nvim"] = {
    loaded = true,
    path = "/home/bino/.local/share/nvim/site/pack/packer/start/specs.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/bino/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["typescript-vim"] = {
    loaded = true,
    path = "/home/bino/.local/share/nvim/site/pack/packer/start/typescript-vim"
  },
  ["vim-closetag"] = {
    loaded = true,
    path = "/home/bino/.local/share/nvim/site/pack/packer/start/vim-closetag"
  },
  ["vim-dadbod"] = {
    loaded = true,
    path = "/home/bino/.local/share/nvim/site/pack/packer/start/vim-dadbod"
  },
  ["vim-dadbod-completion"] = {
    loaded = true,
    path = "/home/bino/.local/share/nvim/site/pack/packer/start/vim-dadbod-completion"
  },
  ["vim-dadbod-ui"] = {
    loaded = true,
    path = "/home/bino/.local/share/nvim/site/pack/packer/start/vim-dadbod-ui"
  },
  ["vim-elixir"] = {
    loaded = true,
    path = "/home/bino/.local/share/nvim/site/pack/packer/start/vim-elixir"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/bino/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-go"] = {
    loaded = true,
    path = "/home/bino/.local/share/nvim/site/pack/packer/start/vim-go"
  },
  ["vim-graphql"] = {
    loaded = true,
    path = "/home/bino/.local/share/nvim/site/pack/packer/start/vim-graphql"
  },
  ["vim-js"] = {
    loaded = true,
    path = "/home/bino/.local/share/nvim/site/pack/packer/start/vim-js"
  },
  ["vim-jsx"] = {
    loaded = true,
    path = "/home/bino/.local/share/nvim/site/pack/packer/start/vim-jsx"
  },
  ["vim-jsx-pretty"] = {
    loaded = true,
    path = "/home/bino/.local/share/nvim/site/pack/packer/start/vim-jsx-pretty"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/home/bino/.local/share/nvim/site/pack/packer/start/vim-repeat"
  },
  ["vim-sensible"] = {
    loaded = true,
    path = "/home/bino/.local/share/nvim/site/pack/packer/start/vim-sensible"
  },
  ["vim-signify"] = {
    loaded = true,
    path = "/home/bino/.local/share/nvim/site/pack/packer/start/vim-signify"
  },
  ["vim-surround"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/bino/.local/share/nvim/site/pack/packer/opt/vim-surround"
  },
  ["vim-terraform"] = {
    loaded = true,
    path = "/home/bino/.local/share/nvim/site/pack/packer/start/vim-terraform"
  },
  ["yats.vim"] = {
    loaded = true,
    path = "/home/bino/.local/share/nvim/site/pack/packer/start/yats.vim"
  },
  ["zig.vim"] = {
    loaded = true,
    path = "/home/bino/.local/share/nvim/site/pack/packer/start/zig.vim"
  }
}

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
vim.cmd [[au BufRead * ++once lua require("packer.load")({'vim-surround'}, { event = "BufRead *" }, _G.packer_plugins)]]
vim.cmd("augroup END")
END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
