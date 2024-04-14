return function(colors)
	local p = colors.palette
	local l = colors.level

	return {
		-- stylua: ignore start
		Todo          = { fg=p.blk,   bg=l.Info,  bold=true },
		TodoBgTODO    = { fg=p.blk,   bg=l.Info,  bold=true },
		TodoFgTODO    = { fg=l.Info                         },
		TodoSignTODO  = { fg=l.Info,  bg=p.bg               },

		TodoBgWARN    = { fg=p.bg,    bg=l.Warn,  bold=true },
		TodoFgWARN    = { fg=l.Warn                         },
		TodoSignWARN  = { fg=l.Warn,  bg=p.bg               },

		TodoBgNOTE    = { fg=p.bg,    bg=l.Note,  bold=true },
		TodoFgNOTE    = { fg=l.Note                         },
		TodoSignNOTE  = { fg=l.Note,  bg=p.bg               },

		TodoBgFIX     = { fg=p.wht,   bg=l.Error, bold=true },
		TodoFgFIX     = { fg=l.Error                        },
		TodoSignFIX   = { fg=l.Error, bg=p.bg               },

		TodoBgHACK    = { fg=p.bg,    bg=l.Warn, bold=true  },
		TodoFgHACK    = { fg=l.Warn                         },
		TodoSignHACK  = { fg=l.Warn,  bg=p.bg               },

		TodoBgTEST    = { fg=p.bg,    bg=p.magh, bold=true  },
		TodoFgTEST    = { fg=p.magh                         },
		TodoSignTEST  = { fg=p.magh,  bg=p.bg               },

		TodoBgPERF    = { fg=p.bg,    bg=p.magh, bold=true  },
		TodoFgPERF    = { fg=p.magh                         },
		TodoSignPERF  = { fg=p.magh,  bg=p.bg               },
		-- stylua: ignore end
}
end
