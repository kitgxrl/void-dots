local gps = require 'nvim-gps'

function user_host()
	return vim.fn.getenv('USER') .. '@' .. vim.fn.hostname()
end

require('lualine').setup {
	options = {
		theme = 'aquarium',
		disabled_filetypes = { 'NvimTree' },
		component_separators = '~',
		section_separators = '',
		icons_enabled = false		
	},

	sections = {
		lualine_a = { { 'mode', upper = true } },
		lualine_b = { { 'branch', upper = true } },
		lualine_c = { 
			{ 'filename' },
			{ gps.get_location, condition = gps.is_available }, 
			{ 'diff' } 
		},

		lualine_x = { 
			{ user_host, upper = true }, 
			{ 'diagnostics' },
		},

		lualine_y = { { 'filetype' } },
		lualine_z = { { 'location' } }
	}
}
