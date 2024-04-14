local util = require("chromasync.util")

return function(colors)
	local p = colors.palette
	local s = colors.syntax
	local c = {}

	return util.as_fg_color({
		-- stylua: ignore start
		-- Comments
		["@comment"]         = { link = "Comment" },
		["@comment.error"]   = { link = "Comment", fg = p.red },
		["@comment.warning"] = { link = "Comment", fg = p.ylw },
		["@comment.note"]    = { link = "Comment", fg = p.grn },
		["@comment.info"]    = { link = "Comment", fg = p.cyn },
		["@comment.todo"]    = { link = "Comment", fg = p.redh },
		["@comment.hint"]    = { link = "Comment", fg = p.ylwh },

		-- Preprocessor
		["@annotation"]               = { link = "PreProc" },
		["@attribute"]                = { link = "PreProc" },
		["@constant.macro"]           = { link = "PreProc" },
		["@keyword.directive"]        = { link = "PreProc" },
		["@keyword.directive.define"] = { link = "PreProc" },

		-- Keywords
		["@keyword"]             = s.Keyword,
		["@keyword.debug"]       = { link = "@keyword" },
		["@keyword.import"]      = { link = "@keyword" },
		["@keyword.repeat"]      = { link = "@keyword" },
		["@keyword.return"]      = { link = "@keyword" },
		["@keyword.storage"]     = { link = "@keyword" },
		["@keyword.coroutine"]   = { link = "@keyword" },
		["@keyword.exception"]   = { link = "@keyword" },
		["@keyword.conditional"] = { link = "@keyword" },
		["@function.macro"]      = { link = "@keyword" },

		["@none"] = {},

		-- Data types
		["@boolean"]           = s.Boolean,
		["@number"]            = s.Number,
		["@number.float"]      = s.Number,
		["@string"]            = s.String,
		["@character"]         = s.String,
		["@character.special"] = s.String,
		["@constant"]          = s.Constant,
		["@constant.builtin"]  = s.Constant,

		-- Function
		["@function"]             = s.Function,
		["@function.call"]        = { link = "@function" },
		["@function.method"]      = { link = "@function" },
		["@function.method.call"] = { link = "@function" },
		["@function.builtin"]     = { link = "@function" },
		["@keyword.function"]     = { link = "@function" },

		-- Operator
		["@operator"]         = s.Operator,
		["@keyword.operator"] = { link = "@operator" },

		--- Punctuation
		["@punctuation.bracket"]   = s.Punctuation, -- For brackets and parens.
		["@punctuation.special"]   = s.Punctuation, -- For special symbols (e.g. `{}` in string interpolation)
		["@punctuation.delimiter"] = s.Punctuation, -- For delimiters ie: `.`
		["@markup.list"]           = s.Punctuation, -- For special punctutation that does not fall in the catagories before.
		["@markup.list.markdown"]  = s.Punctuation,


		--- Types
		["@type.builtin"] = { fg = c.blue1 },
		["@variable.member"] = { fg = c.green1 }, -- For fields.
		["@property"] = { fg = c.green1 },
		["@type"] = { link = "Type" },
		["@type.definition"] = { link = "Typedef" },
		["@type.qualifier"] = { link = "@keyword" },

		--- Identifiers
		["@variable"] = { fg = c.fg }, -- Any variable name that does not have another highlight.
		["@variable.builtin"] = { fg = c.red }, -- Variable names that are defined by the languages, like `this` or `self`.
		["@module.builtin"] = { fg = c.red }, -- Variable names that are defined by the languages, like `this` or `self`.
		["@namespace.builtin"]     = { link = "@variable.builtin" },


		["@tag"] = { link = "Label" },
		["@tag.attribute"] = { link = "@property" },
		["@tag.delimiter"] = { link = "Delimiter" },

		["@markup"] = { link = "@none" },
		["@markup.environment"] = { link = "Macro" },
		["@markup.environment.name"] = { link = "Type" },
		["@markup.link.label"] = { link = "SpecialChar" },
		["@markup.link.label.symbol"] = { link = "Identifier" },
		["@markup.raw"] = { link = "String" },
		["@markup.math"] = { link = "Special" },
		["@markup.strong"] = { bold = true },
		["@markup.emphasis"] = { italic = true },
		["@markup.strikethrough"] = { strikethrough = true },
		["@markup.underline"] = { underline = true },
		["@markup.heading"] = { link = "Title" },
		["@markup.link.url"] = { link = "Underlined" },

		--- Misc

		--- Literals
		["@string.documentation"] = { fg = c.yellow },
		["@string.regexp"] = { fg = c.blue6 }, -- For regexes.
		["@string.escape"] = { fg = c.magenta }, -- For escape characters within a string.

		--- Functions
		["@constructor"] = { fg = c.magenta }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
		["@variable.parameter"] = { fg = c.yellow }, -- For parameters of a function.
		["@variable.parameter.builtin"] = { fg = c.yellow }, -- For builtin parameters of a function, e.g. "..." or Smali's p[1-99]

		["@label"] = { fg = c.blue }, -- For labels: `label:` in C and `:label:` in Lua.

		--- Text
		-- ["@markup.raw.markdown"] = { fg = c.blue },
		["@markup.raw.markdown_inline"] = { bg = c.terminal_black, fg = c.blue },
		["@markup.link"] = { fg = c.teal },

		["@markup.list.unchecked"] = { fg = c.blue }, -- For brackets and parens.
		["@markup.list.checked"] = { fg = c.green1 }, -- For brackets and parens.

		["@diff.plus"] = { link = "DiffAdd" },
		["@diff.minus"] = { link = "DiffDelete" },
		["@diff.delta"] = { link = "DiffChange" },

		["@module"] = { link = "Include" },

		-- tsx
		["@tag.tsx"] = { fg = c.red },
		["@constructor.tsx"] = { fg = c.blue1 },
		["@tag.delimiter.tsx"] = { fg = c.blue },
		-- stylua: ignore end
	}, colors)
end
