vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	use { 'weilbith/nvim-code-action-menu', config = function()
		vim.g.code_action_menu_window_border = 'single'
	end}
	use {
		"folke/which-key.nvim",
		config = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
			require("which-key").setup {
				-- your configuration comes here
				-- or leave it empty to use the default settings
				-- refer to the configuration section below
			}
		end
	}
	use {
		'j-hui/fidget.nvim',
		tag = 'legacy',
		config = function()
			require("fidget").setup {
				-- options
			}
		end,
	}
	use { 'stevearc/aerial.nvim', config = function() 
		require("aerial").setup({
			backends = { "treesitter", "lsp", "markdown", "man" },

			layout = {
				max_width = { 40, 0.2 },
				width = nil,
				min_width = 10,

				win_opts = {},

				default_direction = "prefer_right",

				placement = "window",

				resize_to_content = true,

				preserve_equality = false,
			},

			attach_mode = "window",

			close_automatic_events = {},

			keymaps = {
				["?"] = "actions.show_help",
				["g?"] = "actions.show_help",
				["<CR>"] = "actions.jump",
				["<2-LeftMouse>"] = "actions.jump",
				["<C-v>"] = "actions.jump_vsplit",
				["<C-s>"] = "actions.jump_split",
				["p"] = "actions.scroll",
				["<C-j>"] = "actions.down_and_scroll",
				["<C-k>"] = "actions.up_and_scroll",
				["{"] = "actions.prev",
				["}"] = "actions.next",
				["[["] = "actions.prev_up",
				["]]"] = "actions.next_up",
				["q"] = "actions.close",
				["o"] = "actions.tree_toggle",
				["za"] = "actions.tree_toggle",
				["O"] = "actions.tree_toggle_recursive",
				["zA"] = "actions.tree_toggle_recursive",
				["l"] = "actions.tree_open",
				["zo"] = "actions.tree_open",
				["L"] = "actions.tree_open_recursive",
				["zO"] = "actions.tree_open_recursive",
				["h"] = "actions.tree_close",
				["zc"] = "actions.tree_close",
				["H"] = "actions.tree_close_recursive",
				["zC"] = "actions.tree_close_recursive",
				["zr"] = "actions.tree_increase_fold_level",
				["zR"] = "actions.tree_open_all",
				["zm"] = "actions.tree_decrease_fold_level",
				["zM"] = "actions.tree_close_all",
				["zx"] = "actions.tree_sync_folds",
				["zX"] = "actions.tree_sync_folds",
			},

			lazy_load = true,

			disable_max_lines = 10000,

			disable_max_size = 2000000, -- Default 2MB

			filter_kind = {
				"Class",
				"Constructor",
				"Enum",
				"Function",
				"Interface",
				"Module",
				"Method",
				"Struct",
			},

			highlight_mode = "split_width",

			highlight_closest = true,

			highlight_on_hover = false,

			highlight_on_jump = 300,

			autojump = false,

			icons = {},

			ignore = {
				unlisted_buffers = false,

				filetypes = {},

				buftypes = "special",

				wintypes = "special",
			},

			manage_folds = false,

			link_folds_to_tree = false,

			link_tree_to_folds = true,

			nerd_font = "auto",

			on_attach = function(bufnr) end,

			on_first_symbols = function(bufnr) end,

			open_automatic = false,

			post_jump_cmd = "normal! zz",

			post_parse_symbol = function(bufnr, item, ctx)
				return true
			end,

			post_add_all_symbols = function(bufnr, items, ctx)
				return items
			end,

			close_on_select = false,

			update_events = "TextChanged,InsertLeave",

			show_guides = false,

			guides = {
				mid_item = "├─",
				last_item = "└─",
				nested_top = "│ ",
				whitespace = "  ",
			},

			get_highlight = function(symbol, is_icon, is_collapsed)
			end,

			float = {
				border = "rounded",

				relative = "cursor",

				max_height = 0.9,
				height = nil,
				min_height = { 8, 0.1 },

				override = function(conf, source_winid)
					return conf
				end,
			},

			nav = {
				border = "rounded",
				max_height = 0.9,
				min_height = { 10, 0.1 },
				max_width = 0.5,
				min_width = { 0.2, 20 },
				win_opts = {
					cursorline = true,
					winblend = 10,
				},
				autojump = false,
				preview = false,
				keymaps = {
					["<CR>"] = "actions.jump",
					["<2-LeftMouse>"] = "actions.jump",
					["<C-v>"] = "actions.jump_vsplit",
					["<C-s>"] = "actions.jump_split",
					["h"] = "actions.left",
					["l"] = "actions.right",
					["<C-c>"] = "actions.close",
				},
			},

			lsp = {
				diagnostics_trigger_update = true,

				update_when_errors = true,

				update_delay = 300,

				priority = {
				},
			},

			treesitter = {
				update_delay = 300,
				experimental_selection_range = false,
			},

			markdown = {
				update_delay = 300,
			},

			man = {
				update_delay = 300,
			},
		})end}

		use 'lukas-reineke/indent-blankline.nvim'
		use { 'neovim/nvim-lspconfig', config = function() 
			require('lspconfig').clangd.setup {
			}


			-- Add additional capabilities supported by nvim-cmp
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require('lspconfig')

			-- Enable some language servers with the additional completion capabilities offered by nvim-cmp
			local servers = { 'clangd' }
			for _, lsp in ipairs(servers) do
				lspconfig[lsp].setup {
					-- on_attach = my_custom_on_attach,
					capabilities = capabilities,
				}
			end

			-- luasnip setup
			local luasnip = require 'luasnip'

			-- nvim-cmp setup
			local cmp = require 'cmp'
			cmp.setup {
				window = {
					completion = cmp.config.window.bordered(),
					documentation = cmp.config.window.bordered()
				},
				snippet = {
					expand = function(args)
						luasnip.lsp_expand(args.body)
					end,
				},
				completion = { completeopt = 'menu,menuone,noinsert'  },
				confirmation = { completeopt = 'menu,menuone,noinsert' },
				mapping = cmp.mapping.preset.insert({
					['<C-u>'] = cmp.mapping.scroll_docs(-4), -- Up
					['<C-d>'] = cmp.mapping.scroll_docs(4), -- Down
					-- C-b (back) C-f (forward) for snippet placeholder navigation.
					['<C-Space>'] = cmp.mapping.complete(),
					['<CR>'] = cmp.mapping.confirm {
						behavior = cmp.ConfirmBehavior.Replace,
						select = true,
					},
					['<Tab>'] = cmp.mapping(function(fallback)
						if cmp.visible() then
							cmp.select_next_item()
						elseif luasnip.expand_or_jumpable() then
							luasnip.expand_or_jump()
						else
							fallback()
						end
					end, { 'i', 's' }),
					['<S-Tab>'] = cmp.mapping(function(fallback)
						if cmp.visible() then
							cmp.select_prev_item()
						elseif luasnip.jumpable(-1) then
							luasnip.jump(-1)
						else
							fallback()
						end
					end, { 'i', 's' }),
				}),
				sources = {
					{ name = 'nvim_lsp' },
					{ name = 'luasnip' },
				},
			}

		end}
		use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
		use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
		use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
		use 'L3MON4D3/LuaSnip' -- Snippets plugin

		use 'jiangmiao/auto-pairs'

		use { 'NvChad/nvim-colorizer.lua', config = function() 
			require('colorizer').setup()
		end}
		use 'nvim-tree/nvim-web-devicons' -- OPTIONAL: for file icons
		use 'lewis6991/gitsigns.nvim' -- OPTIONAL: for git status
		use({
			"utilyre/barbecue.nvim",
			tag = "*",
			requires = {
				"SmiteshP/nvim-navic",
				"nvim-tree/nvim-web-devicons", -- optional dependency
			},
			after = "nvim-web-devicons", -- keep this if you're using NvChad
			config = function()
				require("barbecue").setup {
					theme = "catppuccin"
				}
			end,
		})
		use { 'nvim-lualine/lualine.nvim', config = function() 
			require('lualine').setup {
				options = {
					icons_enabled = true,
					theme = 'catppuccin',
					component_separators = { left = '', right = ''},
					section_separators = { left = '', right = ''},

					disabled_filetypes = {
						statusline = {},
						winbar = {},
					},
					ignore_focus = {},
					always_divide_middle = true,
					globalstatus = false,
					refresh = {
						statusline = 1000,
						tabline = 1000,
						winbar = 1000,
					}
				},
				sections = {
					lualine_a = {'mode'},
					lualine_b = {'branch', 'diff', 'diagnostics'},
					lualine_c = {'filename'},
					lualine_x = {'fileformat', 'filetype'},
					lualine_y = {'aerial'},
					lualine_z = {'location'}
				},
				inactive_sections = {
					lualine_a = {},
					lualine_b = {},
					lualine_c = {'filename'},
					lualine_x = {'location'},
					lualine_y = {},
					lualine_z = {}
				},
				tabline = {},
				winbar = {},
				inactive_winbar = {},
				extensions = {}
			}

		end}
		use { "ms-jpq/chadtree" }
		use { "catppuccin/nvim", as = "catppuccin", config = function() 
			require("catppuccin").setup({
				flavour = "mocha", -- latte, frappe, macchiato, mocha
				background = { -- :h background
				light = "latte",
				dark = "mocha",
			},
			transparent_background = true, -- disables setting the background color.
			show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
			term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
			dim_inactive = {
				enabled = false, -- dims the background color of inactive window
				shade = "dark",
				percentage = 0.15, -- percentage of the shade to apply to the inactive window
			},
			no_italic = false, -- Force no italic
			no_bold = false, -- Force no bold
			no_underline = false, -- Force no underline
			styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
			comments = { "italic" }, -- Change the style of comments
			conditionals = { "italic" },
			loops = {},
			functions = {},
			keywords = {},
			strings = {},
			variables = {},
			numbers = {},
			booleans = {},
			properties = {},
			types = {},
			operators = {},
		},
		color_overrides = {},
		custom_highlights = {},
		integrations = {
			cmp = true,
			gitsigns = true,
			nvimtree = true,
			treesitter = true,
			notify = false,
			mini = false,
			-- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
		},
	})
	vim.cmd.colorscheme "catppuccin"
end}
end)

