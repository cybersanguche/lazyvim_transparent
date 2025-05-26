return {
	{
		"olivercederborg/poimandres.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd("colorscheme poimandres")

			local groups = {
				"Normal",
				"NormalNC",
				"NormalFloat",
				"FloatBorder",
				"StatusLine",
				"VertSplit",
				"WinSeparator",
				"SignColumn",
				"CursorLine",
				"LineNr",
				"NonText",
				"Folded",

				-- Menús flotantes y autocompletado
				"Pmenu",
				"PmenuSel",
				"PmenuSbar",
				"PmenuThumb",

				-- Telescope
				"TelescopeNormal",
				"TelescopeBorder",
				"TelescopePromptNormal",
				"TelescopePromptBorder",
				"TelescopeResultsNormal",
				"TelescopeResultsBorder",
				"TelescopePreviewNormal",
				"TelescopePreviewBorder",

				-- NvimTree
				"NvimTreeNormal",
				"NvimTreeNormalNC",
				"NvimTreeEndOfBuffer",
				"NvimTreeVertSplit",

				-- Lazy.nvim
				"LazyNormal",
				"LazyH1",
				"LazyButton",
				"LazyComment",

				-- Noice
				"NoicePopup",
				"NoicePopupBorder",
				"NoicePopupmenu",
				"NoiceCmdlinePopup",
				"NoiceCmdlinePopupBorder",

				-- Notify
				"NotifyBackground",

				-- Which-key
				"WhichKeyFloat",

				-- Alpha dashboard
				"AlphaNormal",
				"AlphaHeader",
				"AlphaButtons",
				"AlphaFooter",

				-- Mensajes de estado
				"MsgArea",
				"MsgSeparator",
			}

			for _, group in ipairs(groups) do
				vim.api.nvim_set_hl(0, group, { bg = "none" })
			end
		end,
	},
}
