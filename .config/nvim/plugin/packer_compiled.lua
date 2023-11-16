-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/lucas/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/lucas/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/lucas/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/lucas/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/lucas/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "/home/lucas/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["aerial.nvim"] = {
    config = { "\27LJ\2\n\v\0\1\1\0\0\0\1K\0\1\0\v\0\1\1\0\0\0\1K\0\1\0\15\0\3\4\0\0\0\2+\3\2\0L\3\2\0\v\0\3\3\0\0\0\1L\1\2\0\v\0\3\3\0\0\0\1K\0\1\0\v\0\2\2\0\0\0\1L\0\2\0˙\19\1\0\5\0006\0A6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\a\0005\4\6\0=\4\b\0034\4\0\0=\4\t\3=\3\n\0024\3\0\0=\3\v\0025\3\f\0=\3\r\0025\3\14\0=\3\15\0024\3\0\0=\3\16\0025\3\17\0004\4\0\0=\4\18\3=\3\19\0023\3\20\0=\3\21\0023\3\22\0=\3\23\0023\3\24\0=\3\25\0023\3\26\0=\3\27\0025\3\28\0=\3\29\0023\3\30\0=\3\31\0025\3 \0005\4!\0=\4\"\0033\4#\0=\4$\3=\3%\0025\3&\0005\4'\0=\4\"\0035\4(\0=\4)\0035\4*\0=\4\t\0035\4+\0=\4\r\3=\3,\0025\3-\0004\4\0\0=\4.\3=\3/\0025\0030\0=\0031\0025\0032\0=\0033\0025\0034\0=\0035\2B\0\2\1K\0\1\0\bman\1\0\1\17update_delay\3¨\2\rmarkdown\1\0\1\17update_delay\3¨\2\15treesitter\1\0\2\17update_delay\3¨\2!experimental_selection_range\1\blsp\rpriority\1\0\3\17update_delay\3¨\2\23update_when_errors\2\31diagnostics_trigger_update\2\bnav\1\0\a\t<CR>\17actions.jump\n<C-c>\18actions.close\n<C-s>\23actions.jump_split\6l\18actions.right\n<C-v>\24actions.jump_vsplit\18<2-LeftMouse>\17actions.jump\6h\17actions.left\1\0\2\15cursorline\2\rwinblend\3\n\14min_width\1\3\0\0\4ö≥ÊÃ\tô≥¶˛\3\3\20\1\3\0\0\3\n\4ö≥ÊÃ\tô≥Ê˝\3\1\0\5\15max_height\4Õô≥Ê\fÃô≥ˇ\3\vborder\frounded\fpreview\1\rautojump\1\14max_width\4\0ÄÄÄˇ\3\nfloat\roverride\0\15min_height\1\3\0\0\3\b\4ö≥ÊÃ\tô≥Ê˝\3\1\0\3\15max_height\4Õô≥Ê\fÃô≥ˇ\3\rrelative\vcursor\vborder\frounded\18get_highlight\0\vguides\1\0\4\15nested_top\t‚îÇ \rmid_item\v‚îú‚îÄ\15whitespace\a  \14last_item\v‚îî‚îÄ\25post_add_all_symbols\0\22post_parse_symbol\0\21on_first_symbols\0\14on_attach\0\vignore\14filetypes\1\0\3\rbuftypes\fspecial\21unlisted_buffers\1\rwintypes\fspecial\nicons\16filter_kind\1\t\0\0\nClass\16Constructor\tEnum\rFunction\14Interface\vModule\vMethod\vStruct\fkeymaps\1\0 \t<CR>\17actions.jump\ag?\22actions.show_help\6L actions.tree_open_recursive\azo\22actions.tree_open\6p\19actions.scroll\azA\"actions.tree_toggle_recursive\a]]\20actions.next_up\6O\"actions.tree_toggle_recursive\aza\24actions.tree_toggle\azO actions.tree_open_recursive\azc\23actions.tree_close\6q\18actions.close\6H!actions.tree_close_recursive\6?\22actions.show_help\azr%actions.tree_increase_fold_level\a[[\20actions.prev_up\azR\26actions.tree_open_all\6}\17actions.next\azm%actions.tree_decrease_fold_level\6{\17actions.prev\azM\27actions.tree_close_all\n<C-k>\26actions.up_and_scroll\azx\28actions.tree_sync_folds\n<C-j>\28actions.down_and_scroll\azX\28actions.tree_sync_folds\6o\24actions.tree_toggle\azC!actions.tree_close_recursive\n<C-s>\23actions.jump_split\6l\22actions.tree_open\n<C-v>\24actions.jump_vsplit\18<2-LeftMouse>\17actions.jump\6h\23actions.tree_close\27close_automatic_events\vlayout\rwin_opts\14max_width\1\0\5\14placement\vwindow\22preserve_equality\1\22default_direction\17prefer_right\14min_width\3\n\22resize_to_content\2\1\3\0\0\3(\4ö≥ÊÃ\tô≥¶˛\3\rbackends\1\0\18\18post_jump_cmd\15normal! zz\19open_automatic\1\16attach_mode\vwindow\19highlight_mode\16split_width\14nerd_font\tauto\23link_tree_to_folds\2\23link_folds_to_tree\1\17manage_folds\1\rautojump\1\22highlight_on_jump\3¨\2\23highlight_on_hover\1\22highlight_closest\2\16show_guides\1\18update_events\28TextChanged,InsertLeave\20close_on_select\1\21disable_max_size\3Äâz\22disable_max_lines\3êN\14lazy_load\2\1\5\0\0\15treesitter\blsp\rmarkdown\bman\nsetup\vaerial\frequire\0" },
    loaded = true,
    path = "/home/lucas/.local/share/nvim/site/pack/packer/start/aerial.nvim",
    url = "https://github.com/stevearc/aerial.nvim"
  },
  ["auto-pairs"] = {
    loaded = true,
    path = "/home/lucas/.local/share/nvim/site/pack/packer/start/auto-pairs",
    url = "https://github.com/jiangmiao/auto-pairs"
  },
  ["barbecue.nvim"] = {
    config = { "\27LJ\2\nN\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\ntheme\15catppuccin\nsetup\rbarbecue\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/lucas/.local/share/nvim/site/pack/packer/opt/barbecue.nvim",
    url = "https://github.com/utilyre/barbecue.nvim"
  },
  catppuccin = {
    config = { "\27LJ\2\n±\5\0\0\5\0\31\00006\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0025\3\t\0005\4\b\0=\4\n\0035\4\v\0=\4\f\0034\4\0\0=\4\r\0034\4\0\0=\4\14\0034\4\0\0=\4\15\0034\4\0\0=\4\16\0034\4\0\0=\4\17\0034\4\0\0=\4\18\0034\4\0\0=\4\19\0034\4\0\0=\4\20\0034\4\0\0=\4\21\0034\4\0\0=\4\22\3=\3\23\0024\3\0\0=\3\24\0024\3\0\0=\3\25\0025\3\26\0=\3\27\2B\0\2\0016\0\28\0009\0\29\0009\0\30\0'\2\1\0B\0\2\1K\0\1\0\16colorscheme\bcmd\bvim\17integrations\1\0\6\bcmp\2\rnvimtree\2\rgitsigns\2\15treesitter\2\vnotify\1\tmini\1\22custom_highlights\20color_overrides\vstyles\14operators\ntypes\15properties\rbooleans\fnumbers\14variables\fstrings\rkeywords\14functions\nloops\17conditionals\1\2\0\0\vitalic\rcomments\1\0\0\1\2\0\0\vitalic\17dim_inactive\1\0\3\nshade\tdark\fenabled\1\15percentage\4≥ÊÃô\3≥Êå˛\3\15background\1\0\2\nlight\nlatte\tdark\nmocha\1\0\a\14no_italic\1\16term_colors\1\23show_end_of_buffer\1\27transparent_background\2\17no_underline\1\fno_bold\1\fflavour\nmocha\nsetup\15catppuccin\frequire\0" },
    loaded = true,
    path = "/home/lucas/.local/share/nvim/site/pack/packer/start/catppuccin",
    url = "https://github.com/catppuccin/nvim"
  },
  chadtree = {
    loaded = true,
    path = "/home/lucas/.local/share/nvim/site/pack/packer/start/chadtree",
    url = "https://github.com/ms-jpq/chadtree"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/lucas/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/lucas/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["fidget.nvim"] = {
    config = { "\27LJ\2\n8\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\vfidget\frequire\0" },
    loaded = true,
    path = "/home/lucas/.local/share/nvim/site/pack/packer/start/fidget.nvim",
    url = "https://github.com/j-hui/fidget.nvim"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/home/lucas/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/home/lucas/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\né\6\0\0\6\0&\0;6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\15\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0004\5\0\0=\5\t\0044\5\0\0=\5\n\4=\4\v\0034\4\0\0=\4\f\0035\4\r\0=\4\14\3=\3\16\0025\3\18\0005\4\17\0=\4\19\0035\4\20\0=\4\21\0035\4\22\0=\4\23\0035\4\24\0=\4\25\0035\4\26\0=\4\27\0035\4\28\0=\4\29\3=\3\30\0025\3\31\0004\4\0\0=\4\19\0034\4\0\0=\4\21\0035\4 \0=\4\23\0035\4!\0=\4\25\0034\4\0\0=\4\27\0034\4\0\0=\4\29\3=\3\"\0024\3\0\0=\3#\0024\3\0\0=\3\n\0024\3\0\0=\3$\0024\3\0\0=\3%\2B\0\2\1K\0\1\0\15extensions\20inactive_winbar\ftabline\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\vaerial\14lualine_x\1\3\0\0\15fileformat\rfiletype\14lualine_c\1\2\0\0\rfilename\14lualine_b\1\4\0\0\vbranch\tdiff\16diagnostics\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\frefresh\1\0\3\15statusline\3Ë\a\ftabline\3Ë\a\vwinbar\3Ë\a\17ignore_focus\23disabled_filetypes\vwinbar\15statusline\1\0\0\23section_separators\1\0\2\tleft\bÓÇº\nright\bÓÇ∫\25component_separators\1\0\2\tleft\bÓÇΩ\nright\bÓÇª\1\0\4\18icons_enabled\2\17globalstatus\1\25always_divide_middle\2\ntheme\15catppuccin\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/home/lucas/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/lucas/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-code-action-menu"] = {
    config = { "\27LJ\2\nG\0\0\2\0\4\0\0056\0\0\0009\0\1\0'\1\3\0=\1\2\0K\0\1\0\vsingle#code_action_menu_window_border\6g\bvim\0" },
    loaded = true,
    path = "/home/lucas/.local/share/nvim/site/pack/packer/start/nvim-code-action-menu",
    url = "https://github.com/weilbith/nvim-code-action-menu"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0" },
    loaded = true,
    path = "/home/lucas/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/NvChad/nvim-colorizer.lua"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\n-\0\1\4\1\2\0\5-\1\0\0009\1\0\0019\3\1\0B\1\2\1K\0\1\0\3¿\tbody\15lsp_expandö\1\0\1\3\2\4\0\21-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\vÄ-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4Ä-\1\1\0009\1\3\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\4¿\3¿\19expand_or_jump\23expand_or_jumpable\21select_next_item\fvisibleé\1\0\1\4\2\4\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\rÄ-\1\1\0009\1\2\1)\3ˇˇB\1\2\2\15\0\1\0X\2\5Ä-\1\1\0009\1\3\1)\3ˇˇB\1\2\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\4¿\3¿\tjump\rjumpable\21select_prev_item\fvisibleÙ\6\1\0\15\0002\0f6\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\3\0004\2\0\0B\0\2\0016\0\0\0'\2\4\0B\0\2\0029\0\5\0B\0\1\0026\1\0\0'\3\1\0B\1\2\0025\2\6\0006\3\a\0\18\5\2\0B\3\2\4X\6\5Ä8\b\a\0019\b\3\b5\n\b\0=\0\t\nB\b\2\1E\6\3\3R\6˘\1276\3\0\0'\5\n\0B\3\2\0026\4\0\0'\6\v\0B\4\2\0029\5\3\0045\a\18\0005\b\15\0009\t\f\0049\t\r\t9\t\14\tB\t\1\2=\t\16\b9\t\f\0049\t\r\t9\t\14\tB\t\1\2=\t\17\b=\b\r\a5\b\20\0003\t\19\0=\t\21\b=\b\22\a5\b\23\0=\b\16\a5\b\24\0=\b\25\a9\b\26\0049\b\27\b9\b\28\b5\n\30\0009\v\26\0049\v\29\v)\r¸ˇB\v\2\2=\v\31\n9\v\26\0049\v\29\v)\r\4\0B\v\2\2=\v \n9\v\26\0049\v!\vB\v\1\2=\v\"\n9\v\26\0049\v#\v5\r&\0009\14$\0049\14%\14=\14'\rB\v\2\2=\v(\n9\v\26\0043\r)\0005\14*\0B\v\3\2=\v+\n9\v\26\0043\r,\0005\14-\0B\v\3\2=\v.\nB\b\2\2=\b\26\a4\b\3\0005\t/\0>\t\1\b5\t0\0>\t\2\b=\b1\aB\5\2\0012\0\0ÄK\0\1\0\fsources\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\14<C-Space>\rcomplete\n<C-d>\n<C-u>\1\0\0\16scroll_docs\vinsert\vpreset\fmapping\17confirmation\1\0\1\16completeopt\26menu,menuone,noinsert\1\0\1\16completeopt\26menu,menuone,noinsert\fsnippet\vexpand\1\0\0\0\1\0\0\18documentation\15completion\1\0\0\rbordered\vwindow\vconfig\bcmp\fluasnip\17capabilities\1\0\0\vipairs\1\2\0\0\vclangd\25default_capabilities\17cmp_nvim_lsp\nsetup\vclangd\14lspconfig\frequire\0" },
    loaded = true,
    path = "/home/lucas/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-navic"] = {
    loaded = true,
    path = "/home/lucas/.local/share/nvim/site/pack/packer/start/nvim-navic",
    url = "https://github.com/SmiteshP/nvim-navic"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/lucas/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/lucas/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\nt\0\0\3\0\a\0\0156\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\0\0009\0\1\0)\1,\1=\1\3\0006\0\4\0'\2\5\0B\0\2\0029\0\6\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\15timeoutlen\ftimeout\6o\bvim\0" },
    loaded = true,
    path = "/home/lucas/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\n-\0\1\4\1\2\0\5-\1\0\0009\1\0\0019\3\1\0B\1\2\1K\0\1\0\3¿\tbody\15lsp_expandö\1\0\1\3\2\4\0\21-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\vÄ-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4Ä-\1\1\0009\1\3\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\4¿\3¿\19expand_or_jump\23expand_or_jumpable\21select_next_item\fvisibleé\1\0\1\4\2\4\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\rÄ-\1\1\0009\1\2\1)\3ˇˇB\1\2\2\15\0\1\0X\2\5Ä-\1\1\0009\1\3\1)\3ˇˇB\1\2\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\4¿\3¿\tjump\rjumpable\21select_prev_item\fvisibleÙ\6\1\0\15\0002\0f6\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\3\0004\2\0\0B\0\2\0016\0\0\0'\2\4\0B\0\2\0029\0\5\0B\0\1\0026\1\0\0'\3\1\0B\1\2\0025\2\6\0006\3\a\0\18\5\2\0B\3\2\4X\6\5Ä8\b\a\0019\b\3\b5\n\b\0=\0\t\nB\b\2\1E\6\3\3R\6˘\1276\3\0\0'\5\n\0B\3\2\0026\4\0\0'\6\v\0B\4\2\0029\5\3\0045\a\18\0005\b\15\0009\t\f\0049\t\r\t9\t\14\tB\t\1\2=\t\16\b9\t\f\0049\t\r\t9\t\14\tB\t\1\2=\t\17\b=\b\r\a5\b\20\0003\t\19\0=\t\21\b=\b\22\a5\b\23\0=\b\16\a5\b\24\0=\b\25\a9\b\26\0049\b\27\b9\b\28\b5\n\30\0009\v\26\0049\v\29\v)\r¸ˇB\v\2\2=\v\31\n9\v\26\0049\v\29\v)\r\4\0B\v\2\2=\v \n9\v\26\0049\v!\vB\v\1\2=\v\"\n9\v\26\0049\v#\v5\r&\0009\14$\0049\14%\14=\14'\rB\v\2\2=\v(\n9\v\26\0043\r)\0005\14*\0B\v\3\2=\v+\n9\v\26\0043\r,\0005\14-\0B\v\3\2=\v.\nB\b\2\2=\b\26\a4\b\3\0005\t/\0>\t\1\b5\t0\0>\t\2\b=\b1\aB\5\2\0012\0\0ÄK\0\1\0\fsources\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\14<C-Space>\rcomplete\n<C-d>\n<C-u>\1\0\0\16scroll_docs\vinsert\vpreset\fmapping\17confirmation\1\0\1\16completeopt\26menu,menuone,noinsert\1\0\1\16completeopt\26menu,menuone,noinsert\fsnippet\vexpand\1\0\0\0\1\0\0\18documentation\15completion\1\0\0\rbordered\vwindow\vconfig\bcmp\fluasnip\17capabilities\1\0\0\vipairs\1\2\0\0\vclangd\25default_capabilities\17cmp_nvim_lsp\nsetup\vclangd\14lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: catppuccin
