local colors = require("seoul256/colors")

local M = {}

-- Syntax highlight groups
-- Type `:h syntax` for more informations
M.syntax = {
    Boolean = { fg = colors.dark_blue, bg = colors.none },
    Character = { fg = colors.none, bg = colors.none },
    Comment = { fg = colors.light_black, bg = colors.none },
    Conditional = { fg = colors.dark_blue, bg = colors.none },
    Constant = { fg = colors.dark_red, bg = colors.none },
    Debug = { fg = colors.light_cyan, bg = colors.none },
    Define = { fg = colors.light_magenta, bg = colors.none },
    Delimiter = { fg = colors.light_magenta, bg = colors.none },
    Error = { fg = colors.background, bg = colors.dark_red },
    Exception = { fg = colors.dark_red, bg = colors.none },
    Float = { fg = colors.dark_red, bg = colors.none },
    Function = { fg = colors.light_blue, bg = colors.none },
    Identifier = { fg = colors.dark_blue, bg = colors.none },
    Ignore = { fg = colors.background, bg = colors.none },
    Include = { fg = colors.light_magenta, bg = colors.none },
    Keyword = { fg = colors.dark_blue, bg = colors.none },
    Label = { fg = colors.dark_blue, bg = colors.none },
    Macro = { fg = colors.light_magenta, bg = colors.none },
    Number = { fg = colors.none, bg = colors.none },
    Operator = { fg = colors.dark_blue, bg = colors.none },
    PreCondit = { fg = colors.light_magenta, bg = colors.none },
    PreProc = { fg = colors.light_magenta, bg = colors.none },
    Repeat = {},
    Special = { fg = colors.dark_blue },
    SpecialChar = { fg = colors.light_cyan, bg = colors.none },
    SpecialComment = { fg = colors.light_cyan, bg = colors.none },
    Statement = { fg = colors.light_cyan, bg = colors.none },
    StorageClass = { fg = colors.light_magenta, bg = colors.none },
    String = { fg = colors.extra_orange, bg = colors.none },
    Structure = { fg = colors.light_magenta, bg = colors.none },
    Tag = { fg = colors.light_cyan, bg = colors.none },
    Todo = { fg = colors.extra_yellow, bg = colors.none },
    Type = { fg = colors.light_magenta, bg = colors.none },
    Typedef = { fg = colors.light_magenta, bg = colors.none },
    Underlined = { fg = colors.none, bg = colors.none, style = "underline" },
    WinSeparator = { fg = colors.light_white, bg = colors.none },
}

