local hl = vim.api.nvim_set_hl
local colors = {
    keywords  = "#ddc9c0",
    types     = "#8ecae6",
    constants = "#ef8d67",
    variables = "#ffffff",
    macros    = "#86e1fc",
    functions = "#a4c3b2",
    strings   = "#c3e88d",
}
return {
    c_hl = function()
        hl(0, "@keyword.import", {link = "@keyword"})
        hl(0, "@keyword.modifier", {link = "@keyword"})
        hl(0, "@keyword.type", {link = "@keyword"})
        hl(0, "@keyword.repeat", {link = "@keyword"})
        hl(0, "@keyword.conditional", {link = "@keyword"})
        hl(0, "@keyword.directive.define", {link = "@keyword"})

        hl(0, "@type.builtin", {link = "@type"})
        hl(0, "@lsp.type.macro", {link = "@type"})
        hl(0, "@type.definition", {link = "@type"})

        hl(0, "@lsp.typemod.macro.globalScope.c", {link = "@constant"})
        hl(0, "@number", {link = "@constant"})
        hl(0, "@constant.builtin", {link = "@constant"})

        hl(0, "@property", {link = "@variable"})
        hl(0, "@variable.parameter", {link = "@variable"})

        hl(0, "@function.macro", {link = "@constant.macro"})

        hl(0, "@keyword",  {fg = colors.keywords, force = true})
        hl(0, "@type",     {fg = colors.types, force = true})
        hl(0, "@constant", {fg = colors.constants, force = true})
        hl(0, "@variable", {fg = colors.variables, force = true})
        hl(0, "@constant.macro", {fg = colors.macros, force = true})
        hl(0, "@function", {fg = colors.functions, force = true})
        hl(0, "@string", {fg = colors.strings, force = true})
    end,
}
