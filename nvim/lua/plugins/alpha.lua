return {
	"goolord/alpha-nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},

	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")
		local logo = {
			[[                                                ]],
			[[                                          _.oo. ]],
			[[                  _.u[[/;:,.         .odMMMMMM' ]],
			[[               .o888UU[[[/;:-.  .o@P^    MMM^   ]],
			[[              oN88888UU[[[/;::-.        dP^     ]],
			[[             dNMMNN888UU[[[/;:--.   .o@P^       ]],
			[[            ,MMMMMMN888UU[[/;::-. o@^           ]],
			[[            NNMMMNN888UU[[[/~.o@P^              ]],
			[[            888888888UU[[[/o@^-..               ]],
			[[           oI8888UU[[[/o@P^:--..                ]],
			[[        .@^  YUU[[[/o@^;::---..                 ]],
			[[      oMP     ^/o@P^;:::---..                   ]],
			[[   .dMMM    .o@^ ^;::---...                     ]],
			[[  dMMMMMMM@^`       `^^^^                       ]],
			[[ YMMMUP^                                        ]],
			[[  ^^                                            ]],
			[[                                                ]],
		}
		dashboard.section.header.val = logo

		dashboard.section.buttons.val = {
			dashboard.button("f", " " .. " Find file", "<D-p>"),
			dashboard.button("n", " " .. " New file", [[<cmd> ene <BAR> startinsert <cr>]]),
			dashboard.button("g", " " .. " Find text", [[<cmd> lua LazyVim.pick("live_grep")() <cr>]]),
			dashboard.button("l", "󰒲 " .. " Lazy", "<cmd> Lazy <cr>"),
			dashboard.button("q", " " .. " Quit", "<cmd> qa <cr>"),
		}
		alpha.setup(dashboard.config)
	end,
}