-- Editor highlight groups
-- Type `:h highlight-groups` for more informations
M.editor = {
    ColorColumn = {},
    Conceal = {},
    Cursor = { fg = colors.background, bg = colors.foreground },
    lCursor = {},
    CursorColumn = {},
    CursorIM = {},
    CursorLine = { fg = colors.none, bg = colors.extra_white },
    CursorLineNr = { fg = colors.foreground, bg = colors.extra_white },
    DiffAdd = { fg = colors.light_green, bg = colors.none },
    DiffChange = { fg = colors.extra_yellow, bg = colors.none },
    DiffDelete = { fg = colors.dark_red, bg = colors.none },
    DiffText = { fg = colors.extra_yellow, bg = colors.none },
    Directory = { fg = colors.none, bg = colors.none },
    EndOfBuffer = { fg = colors.foreground, bg = colors.none },
    ErrorMsg = {},
    FoldColumn = { fg = colors.light_magenta, bg=colors.none },
    Folded = { fg = colors.none, bg = colors.none },
    IncSearch = { fg = colors.background, bg = colors.light_magenta },
    LineNr = { fg = colors.dark_white, bg = colors.background },
    MatchParen = { fg = colors.none, bg = colors.dark_white },
    ModeMsg = { fg = colors.none, bg = colors.none },
    MoreMsg = { fg = colors.none, bg = colors.none },
    MsgArea = {},
    MsgSeparator = {},
    NonText = {},
    Normal = { fg = colors.foreground, bg = colors.background },
    NormalFloat = {},
    NormalNC = {},
    Pmenu = { fg = colors.light_magenta, bg = colors.extra_white },
    PmenuSbar = { fg = colors.light_magenta, bg = colors.extra_white },
    PmenuSel = { fg = colors.none, bg = colors.dark_white },
    PmenuThumb = { fg = colors.light_magenta, bg = colors.extra_white },
    Question = { fg = colors.light_green, bg = colors.none },
    QuickFixLine = {},
    Search = { fg = colors.background, bg = colors.light_magenta },
    SignColumn = { fg = colors.light_magenta, bg = colors.none },
    SpecialKey = { fg = colors.light_cyan, bg = colors.none },
    SpellBad = { fg = colors.dark_red, bg = colors.extra_white, style = "underline" },
    SpellCap = { fg = colors.light_yellow, bg = colors.extra_white, style = "underline" },

    SpellLocal = { fg = colors.light_yellow, bg = colors.extra_white, style = "underline" },

    SpellRare = { fg = colors.light_yellow, bg = colors.extra_white, style = "underline" },
    StatusLine = { fg = colors.light_magenta, bg = colors.dark_white },
    StatusLineNC = { fg = colors.extra_white, bg = colors.none, style = "underline" },
    Substitute = {},
    TabLineFill = { fg = colors.light_magenta, bg = colors.extra_white },
    Tabline = { fg = colors.light_magenta, bg = colors.extra_white },
    TablineSel = { fg = colors.none, bg = colors.extra_white },
    TermCursor = {},
    TermCursorNC = {},
    Title = { fg = colors.none, bg = colors.none },
    VertSplit = { fg = colors.extra_white, bg = colors.none },
    Visual = { fg = colors.none, bg = colors.light_white },
    VisualNOS = { fg = colors.none, bg = colors.light_white },
    WarningMsg = { fg = colors.background, bg = colors.light_yellow },
    Whitespace = {},
    WildMenu = { fg = colors.light_magenta, bg = colors.none },

    -- GUI only
    Menu = {},
    Scrollbar = {},
    Tooltip = {},
}

-- TreeSitter highlight groups
-- Type `:h nvim-treesitter-highlights` for more informations
M.treesitter = {
    TSAttribute = { fg = colors.dark_yellow },
    TSBoolean = { fg = colors.dark_yellow },
    TSCharacter = { fg = colors.dark_yellow },
    TSComment = { fg = colors.light_black },
    TSConditional = { fg = colors.dark_magenta },
    TSConstBuiltin = { fg = colors.dark_blue },
    TSConstMacro = { fg = colors.dark_blue },
    TSConstant = { fg = colors.dark_yellow },
    TSConstructor = { fg = colors.light_blue },
    TSDanger = {}, -- TODO
    TSEmphasis = { fg = colors.dark_blue },
    TSEnvironment = {}, -- TODO
    TSEnvironmentName = {}, -- TODO
    TSError = { fg = colors.dark_red },
    TSException = { fg = colors.dark_yellow },
    TSField = { fg = colors.light_black },
    TSFloat = { fg = colors.dark_red },
    TSFuncBuiltin = { fg = colors.dark_cyan },
    TSFuncMacro = { fg = colors.dark_blue },
    TSFunction = { fg = colors.dark_blue },
    TSInclude = { fg = colors.dark_cyan },
    TSKeyword = { fg = colors.dark_blue },
    TSKeywordFunction = { fg = colors.dark_blue },
    TSKeywordOperator = {}, -- TODO
    TSKeywordReturn = {}, -- TODO
    TSLabel = { fg = colors.dark_red },
    TSLiteral = { fg = colors.foreground },
    TSMath = {}, -- TODO
    TSMethod = { fg = colors.dark_blue },
    TSNamespace = { fg = colors.dark_yellow },
    TSNone = {}, -- TODO
    TSNote = {}, -- TODO
    TSNumber = { fg = colors.dark_yellow },
    TSOperator = { fg = colors.dark_cyan },
    TSParameter = { fg = colors.dark_blue },
    TSParameterReference = { fg = colors.dark_blue },
    TSProperty = { fg = colors.dark_blue },
    TSPunctBracket = { fg = colors.dark_cyan },
    TSPunctDelimiter = { fg = colors.dark_cyan },
    TSPunctSpecial = { fg = colors.dark_cyan },
    TSRepeat = { fg = colors.dark_magenta },
    TSStrike = {}, -- TODO
    TSString = { fg = colors.extra_orange, bg = colors.none },
    TSStringEscape = { fg = colors.extra_orange, bg = colors.none },
    TSStringRegex = { fg = colors.extra_orange, bg = colors.none },
    TSStringSpecial = {}, -- TODO
    TSStrong = {}, -- TODO
    TSSymbol = { fg = colors.dark_yellow },
    TSTag = { fg = colors.dark_red },
    TSTagAttribute = {}, -- TODO
    TSTagDelimiter = { fg = colors.dark_yellow },
    TSText = { fg = colors.foreground },
    TSTextReference = { fg = colors.dark_yellow }, -- FIXME ???
    TSTitle = { fg = colors.dark_blue, bg = colors.none, style = "bold" },
    TSType = { fg = colors.dark_blue },
    TSTypeBuiltin = { fg = colors.dark_blue },
    TSURI = { fg = colors.dark_blue },
    TSUnderline = { fg = colors.foreground, bg = colors.none, style = "underline" },
    TSVariable = { fg = colors.light_blue },
    TSVariableBuiltin = { fg = colors.light_blue },
    TSWarning = {}, -- TODO
}

