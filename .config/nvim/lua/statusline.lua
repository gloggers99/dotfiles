-- statusline.lua (pure Lua, no plugins)

local M = {}

-- mode color and label map
local mode_map = {
  n = { "NORMAL", "%#StatusLineModeNormal#" },
  i = { "INSERT", "%#StatusLineModeInsert#" },
  v = { "VISUAL", "%#StatusLineModeVisual#" },
  V = { "V-LINE", "%#StatusLineModeVisual#" },
  ["\22"] = { "V-BLOCK", "%#StatusLineModeVisual#" },
  c = { "COMMAND", "%#StatusLineModeCommand#" },
  R = { "REPLACE", "%#StatusLineModeReplace#" },
}

-- get current git branch (cached for performance)
local git_branch_cache = ""
local function get_git_branch()
  local handle = io.popen("git -C " .. vim.fn.expand("%:p:h") .. " rev-parse --abbrev-ref HEAD 2>/dev/null")
  if handle then
    local branch = handle:read("*l") or ""
    handle:close()
    git_branch_cache = branch
  end
  return git_branch_cache
end

-- build statusline
function M.statusline()
  local mode = vim.fn.mode()
  local mode_info = mode_map[mode] or { mode, "%#StatusLine#" }

  local file = vim.fn.expand("%:t") ~= "" and vim.fn.expand("%:t") or "[No Name]"
  local modified = vim.bo.modified and " [+]" or ""
  local ro = vim.bo.readonly and " " or ""
  local branch = get_git_branch()
  local ft = vim.bo.filetype ~= "" and vim.bo.filetype or "none"
  local enc = (vim.bo.fileencoding ~= "" and vim.bo.fileencoding or vim.o.encoding):upper()

  return table.concat({
    mode_info[2], " ", mode_info[1], " ",
    "%#StatusLine# ", file, modified, ro,
    "%=",
    branch ~= "" and (" " .. branch .. " ") or "",
    ft, " ", enc, " ",
    "%l:%c ", "%p%%"
  })
end

-- set highlight groups
vim.cmd([[
  hi StatusLine guifg=#c0caf5 guibg=#1a1b26
  hi StatusLineNC guifg=#565f89 guibg=#1a1b26
  hi StatusLineModeNormal guifg=#1a1b26 guibg=#7aa2f7 gui=bold
  hi StatusLineModeInsert guifg=#1a1b26 guibg=#9ece6a gui=bold
  hi StatusLineModeVisual guifg=#1a1b26 guibg=#bb9af7 gui=bold
  hi StatusLineModeCommand guifg=#1a1b26 guibg=#e0af68 gui=bold
  hi StatusLineModeReplace guifg=#1a1b26 guibg=#f7768e gui=bold
]])

-- activate it
vim.o.laststatus = 3
vim.o.statusline = "%!v:lua.require'statusline'.statusline()"

return M