time([[Config for catppuccin]], true)
try_loadstring("\27LJ\2\n±\5\0\0\5\0\31\00006\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0025\3\t\0005\4\b\0=\4\n\0035\4\v\0=\4\f\0034\4\0\0=\4\r\0034\4\0\0=\4\14\0034\4\0\0=\4\15\0034\4\0\0=\4\16\0034\4\0\0=\4\17\0034\4\0\0=\4\18\0034\4\0\0=\4\19\0034\4\0\0=\4\20\0034\4\0\0=\4\21\0034\4\0\0=\4\22\3=\3\23\0024\3\0\0=\3\24\0024\3\0\0=\3\25\0025\3\26\0=\3\27\2B\0\2\0016\0\28\0009\0\29\0009\0\30\0'\2\1\0B\0\2\1K\0\1\0\16colorscheme\bcmd\bvim\17integrations\1\0\6\bcmp\2\rnvimtree\2\rgitsigns\2\15treesitter\2\vnotify\1\tmini\1\22custom_highlights\20color_overrides\vstyles\14operators\ntypes\15properties\rbooleans\fnumbers\14variables\fstrings\rkeywords\14functions\nloops\17conditionals\1\2\0\0\vitalic\rcomments\1\0\0\1\2\0\0\vitalic\17dim_inactive\1\0\3\nshade\tdark\fenabled\1\15percentage\4≥ÊÃô\3≥Êå˛\3\15background\1\0\2\nlight\nlatte\tdark\nmocha\1\0\a\14no_italic\1\16term_colors\1\23show_end_of_buffer\1\27transparent_background\2\17no_underline\1\fno_bold\1\fflavour\nmocha\nsetup\15catppuccin\frequire\0", "config", "catppuccin")
time([[Config for catppuccin]], false)
-- Config for: fidget.nvim
time([[Config for fidget.nvim]], true)
try_loadstring("\27LJ\2\n8\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\vfidget\frequire\0", "config", "fidget.nvim")
time([[Config for fidget.nvim]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\nt\0\0\3\0\a\0\0156\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\0\0009\0\1\0)\1,\1=\1\3\0006\0\4\0'\2\5\0B\0\2\0029\0\6\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\15timeoutlen\ftimeout\6o\bvim\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: aerial.nvim
time([[Config for aerial.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\1\1\0\0\0\1K\0\1\0\v\0\1\1\0\0\0\1K\0\1\0\15\0\3\4\0\0\0\2+\3\2\0L\3\2\0\v\0\3\3\0\0\0\1L\1\2\0\v\0\3\3\0\0\0\1K\0\1\0\v\0\2\2\0\0\0\1L\0\2\0˙\19\1\0\5\0006\0A6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\a\0005\4\6\0=\4\b\0034\4\0\0=\4\t\3=\3\n\0024\3\0\0=\3\v\0025\3\f\0=\3\r\0025\3\14\0=\3\15\0024\3\0\0=\3\16\0025\3\17\0004\4\0\0=\4\18\3=\3\19\0023\3\20\0=\3\21\0023\3\22\0=\3\23\0023\3\24\0=\3\25\0023\3\26\0=\3\27\0025\3\28\0=\3\29\0023\3\30\0=\3\31\0025\3 \0005\4!\0=\4\"\0033\4#\0=\4$\3=\3%\0025\3&\0005\4'\0=\4\"\0035\4(\0=\4)\0035\4*\0=\4\t\0035\4+\0=\4\r\3=\3,\0025\3-\0004\4\0\0=\4.\3=\3/\0025\0030\0=\0031\0025\0032\0=\0033\0025\0034\0=\0035\2B\0\2\1K\0\1\0\bman\1\0\1\17update_delay\3¨\2\rmarkdown\1\0\1\17update_delay\3¨\2\15treesitter\1\0\2\17update_delay\3¨\2!experimental_selection_range\1\blsp\rpriority\1\0\3\17update_delay\3¨\2\23update_when_errors\2\31diagnostics_trigger_update\2\bnav\1\0\a\t<CR>\17actions.jump\n<C-c>\18actions.close\n<C-s>\23actions.jump_split\6l\18actions.right\n<C-v>\24actions.jump_vsplit\18<2-LeftMouse>\17actions.jump\6h\17actions.left\1\0\2\15cursorline\2\rwinblend\3\n\14min_width\1\3\0\0\4ö≥ÊÃ\tô≥¶˛\3\3\20\1\3\0\0\3\n\4ö≥ÊÃ\tô≥Ê˝\3\1\0\5\15max_height\4Õô≥Ê\fÃô≥ˇ\3\vborder\frounded\fpreview\1\rautojump\1\14max_width\4\0ÄÄÄˇ\3\nfloat\roverride\0\15min_height\1\3\0\0\3\b\4ö≥ÊÃ\tô≥Ê˝\3\1\0\3\15max_height\4Õô≥Ê\fÃô≥ˇ\3\rrelative\vcursor\vborder\frounded\18get_highlight\0\vguides\1\0\4\15nested_top\t‚îÇ \rmid_item\v‚îú‚îÄ\15whitespace\a  \14last_item\v‚îî‚îÄ\25post_add_all_symbols\0\22post_parse_symbol\0\21on_first_symbols\0\14on_attach\0\vignore\14filetypes\1\0\3\rbuftypes\fspecial\21unlisted_buffers\1\rwintypes\fspecial\nicons\16filter_kind\1\t\0\0\nClass\16Constructor\tEnum\rFunction\14Interface\vModule\vMethod\vStruct\fkeymaps\1\0 \t<CR>\17actions.jump\ag?\22actions.show_help\6L actions.tree_open_recursive\azo\22actions.tree_open\6p\19actions.scroll\azA\"actions.tree_toggle_recursive\a]]\20actions.next_up\6O\"actions.tree_toggle_recursive\aza\24actions.tree_toggle\azO actions.tree_open_recursive\azc\23actions.tree_close\6q\18actions.close\6H!actions.tree_close_recursive\6?\22actions.show_help\azr%actions.tree_increase_fold_level\a[[\20actions.prev_up\azR\26actions.tree_open_all\6}\17actions.next\azm%actions.tree_decrease_fold_level\6{\17actions.prev\azM\27actions.tree_close_all\n<C-k>\26actions.up_and_scroll\azx\28actions.tree_sync_folds\n<C-j>\28actions.down_and_scroll\azX\28actions.tree_sync_folds\6o\24actions.tree_toggle\azC!actions.tree_close_recursive\n<C-s>\23actions.jump_split\6l\22actions.tree_open\n<C-v>\24actions.jump_vsplit\18<2-LeftMouse>\17actions.jump\6h\23actions.tree_close\27close_automatic_events\vlayout\rwin_opts\14max_width\1\0\5\14placement\vwindow\22preserve_equality\1\22default_direction\17prefer_right\14min_width\3\n\22resize_to_content\2\1\3\0\0\3(\4ö≥ÊÃ\tô≥¶˛\3\rbackends\1\0\18\18post_jump_cmd\15normal! zz\19open_automatic\1\16attach_mode\vwindow\19highlight_mode\16split_width\14nerd_font\tauto\23link_tree_to_folds\2\23link_folds_to_tree\1\17manage_folds\1\rautojump\1\22highlight_on_jump\3¨\2\23highlight_on_hover\1\22highlight_closest\2\16show_guides\1\18update_events\28TextChanged,InsertLeave\20close_on_select\1\21disable_max_size\3Äâz\22disable_max_lines\3êN\14lazy_load\2\1\5\0\0\15treesitter\blsp\rmarkdown\bman\nsetup\vaerial\frequire\0", "config", "aerial.nvim")
time([[Config for aerial.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\né\6\0\0\6\0&\0;6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\15\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0004\5\0\0=\5\t\0044\5\0\0=\5\n\4=\4\v\0034\4\0\0=\4\f\0035\4\r\0=\4\14\3=\3\16\0025\3\18\0005\4\17\0=\4\19\0035\4\20\0=\4\21\0035\4\22\0=\4\23\0035\4\24\0=\4\25\0035\4\26\0=\4\27\0035\4\28\0=\4\29\3=\3\30\0025\3\31\0004\4\0\0=\4\19\0034\4\0\0=\4\21\0035\4 \0=\4\23\0035\4!\0=\4\25\0034\4\0\0=\4\27\0034\4\0\0=\4\29\3=\3\"\0024\3\0\0=\3#\0024\3\0\0=\3\n\0024\3\0\0=\3$\0024\3\0\0=\3%\2B\0\2\1K\0\1\0\15extensions\20inactive_winbar\ftabline\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\vaerial\14lualine_x\1\3\0\0\15fileformat\rfiletype\14lualine_c\1\2\0\0\rfilename\14lualine_b\1\4\0\0\vbranch\tdiff\16diagnostics\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\frefresh\1\0\3\15statusline\3Ë\a\ftabline\3Ë\a\vwinbar\3Ë\a\17ignore_focus\23disabled_filetypes\vwinbar\15statusline\1\0\0\23section_separators\1\0\2\tleft\bÓÇº\nright\bÓÇ∫\25component_separators\1\0\2\tleft\bÓÇΩ\nright\bÓÇª\1\0\4\18icons_enabled\2\17globalstatus\1\25always_divide_middle\2\ntheme\15catppuccin\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: nvim-code-action-menu
time([[Config for nvim-code-action-menu]], true)
try_loadstring("\27LJ\2\nG\0\0\2\0\4\0\0056\0\0\0009\0\1\0'\1\3\0=\1\2\0K\0\1\0\vsingle#code_action_menu_window_border\6g\bvim\0", "config", "nvim-code-action-menu")
time([[Config for nvim-code-action-menu]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd nvim-web-devicons ]]
vim.cmd [[ packadd barbecue.nvim ]]

-- Config for: barbecue.nvim
try_loadstring("\27LJ\2\nN\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\ntheme\15catppuccin\nsetup\rbarbecue\frequire\0", "config", "barbecue.nvim")

time([[Sequenced loading]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