-- Lsp highlight groups
-- Type `:h lsp-highlight` for more informations
M.lsp = {
    LspCodeLens = {}, -- TODO
    LspDiagnosticsDefaultError = { fg = colors.dark_red },
    LspDiagnosticsDefaultHint = { fg = colors.dark_magenta },
    LspDiagnosticsDefaultInformation = { fg = colors.dark_blue },
    LspDiagnosticsDefaultWarning = { fg = colors.dark_yellow },
    LspDiagnosticsFloatingError = { fg = colors.dark_red },
    LspDiagnosticsFloatingHint = { fg = colors.dark_magenta },
    LspDiagnosticsFloatingInformation = { fg = colors.dark_blue },
    LspDiagnosticsFloatingWarning = { fg = colors.dark_yellow },
    LspDiagnosticsSignError = { fg = colors.dark_red },
    LspDiagnosticsSignHint = { fg = colors.dark_magenta },
    LspDiagnosticsSignInformation = { fg = colors.dark_blue },
    LspDiagnosticsSignWarning = { fg = colors.dark_yellow },
    LspDiagnosticsUnderlineError = { style = "undercurl", sp = colors.dark_red },
    LspDiagnosticsUnderlineHint = { style = "undercurl", sp = colors.dark_blue },
    LspDiagnosticsUnderlineInformation = { style = "undercurl", sp = colors.dark_blue },
    LspDiagnosticsUnderlineWarning = { style = "undercurl", sp = colors.dark_yellow },
    LspDiagnosticsVirtualTextError = { fg = colors.dark_red },
    LspDiagnosticsVirtualTextHint = { fg = colors.dark_magenta },
    LspDiagnosticsVirtualTextInformation = { fg = colors.dark_blue },
    LspDiagnosticsVirtualTextWarning = { fg = colors.dark_yellow },
    LspReferenceRead = { fg = colors.light_blue, bg = colors.dark_yellow },
    LspReferenceText = { fg = colors.light_blue, bg = colors.dark_yellow },
    LspReferenceWrite = { fg = colors.light_blue, bg = colors.dark_yellow },
}

