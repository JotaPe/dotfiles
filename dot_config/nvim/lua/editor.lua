local opts_info = vim.api.nvim_get_all_options_info()

local opt = setmetatable({}, {
  __index = vim.o,
  __newindex = function(_, key, value)
    vim.o[key] = value
    local scope = opts_info[key].scope
    if scope == 'win' then
      vim.wo[key] = value
    elseif scope == 'buf' then
      vim.bo[key] = value
    end
  end,
})

local function set_globals()
  vim.g.mapleader = ' '
end

local function set_ui_options()
  vim.cmd([[syntax on]])
  vim.cmd([[filetype indent plugin on]])

  -- colorscheme configs
  vim.g.gruvbox_italicize_comments = true
  vim.g.gruvbox_invert_selection = false
  vim.g.gruvbox_contrast_dark = 'hard'
  vim.cmd([[colorscheme gruvbox]])

  -- ALE
  vim.g.ale_fix_on_save = 1
  vim.g.ale_linter_explicit = 1

  -- closetag
  vim.g.closetag_filenames = '*.html,*.xhtml,*.phtml,*.erb,*.jsx,*.tsx'
  vim.g.closetag_xhtml_filenames = '*.xhtml,*.jsx,*.erb,*.tsx'
  vim.g.closetag_emptyTags_caseSensitive = 1
  vim.g.closetag_shortcut = '>'

  -- completion
  vim.g.completion_enable_auto_popup = 1
end

local function set_editor_options()
  local options = {
    autoread = true,
    hidden = true,
    termguicolors = true,
    title = true,
    colorcolumn = '80',
    ruler = true,
    ignorecase = true,
    shortmess = vim.o.shortmess..'c',
    incsearch = true,
    laststatus = 2,
    relativenumber = true,
    number = true,
    modeline = true,
    cursorline = true,
    showcmd = true,
    smartcase = true,
    textwidth = 80,
    wildignorecase = true,
    wildmenu = true,
    autoindent = true,
    updatetime = 100,
    smartindent = true,
    confirm = true,
    shiftwidth = 2,
    softtabstop = 2,
    tabstop = 2,
    swapfile = false,
    expandtab = true,
    foldmethod = 'indent',
    foldlevelstart = 99,
    wrap = false,
    backspace = 'indent,eol,start',
  }
  for k, v in pairs(options) do
    opt[k] = v
  end
end

local function set_options()
  set_editor_options()
  set_ui_options()
end

local function set_keybinds()
  -- Disabling Ex mode
  local function set_keymap(...) vim.api.nvim_set_keymap(...) end

  set_keymap('', 'Q', '', {noremap = true})
end

set_keybinds()
set_options()
set_globals()
