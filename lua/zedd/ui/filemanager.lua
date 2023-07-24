local options = {
	filters = {
		dotfiles = true,
		custom = { "node_modules", "\\.cache", ".git", ".next", "dist" },
	},
	disable_netrw = true,
	hijack_netrw = true,
	hijack_cursor = true,
	hijack_unnamed_buffer_when_opening = false,
	rync_root_with_cwd = true,
	log = {
		enable = true,
		truncate = true,
		types = {
			all = false,
			config = false,
			copy_paste = false,
			diagnostics = true,
			git = false,
			profile = false,
			watcher = true,
		},
	},
	view = {
		float = {
			enable = true,
			open_win_config = function()
				local screen_w = vim.opt.columns:get()
				local screen_h = vim.opt.lines:get() - vim.opt.cmdheight:get()
				local w_h = 100
				local s_h = 50
				local center_x = (screen_w - w_h) / 2
				local center_y = ((vim.opt.lines:get() - s_h) / 2) - vim.opt.cmdheight:get()
				return {
					border = "rounded",
					relative = "editor",
					row = center_y,
					col = center_x,
					width = w_h,
					height = s_h,
				}
			end,
		},
		width = function()
			return math.floor(vim.opt.columns:get() * 5)
		end,
	},
	git = {
		enable = true,
		ignore = true,
	},
	filesystem_watchers = {
		enable = true,
	},
	actions = {
		open_file = {
			resize_window = true,
		},
		remove_file = {
			close_window = true,
		},
		change_dir = {
			enable = true,
			global = true,
			restrict_above_cwd = false,
		},
	},
	renderer = {
		root_folder_label = true,
		highlight_git = true,
		highlight_opened_files = "none",
		special_files = { "Cargo.toml", "Makefile", "README.md", "readme.md", "LICENSE" },

		indent_markers = {
			enable = false,
		},

		icons = {
			show = {
				file = false,
				folder = false,
				folder_arrow = true,
				git = false,
			},

			glyphs = {
				default = "",
				symlink = "",
				folder = {
					default = "",
					empty = "",
					empty_open = "",
					open = "",
					symlink = "",
					symlink_open = "",
				},
				git = {
					unstaged = "[u]",
					staged = "[✓]",
					unmerged = "",
					renamed = "[r]",
					untracked = "[?]",
					deleted = "",
					ignored = "◌",
				},
			},
		},
	},
}

require("nvim-tree").setup(options)