-- Plugins highlight groups
M.plugins = {
    LspTrouble = {
        LspTroubleText = { fg = colors.foreground },
        LspTroubleCount = { fg = colors.dark_magenta, bg = colors.light_black },
        LspTroubleNormal = { fg = colors.foreground, bg = colors.dark_white },
    },
    Diff = {
        diffAdded = { fg = colors.dark_green },
        diffRemoved = { fg = colors.dark_red },
        diffChanged = { fg = colors.dark_yellow },
        diffOldFile = { fg = colors.dark_yellow },
        diffNewFile = { fg = colors.dark_yellow },
        diffFile = { fg = colors.dark_blue },
        diffLine = { fg = colors.dark_green },
        diffIndexLine = { fg = colors.dark_magenta },
    },

    Neogit = {
        NeogitBranch = { fg = colors.dark_blue },
        NeogitRemote = { fg = colors.dark_magenta },
        NeogitHunkHeader = { fg = colors.foreground, bg = colors.dark_yellow },
        NeogitHunkHeaderHighlight = { fg = colors.dark_blue, bg = colors.contrast },
        NeogitDiffContextHighlight = { fg = colors.foreground, bg = colors.contrast },
        NeogitDiffDeleteHighlight = { fg = colors.dark_red },
        NeogitDiffAddHighlight = { fg = colors.dark_green },
    },

    GitGutter = {
        GitGutterAdd = { fg = colors.dark_green },
        GitGutterChange = { fg = colors.dark_yellow },
        GitGutterDelete = { fg = colors.dark_red },
    },

    GitSigns = {
        GitSignsAdd = { fg = colors.dark_green },
        GitSignsAddNr = { fg = colors.dark_green },
        GitSignsAddLn = { fg = colors.dark_green },
        GitSignsChange = { fg = colors.dark_yellow },
        GitSignsChangeNr = { fg = colors.dark_yellow },
        GitSignsChangeLn = { fg = colors.dark_yellow },
        GitSignsDelete = { fg = colors.dark_red },
        GitSignsDeleteNr = { fg = colors.dark_red },
        GitSignsDeleteLn = { fg = colors.dark_red },
    },

    Telescope = {
        TelescopeBorder = { fg = colors.light_white },
        TelescopeTitle = { fg = colors.dark_blue },
        TelescopePromptNormal = { fg = colors.foreground },
        TelescopePromptPrefix = { fg = colors.dark_blue },
        TelescopeSelectionCaret = { fg = colors.background },
        TelescopeSelection = { fg = colors.foreground, bg = colors.light_white },
        TelescopeMatching = { fg = colors.light_green },
        TelescopeResultsComment = { fg = colors.dark_blue },
        TelescopeNormal = { fg = colors.light_blue, bg = colors.background },
    },

    NvimTree = {
        NvimTreeNormal = { fg = colors.foreground, bg = colors.dark_white },
        NvimTreeRootFolder = { fg = colors.dark_blue, style = "bold" },
        NvimTreeGitDirty = { fg = colors.dark_yellow },
        NvimTreeGitNew = { fg = colors.dark_green },
        NvimTreeImageFile = { fg = colors.dark_yellow },
        NvimTreeExecFile = { fg = colors.dark_green },
        NvimTreeSpecialFile = { fg = colors.dark_magenta, style = "underline" },
        NvimTreeFolderName = { fg = colors.dark_blue },
        NvimTreeEmptyFolderName = { fg = colors.dark_white },
        NvimTreeFolderIcon = { fg = colors.light_blue },
        NvimTreeIndentMarker = { fg = colors.dark_white },

        -- TODO not sure this goes here
        LspDiagnosticsError = { fg = colors.dark_red },
        LspDiagnosticsWarning = { fg = colors.dark_yellow },
        LspDiagnosticsInformation = { fg = colors.dark_blue },
        LspDiagnosticsHint = { fg = colors.dark_magenta },
    },

    WhichKey = {
        WhichKey = { fg = colors.light_blue, style = "bold" },
        WhichKeyGroup = { fg = colors.foreground },
        WhichKeyDesc = { fg = colors.dark_blue, style = "italic" },
        WhichKeySeperator = { fg = colors.foreground },
        WhichKeyFloating = { bg = colors.light_blue },
        WhichKeyFloat = { bg = colors.light_blue },
    },

    LspSaga = {
        DiagnosticError = { fg = colors.dark_red },
        DiagnosticWarning = { fg = colors.dark_yellow },
        DiagnosticInformation = { fg = colors.dark_blue },
        DiagnosticHint = { fg = colors.dark_magenta },
        DiagnosticTruncateLine = { fg = colors.foreground },
        LspFloatWinNormal = { bg = colors.dark_white },
        LspFloatWinBorder = { fg = colors.dark_magenta },
        LspSagaBorderTitle = { fg = colors.dark_cyan },
        LspSagaHoverBorder = { fg = colors.dark_blue },
        LspSagaRenameBorder = { fg = colors.dark_green },
        LspSagaDefPreviewBorder = { fg = colors.dark_green },
        LspSagaCodeActionBorder = { fg = colors.dark_blue },
        LspSagaFinderdark_white = { fg = colors.dark_green },
        LspSagaCodeActionTitle = { fg = colors.dark_blue },
        LspSagaCodeActionContent = { fg = colors.dark_magenta },
        LspSagaSignatureHelpBorder = { fg = colors.light_red },
        ReferencesCount = { fg = colors.dark_magenta },
        DefinitionCount = { fg = colors.dark_magenta },
        DefinitionIcon = { fg = colors.dark_blue },
        ReferencesIcon = { fg = colors.dark_blue },
        TargetWord = { fg = colors.dark_cyan },
    },

    BufferLine = {
        BufferLineIndicatorSelected = { fg = colors.light_blue },
        BufferLineFill = { bg = colors.dark_white_alt },
    },

    Sneak = {
        Sneak = { fg = colors.dark_white, bg = colors.light_blue },
        SneakScope = { bg = colors.dark_white },
    },

    IndentBlankline = {
        IndentBlanklineChar = { fg = colors.dark_white },
        IndentBlanklineContextChar = { fg = colors.dark_white },
    },

    NvimDap = {
        DapBreakpoint = { fg = colors.dark_red },
        DapStopped = { fg = colors.dark_green },
    },

    DashboardNvim = {
        DashboardCenter = { fg = colors.dark_cyan },
        DashboardFooter = { fg = colors.dark_green, style = "italic" },
        DashboardHeader = { fg = colors.dark_red },
        DashboardShortCut = { fg = colors.dark_blue },
    },
}

-- Options:

if vim.g.seoul256_disable_background == true then
    M.editor.Normal = { fg = colors.foreground, bg = colors.none }
    M.editor.SignColumn = { fg = colors.foreground, bg = colors.none }
    M.editor.NormalFloat = { fg = colors.foreground, bg = colors.none }
    M.editor.Pmenu = { fg = colors.foreground, bg = colors.none }
    M.plugins.Telescope.TelescopeNormal = { fg = colors.foreground, bg = colors.none }
end

if vim.g.seoul256_italic_comments == true then
    M.syntax.Comment = { fg = colors.dark_green, bg = colors.none, style = "italic" }
    M.treesitter.TSComment = { fg = colors.dark_green, bg = colors.none, style = "italic" }
end

if vim.g.seoul256_italic_keywords == true then
    M.syntax.Conditional = { fg = colors.dark_magenta, bg = colors.none, style = "italic" }
    M.syntax.Keyword = { fg = colors.dark_magenta, bg = colors.none, style = "italic" }
    M.syntax.Repeat = { fg = colors.dark_magenta, bg = colors.none, style = "italic" }
    M.treesitter.TSConditional = { fg = colors.dark_magenta, style = "italic" }
    M.treesitter.TSKeyword = { fg = colors.dark_magenta, style = "italic" }
    M.treesitter.TSRepeat = { fg = colors.dark_magenta, style = "italic" }
    M.treesitter.TSKeywordFunction = { fg = colors.dark_magenta, style = "italic" }
end

if vim.g.seoul256_italic_functions == true then
    M.syntax.Function = { fg = colors.dark_blue, bg = colors.none, style = "italic" }
    M.treesitter.TSFunction = { fg = colors.dark_blue, style = "italic" }
    M.treesitter.TSMethod = { fg = colors.dark_blue, style = "italic" }
    M.treesitter.TSFuncBuiltin = { fg = colors.dark_cyan, style = "italic" }
end

if vim.g.seoul256_italic_variables == true then
    M.syntax.Identifier = { fg = colors.light_red, bg = colors.none, style = "italic" }
    M.treesitter.TSVariable = { fg = colors.light_blue, style = "italic" }
    M.treesitter.TSVariableBuiltin = { fg = colors.light_blue, style = "italic" }
end

if vim.g.seoul256_borders == true then
    M.editor.VertSplit = { fg = colors.dark_white }
end

if vim.g.seoul256_hl_current_line == true then
    M.editor.CursorLine = { fg = colors.none, bg = colors.light_black }
end

return M
