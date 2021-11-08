local lush = require("lush")
local hsl = lush.hsl
local hsluv = lush.hsluv
local colors = require("hl_themes.aquarium")

local theme = lush(function()
	return {
		SpecialKey                             { fg="#313449", }, -- SpecialKey     xxx ctermfg=81 guifg=#313449
		packerWorking                          { SpecialKey }, -- packerWorking  xxx links to SpecialKey
		EndOfBuffer                            { fg="#20202a", }, -- EndOfBuffer    xxx guifg=#20202A
		TermCursor                             { gui="reverse", }, -- TermCursor     xxx cterm=reverse gui=reverse
		NonText                                { gui="bold", fg="#313449", }, -- NonText        xxx ctermfg=12 gui=bold guifg=#313449
		Whitespace                             { NonText }, -- Whitespace     xxx links to NonText
		TelescopePreviewHyphen                 { NonText }, -- TelescopePreviewHyphen xxx links to NonText
		TelescopeResultsDiffUntracked          { NonText }, -- TelescopeResultsDiffUntracked xxx links to NonText
		Directory                              { fg="#a3b8ef", }, -- Directory      xxx ctermfg=159 guifg=#a3b8ef
		TroubleFile                            { Directory }, -- TroubleFile    xxx links to Directory
		TelescopePreviewDirectory              { Directory }, -- TelescopePreviewDirectory xxx links to Directory
		TelescopePreviewDate                   { Directory }, -- TelescopePreviewDate xxx links to Directory
		ErrorMsg                               { bg="#20202a", fg="#ebb9b9", }, -- ErrorMsg       xxx ctermfg=15 ctermbg=1 guifg=#ebb9b9 guibg=#20202A
		NvimInvalidSpacing                     { ErrorMsg }, -- NvimInvalidSpacing xxx links to ErrorMsg
		packerFail                             { ErrorMsg }, -- packerFail     xxx links to ErrorMsg
		packerStatusFail                       { ErrorMsg }, -- packerStatusFail xxx links to ErrorMsg
		IncSearch                              { bg="#e8cca7", fg="#2c2e3e", }, -- IncSearch      xxx cterm=reverse guifg=#2c2e3e guibg=#e8cca7
		Search                                 { bg="#e6dfb8", fg="#2c2e3e", }, -- Search         xxx ctermfg=0 ctermbg=11 guifg=#2c2e3e guibg=#e6dfb8
		TroublePreview                         { Search }, -- TroublePreview xxx links to Search
		TelescopePreviewMatch                  { Search }, -- TelescopePreviewMatch xxx links to Search
		MoreMsg                                { gui="bold", fg="#b1dba4", }, -- MoreMsg        xxx ctermfg=121 gui=bold guifg=#b1dba4
		ModeMsg                                { gui="bold", fg="#b1dba4", }, -- ModeMsg        xxx cterm=bold gui=bold guifg=#b1dba4
		LineNr                                 { bg="#none", fg="#484852", }, -- LineNr         xxx ctermfg=11 guifg=#484852 guibg=#NONE
		TroubleIndent                          { LineNr }, -- TroubleIndent  xxx links to LineNr
		TroubleLocation                        { LineNr }, -- TroubleLocation xxx links to LineNr
		TelescopeResultsLineNr                 { LineNr }, -- TelescopeResultsLineNr xxx links to LineNr
		CursorLineNr                           { bg="#none", gui="bold", fg="#ced4df", }, -- CursorLineNr   xxx ctermfg=11 gui=bold guifg=#ced4df guibg=#NONE
		TroubleFoldIcon                        { CursorLineNr }, -- TroubleFoldIcon xxx links to CursorLineNr
		Question                               { gui="bold", fg="#a3b8ef", }, -- Question       xxx ctermfg=121 gui=bold guifg=#a3b8ef
		packerSuccess                          { Question }, -- packerSuccess  xxx links to Question
		StatusLine                             { bg="#none", fg="#63718b", }, -- StatusLine     xxx cterm=bold,reverse guifg=#63718b guibg=#NONE
		MsgSeparator                           { StatusLine }, -- MsgSeparator   xxx links to StatusLine
		StatusLineNC                           { bg="#none", gui="underline", fg="#3e3e48", }, -- StatusLineNC   xxx cterm=reverse gui=underline guifg=#3e3e48 guibg=#NONE
		VertSplit                              { bg="#none", fg="#34343e", }, -- VertSplit      xxx cterm=reverse guifg=#34343e guibg=#NONE
		Title                                  { fg="#a3b8ef", }, -- Title          xxx ctermfg=225 guifg=#a3b8ef
		TSTitle                                { Title }, -- TSTitle        xxx links to Title
		Visual                                 { bg="#3d4059", }, -- Visual         xxx ctermbg=242 guibg=#3D4059
		TelescopeSelection                     { Visual }, -- TelescopeSelection xxx links to Visual
		TelescopePreviewLine                   { Visual }, -- TelescopePreviewLine xxx links to Visual
		WarningMsg                             { fg="#ebb9b9", }, -- WarningMsg     xxx ctermfg=224 guifg=#ebb9b9
		TSDanger                               { WarningMsg }, -- TSDanger       xxx links to WarningMsg
		packerBreakingChange                   { WarningMsg }, -- packerBreakingChange xxx links to WarningMsg
		WildMenu                               { bg="#e6dfb8", fg="#ebb9b9", }, -- WildMenu       xxx ctermfg=0 ctermbg=11 guifg=#ebb9b9 guibg=#e6dfb8
		Folded                                 { bg="#2c2e3e", fg="#313449", }, -- Folded         xxx ctermfg=14 ctermbg=242 guifg=#313449 guibg=#2c2e3e
		FoldColumn                             { bg="#20202a", fg="#b8dceb", }, -- FoldColumn     xxx ctermfg=14 ctermbg=242 guifg=#b8dceb guibg=#20202A
		DiffAdd                                { bg="none", fg="#bccaeb", }, -- DiffAdd        xxx ctermbg=4 guifg=#BCCAEB guibg=none
		TelescopeResultsDiffAdd                { DiffAdd }, -- TelescopeResultsDiffAdd xxx links to DiffAdd
		DiffChange                             { bg="none", fg="#4e4e58", }, -- DiffChange     xxx ctermbg=5 guifg=#4e4e58 guibg=none
		TelescopeResultsDiffChange             { DiffChange }, -- TelescopeResultsDiffChange xxx links to DiffChange
		GitSignsChange                         { DiffChange }, -- GitSignsChange xxx links to DiffChange
		DiffDelete                             { bg="#2c2e3e", gui="bold", fg="#ebb9b9", }, -- DiffDelete     xxx ctermfg=12 ctermbg=6 gui=bold guifg=#ebb9b9 guibg=#2c2e3e
		TelescopeResultsDiffDelete             { DiffDelete }, -- TelescopeResultsDiffDelete xxx links to DiffDelete
		DiffText                               { bg="#2c2e3e", gui="bold", fg="#a3b8ef", }, -- DiffText       xxx cterm=bold ctermbg=9 gui=bold guifg=#a3b8ef guibg=#2c2e3e
		SignColumn                             { bg="#none", fg="#313449", }, -- SignColumn     xxx ctermfg=14 ctermbg=242 guifg=#313449 guibg=#NONE
		Conceal                                { bg="#20202a", fg="#a3b8ef", }, -- Conceal        xxx ctermfg=7 ctermbg=242 guifg=#a3b8ef guibg=#20202A
		SpellBad                               { sp="#ebb9b9", gui="undercurl", }, -- SpellBad       xxx ctermbg=9 gui=undercurl guisp=#ebb9b9
		SpellCap                               { sp="#a3b8ef", gui="undercurl", }, -- SpellCap       xxx ctermbg=12 gui=undercurl guisp=#a3b8ef
		SpellRare                              { sp="#f6bbe7", gui="undercurl", }, -- SpellRare      xxx ctermbg=13 gui=undercurl guisp=#f6bbe7
		SpellLocal                             { sp="#b8dceb", gui="undercurl", }, -- SpellLocal     xxx ctermbg=14 gui=undercurl guisp=#b8dceb
		Pmenu                                  { bg="#2a2a34", fg="#ced4df", }, -- Pmenu          xxx ctermfg=0 ctermbg=13 guifg=#ced4df guibg=#2a2a34
		PmenuSel                               { bg="#ebb9b9", fg="#2c2e3e", }, -- PmenuSel       xxx ctermfg=242 ctermbg=0 guifg=#2c2e3e guibg=#ebb9b9
		PmenuSbar                              { bg="#34343e", }, -- PmenuSbar      xxx ctermbg=248 guibg=#34343e
		PmenuThumb                             { bg="#bccaeb", }, -- PmenuThumb     xxx ctermbg=15 guibg=#BCCAEB
		TabLine                                { bg="#2c2e3e", fg="#313449", }, -- TabLine        xxx cterm=underline ctermfg=15 ctermbg=242 guifg=#313449 guibg=#2c2e3e
		TabLineSel                             { bg="#2c2e3e", fg="#b1dba4", }, -- TabLineSel     xxx cterm=bold guifg=#b1dba4 guibg=#2c2e3e
		TroubleCount                           { TabLineSel }, -- TroubleCount   xxx links to TabLineSel
		TabLineFill                            { bg="#2c2e3e", fg="#313449", }, -- TabLineFill    xxx cterm=reverse guifg=#313449 guibg=#2c2e3e
		CursorColumn                           { bg="#2c2e3e", }, -- CursorColumn   xxx ctermbg=242 guibg=#2c2e3e
		NvimTreeCursorColumn                   { CursorColumn }, -- NvimTreeCursorColumn xxx links to CursorColumn
		ColorColumn                            { bg="#2c2e3e", }, -- ColorColumn    xxx ctermbg=1 guibg=#2c2e3e
		MatchBackground                        { ColorColumn }, -- MatchBackground xxx links to ColorColumn
		QuickFixLine                           { bg="#2c2e3e", }, -- QuickFixLine   xxx guibg=#2c2e3e
		NormalFloat                            { bg="#2a2a34", }, -- NormalFloat    xxx guibg=#2a2a34
		FloatBorder                            { fg="#cddbf9", }, -- FloatBorder    xxx guifg=#CDDBF9
		RedrawDebugNormal                      { gui="reverse", }, -- RedrawDebugNormal xxx cterm=reverse gui=reverse
		RedrawDebugClear                       { bg="yellow", }, -- RedrawDebugClear xxx ctermbg=11 guibg=Yellow
		RedrawDebugComposed                    { bg="green", }, -- RedrawDebugComposed xxx ctermbg=10 guibg=Green
		RedrawDebugRecompose                   { bg="red", }, -- RedrawDebugRecompose xxx ctermbg=9 guibg=Red
		Cursor                                 { bg="#ced4df", fg="#20202a", }, -- Cursor         xxx guifg=#20202A guibg=#ced4df
		LightspeedCursor                       { Cursor }, -- LightspeedCursor xxx links to Cursor
		lCursor                                { bg="fg", fg="bg", }, -- lCursor        xxx guifg=bg guibg=fg
		Normal                                 { bg="#20202a", fg="#ced4df", }, -- Normal         xxx guifg=#ced4df guibg=#20202A
		NvimSpacing                            { Normal }, -- NvimSpacing    xxx links to Normal
		TroubleNormal                          { Normal }, -- TroubleNormal  xxx links to Normal
		TroubleText                            { Normal }, -- TroubleText    xxx links to Normal
		NvimTreePopup                          { Normal }, -- NvimTreePopup  xxx links to Normal
		TelescopeNormal                        { Normal }, -- TelescopeNormal xxx links to Normal
		TelescopePreviewNormal                 { Normal }, -- TelescopePreviewNormal xxx links to Normal
		Substitute                             { bg="#e6dfb8", fg="#2c2e3e", }, -- Substitute     xxx guifg=#2c2e3e guibg=#e6dfb8
		FloatShadow                            { bg="black", blend="80", }, -- FloatShadow    xxx guibg=Black blend=80
		FloatShadowThrough                     { bg="black", blend="100", }, -- FloatShadowThrough xxx guibg=Black blend=100
		MatchParen                             { bg="#313449", }, -- MatchParen     xxx ctermbg=6 guibg=#313449
		MatchParenCur                          { MatchParen }, -- MatchParenCur  xxx links to MatchParen
		MatchWord                              { MatchParen }, -- MatchWord      xxx links to MatchParen
		NvimInternalError                      { bg=colors.red, fg=colors.black, }, -- NvimInternalError xxx ctermfg=9 ctermbg=9 guifg=#ebb9b9 guibg=Red
		NvimFigureBrace                        { NvimInternalError }, -- NvimFigureBrace xxx links to NvimInternalError
		NvimSingleQuotedUnknownEscape          { NvimInternalError }, -- NvimSingleQuotedUnknownEscape xxx links to NvimInternalError
		NvimInvalidSingleQuotedUnknownEscape   { NvimInternalError }, -- NvimInvalidSingleQuotedUnknownEscape xxx links to NvimInternalError
		Operator                               { fg="#ced4df", }, -- Operator       xxx guifg=#ced4df
		NvimAssignment                         { Operator }, -- NvimAssignment xxx links to Operator
		NvimOperator                           { Operator }, -- NvimOperator   xxx links to Operator
		TSOperator                             { Operator }, -- TSOperator     xxx links to Operator
		TelescopeResultsOperator               { Operator }, -- TelescopeResultsOperator xxx links to Operator
		luaIn                                  { Operator }, -- luaIn          xxx links to Operator
		luaOperator                            { Operator }, -- luaOperator    xxx links to Operator
		Delimiter                              { fg="#eac1c1", }, -- Delimiter      xxx guifg=#eAc1c1
		NvimParenthesis                        { Delimiter }, -- NvimParenthesis xxx links to Delimiter
		NvimColon                              { Delimiter }, -- NvimColon      xxx links to Delimiter
		NvimComma                              { Delimiter }, -- NvimComma      xxx links to Delimiter
		NvimArrow                              { Delimiter }, -- NvimArrow      xxx links to Delimiter
		TSPunctDelimiter                       { Delimiter }, -- TSPunctDelimiter xxx links to Delimiter
		TSPunctBracket                         { Delimiter }, -- TSPunctBracket xxx links to Delimiter
		TSPunctSpecial                         { Delimiter }, -- TSPunctSpecial xxx links to Delimiter
		TSTagDelimiter                         { Delimiter }, -- TSTagDelimiter xxx links to Delimiter
		Identifier                             { fg="#ebb9b9", }, -- Identifier     xxx cterm=bold ctermfg=14 guifg=#ebb9b9
		NvimIdentifier                         { Identifier }, -- NvimIdentifier xxx links to Identifier
		TSParameter                            { Identifier }, -- TSParameter    xxx links to Identifier
		TSField                                { Identifier }, -- TSField        xxx links to Identifier
		TSProperty                             { Identifier }, -- TSProperty     xxx links to Identifier
		TSSymbol                               { Identifier }, -- TSSymbol       xxx links to Identifier
		TelescopePromptPrefix                  { Identifier }, -- TelescopePromptPrefix xxx links to Identifier
		TelescopeResultsIdentifier             { Identifier }, -- TelescopeResultsIdentifier xxx links to Identifier
		luaFunc                                { Identifier }, -- luaFunc        xxx links to Identifier
		packerHash                             { Identifier }, -- packerHash     xxx links to Identifier
		SpecialChar                            { fg="#eac1c1", }, -- SpecialChar    xxx guifg=#eAc1c1
		NvimRegister                           { SpecialChar }, -- NvimRegister   xxx links to SpecialChar
		NvimStringSpecial                      { SpecialChar }, -- NvimStringSpecial xxx links to SpecialChar
		TSStringEscape                         { SpecialChar }, -- TSStringEscape xxx links to SpecialChar
		TSStringSpecial                        { SpecialChar }, -- TSStringSpecial xxx links to SpecialChar
		TelescopeResultsVariable               { SpecialChar }, -- TelescopeResultsVariable xxx links to SpecialChar
		luaSpecial                             { SpecialChar }, -- luaSpecial     xxx links to SpecialChar
		Number                                 { fg="#e8cca7", }, -- Number         xxx guifg=#e8cca7
		NvimNumber                             { Number }, -- NvimNumber     xxx links to Number
		TSNumber                               { Number }, -- TSNumber       xxx links to Number
		TelescopeResultsNumber                 { Number }, -- TelescopeResultsNumber xxx links to Number
		luaNumber                              { Number }, -- luaNumber      xxx links to Number
		Type                                   { fg="#e6dfb8", }, -- Type           xxx ctermfg=121 guifg=#e6dfb8
		NvimNumberPrefix                       { Type }, -- NvimNumberPrefix xxx links to Type
		NvimOptionSigil                        { Type }, -- NvimOptionSigil xxx links to Type
		TSType                                 { Type }, -- TSType         xxx links to Type
		TSTypeBuiltin                          { Type }, -- TSTypeBuiltin  xxx links to Type
		TSEnvironmentName                      { Type }, -- TSEnvironmentName xxx links to Type
		TelescopeMultiSelection                { Type }, -- TelescopeMultiSelection xxx links to Type
		packerStatus                           { Type }, -- packerStatus   xxx links to Type
		packerOutput                           { Type }, -- packerOutput   xxx links to Type
		String                                 { fg="#b1dba4", }, -- String         xxx guifg=#b1dba4
		NvimString                             { String }, -- NvimString     xxx links to String
		TSString                               { String }, -- TSString       xxx links to String
		TSStringRegex                          { String }, -- TSStringRegex  xxx links to String
		TSLiteral                              { String }, -- TSLiteral      xxx links to String
		TelescopePreviewExecute                { String }, -- TelescopePreviewExecute xxx links to String
		TelescopePreviewSize                   { String }, -- TelescopePreviewSize xxx links to String
		luaString2                             { String }, -- luaString2     xxx links to String
		luaString                              { String }, -- luaString      xxx links to String
		packerString                           { String }, -- packerString   xxx links to String
		Error                                  { bg="#ebb9b9", fg="#20202a", }, -- Error          xxx ctermfg=15 ctermbg=9 guifg=#20202A guibg=#ebb9b9
		NvimInvalid                            { Error }, -- NvimInvalid    xxx links to Error
		luaParenError                          { Error }, -- luaParenError  xxx links to Error
		luaBraceError                          { Error }, -- luaBraceError  xxx links to Error
		luaError                               { Error }, -- luaError       xxx links to Error
		Comment                                { gui="italic", fg="#4e4e58", }, -- Comment        xxx ctermfg=14 gui=italic guifg=#4e4e58
		TroubleCode                            { Comment }, -- TroubleCode    xxx links to Comment
		TroubleSource                          { Comment }, -- TroubleSource  xxx links to Comment
		NvimTreeGitIgnored                     { Comment }, -- NvimTreeGitIgnored xxx links to Comment
		TSComment                              { Comment }, -- TSComment      xxx links to Comment
		TelescopeResultsComment                { Comment }, -- TelescopeResultsComment xxx links to Comment
		luaComment                             { Comment }, -- luaComment     xxx links to Comment
		packerRelDate                          { Comment }, -- packerRelDate  xxx links to Comment
		packerPackageNotLoaded                 { Comment }, -- packerPackageNotLoaded xxx links to Comment
		Constant                               { fg="#e8cca7", }, -- Constant       xxx ctermfg=13 guifg=#e8cca7
		TSConstant                             { Constant }, -- TSConstant     xxx links to Constant
		TSTextReference                        { Constant }, -- TSTextReference xxx links to Constant
		TelescopePreviewPipe                   { Constant }, -- TelescopePreviewPipe xxx links to Constant
		TelescopePreviewCharDev                { Constant }, -- TelescopePreviewCharDev xxx links to Constant
		TelescopePreviewBlock                  { Constant }, -- TelescopePreviewBlock xxx links to Constant
		TelescopePreviewRead                   { Constant }, -- TelescopePreviewRead xxx links to Constant
		TelescopePreviewUser                   { Constant }, -- TelescopePreviewUser xxx links to Constant
		TelescopePreviewGroup                  { Constant }, -- TelescopePreviewGroup xxx links to Constant
		TelescopeResultsConstant               { Constant }, -- TelescopeResultsConstant xxx links to Constant
		luaConstant                            { Constant }, -- luaConstant    xxx links to Constant
		packerStatusSuccess                    { Constant }, -- packerStatusSuccess xxx links to Constant
		packerStatusCommit                     { Constant }, -- packerStatusCommit xxx links to Constant
		Special                                { fg="#b8dceb", }, -- Special        xxx ctermfg=224 guifg=#b8dceb
		SpecialComment                         { Special }, -- SpecialComment xxx links to Special
		TSConstBuiltin                         { Special }, -- TSConstBuiltin xxx links to Special
		TSFuncBuiltin                          { Special }, -- TSFuncBuiltin  xxx links to Special
		TSConstructor                          { Special }, -- TSConstructor  xxx links to Special
		TSVariableBuiltin                      { Special }, -- TSVariableBuiltin xxx links to Special
		TSMath                                 { Special }, -- TSMath         xxx links to Special
		TelescopeMatching                      { Special }, -- TelescopeMatching xxx links to Special
		TelescopePreviewLink                   { Special }, -- TelescopePreviewLink xxx links to Special
		Statement                              { gui="bold", fg="#ebb9b9", }, -- Statement      xxx ctermfg=11 gui=bold guifg=#ebb9b9
		TelescopePreviewSocket                 { Statement }, -- TelescopePreviewSocket xxx links to Statement
		TelescopePreviewWrite                  { Statement }, -- TelescopePreviewWrite xxx links to Statement
		luaStatement                           { Statement }, -- luaStatement   xxx links to Statement
		PreProc                                { fg="#e6dfb8", }, -- PreProc        xxx ctermfg=81 guifg=#e6dfb8
		PreCondit                              { PreProc }, -- PreCondit      xxx links to PreProc
		TSAnnotation                           { PreProc }, -- TSAnnotation   xxx links to PreProc
		TSAttribute                            { PreProc }, -- TSAttribute    xxx links to PreProc
		Underlined                             { gui="underline", fg="#ebb9b9", }, -- Underlined     xxx cterm=underline ctermfg=81 gui=underline guifg=#ebb9b9
		TSURI                                  { Underlined }, -- TSURI          xxx links to Underlined
		Ignore                                 { fg="bg", }, -- Ignore         xxx ctermfg=0 guifg=bg
		Todo                                   { bg="#2c2e3e", fg="#e6dfb8", }, -- Todo           xxx ctermfg=0 ctermbg=11 guifg=#e6dfb8 guibg=#2c2e3e
		TSWarning                              { Todo }, -- TSWarning      xxx links to Todo
		luaTodo                                { Todo }, -- luaTodo        xxx links to Todo
		Character                              { fg="#ebb9b9", }, -- Character      xxx guifg=#ebb9b9
		TSCharacter                            { Character }, -- TSCharacter    xxx links to Character
		Boolean                                { fg="#e8cca7", }, -- Boolean        xxx guifg=#e8cca7
		TSBoolean                              { Boolean }, -- TSBoolean      xxx links to Boolean
		packerProgress                         { Boolean }, -- packerProgress xxx links to Boolean
		packerBool                             { Boolean }, -- packerBool     xxx links to Boolean
		Float                                  { fg="#e8cca7", }, -- Float          xxx guifg=#e8cca7
		TSFloat                                { Float }, -- TSFloat        xxx links to Float
		Function                               { fg="#a3b8ef", }, -- Function       xxx guifg=#a3b8ef
		TSFunction                             { Function }, -- TSFunction     xxx links to Function
		TSMethod                               { Function }, -- TSMethod       xxx links to Function
		TelescopeResultsClass                  { Function }, -- TelescopeResultsClass xxx links to Function
		TelescopeResultsField                  { Function }, -- TelescopeResultsField xxx links to Function
		TelescopeResultsFunction               { Function }, -- TelescopeResultsFunction xxx links to Function
		luaFunction                            { Function }, -- luaFunction    xxx links to Function
		Conditional                            { fg="#f6bbe7", }, -- Conditional    xxx guifg=#f6bbe7
		TSConditional                          { Conditional }, -- TSConditional  xxx links to Conditional
		luaElse                                { Conditional }, -- luaElse        xxx links to Conditional
		luaCond                                { Conditional }, -- luaCond        xxx links to Conditional
		Repeat                                 { fg="#e6dfb8", }, -- Repeat         xxx guifg=#e6dfb8
		TSRepeat                               { Repeat }, -- TSRepeat       xxx links to Repeat
		luaRepeat                              { Repeat }, -- luaRepeat      xxx links to Repeat
		luaFor                                 { Repeat }, -- luaFor         xxx links to Repeat
		Label                                  { fg="#e6dfb8", }, -- Label          xxx guifg=#e6dfb8
		TSLabel                                { Label }, -- TSLabel        xxx links to Label
		TSTag                                  { Label }, -- TSTag          xxx links to Label
		luaLabel                               { Label }, -- luaLabel       xxx links to Label
		packerPackageName                      { Label }, -- packerPackageName xxx links to Label
		Keyword                                { fg="#f6bbe7", }, -- Keyword        xxx guifg=#f6bbe7
		TSKeyword                              { Keyword }, -- TSKeyword      xxx links to Keyword
		TSKeywordFunction                      { Keyword }, -- TSKeywordFunction xxx links to Keyword
		TelescopePreviewSticky                 { Keyword }, -- TelescopePreviewSticky xxx links to Keyword
		Exception                              { fg="#ebb9b9", }, -- Exception      xxx guifg=#ebb9b9
		TSException                            { Exception }, -- TSException    xxx links to Exception
		Include                                { fg="#a3b8ef", }, -- Include        xxx guifg=#a3b8ef
		TSNamespace                            { Include }, -- TSNamespace    xxx links to Include
		TSInclude                              { Include }, -- TSInclude      xxx links to Include
		Define                                 { fg="#f6bbe7", }, -- Define         xxx guifg=#f6bbe7
		TSConstMacro                           { Define }, -- TSConstMacro   xxx links to Define
		Macro                                  { fg="#ebb9b9", }, -- Macro          xxx guifg=#ebb9b9
		TSFuncMacro                            { Macro }, -- TSFuncMacro    xxx links to Macro
		TSEnvironment                          { Macro }, -- TSEnvironment  xxx links to Macro
		StorageClass                           { fg="#e6dfb8", }, -- StorageClass   xxx guifg=#e6dfb8
		Structure                              { fg="#f6bbe7", }, -- Structure      xxx guifg=#f6bbe7
		luaTable                               { Structure }, -- luaTable       xxx links to Structure
		Typedef                                { fg="#e6dfb8", }, -- Typedef        xxx guifg=#e6dfb8
		Tag                                    { fg="#e6dfb8", }, -- Tag            xxx guifg=#e6dfb8
		Debug                                  { fg="#ebb9b9", }, -- Debug          xxx guifg=#ebb9b9
		SurroundFeedback                       { gui="reverse", }, -- SurroundFeedback xxx cterm=reverse gui=reverse
		LspDiagnosticsDefaultHint              { fg="#b8dceb", }, -- LspDiagnosticsDefaultHint xxx guifg=#b8dceb
		LspDiagnosticsFloatingHint             { LspDiagnosticsDefaultHint }, -- LspDiagnosticsFloatingHint xxx links to LspDiagnosticsDefaultHint
		TroubleHint                            { LspDiagnosticsDefaultHint }, -- TroubleHint    xxx links to LspDiagnosticsDefaultHint
		NvimTreeLspDiagnosticsHint             { LspDiagnosticsDefaultHint }, -- NvimTreeLspDiagnosticsHint xxx links to LspDiagnosticsDefaultHint
		LspDiagnosticsVirtualTextHint          { fg="#f6bbe7", }, -- LspDiagnosticsVirtualTextHint xxx guifg=#f6bbe7
		LspDiagnosticsSignHint                 { fg="#f6bbe7", }, -- LspDiagnosticsSignHint xxx guifg=#f6bbe7
		TroubleSignHint                        { LspDiagnosticsSignHint }, -- TroubleSignHint xxx links to LspDiagnosticsSignHint
		LspDiagnosticsDefaultError             { fg="#ebb9b9", }, -- LspDiagnosticsDefaultError xxx guifg=#ebb9b9
		LspDiagnosticsFloatingError            { LspDiagnosticsDefaultError }, -- LspDiagnosticsFloatingError xxx links to LspDiagnosticsDefaultError
		TroubleError                           { LspDiagnosticsDefaultError }, -- TroubleError   xxx links to LspDiagnosticsDefaultError
		NvimTreeLspDiagnosticsError            { LspDiagnosticsDefaultError }, -- NvimTreeLspDiagnosticsError xxx links to LspDiagnosticsDefaultError
		LspDiagnosticsVirtualTextError         { fg="#ebb9b9", }, -- LspDiagnosticsVirtualTextError xxx guifg=#ebb9b9
		LspDiagnosticsSignError                { fg="#ebb9b9", }, -- LspDiagnosticsSignError xxx guifg=#ebb9b9
		TroubleSignError                       { LspDiagnosticsSignError }, -- TroubleSignError xxx links to LspDiagnosticsSignError
		LspDiagnosticsDefaultWarning           { fg="#e6dfb8", }, -- LspDiagnosticsDefaultWarning xxx guifg=#e6dfb8
		LspDiagnosticsFloatingWarning          { LspDiagnosticsDefaultWarning }, -- LspDiagnosticsFloatingWarning xxx links to LspDiagnosticsDefaultWarning
		TroubleWarning                         { LspDiagnosticsDefaultWarning }, -- TroubleWarning xxx links to LspDiagnosticsDefaultWarning
		NvimTreeLspDiagnosticsWarning          { LspDiagnosticsDefaultWarning }, -- NvimTreeLspDiagnosticsWarning xxx links to LspDiagnosticsDefaultWarning
		LspDiagnosticsVirtualTextWarning       { fg="#e6dfb8", }, -- LspDiagnosticsVirtualTextWarning xxx guifg=#E6DFB8
		LspDiagnosticsSignWarning              { fg="#e6dfb8", }, -- LspDiagnosticsSignWarning xxx guifg=#E6DFB8
		TroubleSignWarning                     { LspDiagnosticsSignWarning }, -- TroubleSignWarning xxx links to LspDiagnosticsSignWarning
		LspDiagnosticsDefaultInformation       { fg="#a3b8ef", }, -- LspDiagnosticsDefaultInformation xxx guifg=#a3b8ef
		LspDiagnosticsFloatingInformation      { LspDiagnosticsDefaultInformation }, -- LspDiagnosticsFloatingInformation xxx links to LspDiagnosticsDefaultInformation
		TroubleInformation                     { LspDiagnosticsDefaultInformation }, -- TroubleInformation xxx links to LspDiagnosticsDefaultInformation
		NvimTreeLspDiagnosticsInformation      { LspDiagnosticsDefaultInformation }, -- NvimTreeLspDiagnosticsInformation xxx links to LspDiagnosticsDefaultInformation
		LspDiagnosticsVirtualTextInformation   { fg="#b1dba4", }, -- LspDiagnosticsVirtualTextInformation xxx guifg=#b1dba4
		LspDiagnosticsSignInformation          { fg="#b1dba4", }, -- LspDiagnosticsSignInformation xxx guifg=#b1dba4
		TroubleSignInformation                 { LspDiagnosticsSignInformation }, -- TroubleSignInformation xxx links to LspDiagnosticsSignInformation
		LspDiagnosticsUnderlineError           { sp="red", gui="underline", }, -- LspDiagnosticsUnderlineError xxx cterm=underline gui=underline guisp=Red
		LspDiagnosticsUnderlineWarning         { sp="orange", gui="underline", }, -- LspDiagnosticsUnderlineWarning xxx cterm=underline gui=underline guisp=Orange
		LspDiagnosticsUnderlineInformation     { sp="lightblue", gui="underline", }, -- LspDiagnosticsUnderlineInformation xxx cterm=underline gui=underline guisp=LightBlue
		LspDiagnosticsUnderlineHint            { sp="lightgrey", gui="underline", }, -- LspDiagnosticsUnderlineHint xxx cterm=underline gui=underline guisp=LightGrey
		Bold                                   { gui="bold", }, -- Bold           xxx gui=bold
		TooLong                                { fg="#ebb9b9", }, -- TooLong        xxx guifg=#ebb9b9
		VisualNOS                              { fg="#ebb9b9", }, -- VisualNOS      xxx guifg=#ebb9b9
		cOperator                              { fg="#b8dceb", }, -- cOperator      xxx guifg=#b8dceb
		cPreCondit                             { fg="#f6bbe7", }, -- cPreCondit     xxx guifg=#f6bbe7
		csClass                                { fg="#e6dfb8", }, -- csClass        xxx guifg=#e6dfb8
		csAttribute                            { fg="#e6dfb8", }, -- csAttribute    xxx guifg=#e6dfb8
		csModifier                             { fg="#f6bbe7", }, -- csModifier     xxx guifg=#f6bbe7
		csType                                 { fg="#ebb9b9", }, -- csType         xxx guifg=#ebb9b9
		csUnspecifiedStatement                 { fg="#a3b8ef", }, -- csUnspecifiedStatement xxx guifg=#a3b8ef
		csContextualStatement                  { fg="#f6bbe7", }, -- csContextualStatement xxx guifg=#f6bbe7
		csNewDecleration                       { fg="#ebb9b9", }, -- csNewDecleration xxx guifg=#ebb9b9
		cssBraces                              { fg="#ced4df", }, -- cssBraces      xxx guifg=#ced4df
		cssClassName                           { fg="#f6bbe7", }, -- cssClassName   xxx guifg=#f6bbe7
		cssColor                               { fg="#b8dceb", }, -- cssColor       xxx guifg=#b8dceb
		DiffAdded                              { bg="#20202a", fg="#b1dba4", }, -- DiffAdded      xxx guifg=#b1dba4 guibg=#20202A
		GitSignsAdd                            { DiffAdded }, -- GitSignsAdd    xxx links to DiffAdded
		DiffFile                               { bg="#20202a", fg="#ebb9b9", }, -- DiffFile       xxx guifg=#ebb9b9 guibg=#20202A
		DiffNewFile                            { bg="#20202a", fg="#b1dba4", }, -- DiffNewFile    xxx guifg=#b1dba4 guibg=#20202A
		DiffLine                               { bg="#20202a", fg="#a3b8ef", }, -- DiffLine       xxx guifg=#a3b8ef guibg=#20202A
		DiffRemoved                            { bg="#20202a", fg="#ebb9b9", }, -- DiffRemoved    xxx guifg=#ebb9b9 guibg=#20202A
		GitSignsDelete                         { DiffRemoved }, -- GitSignsDelete xxx links to DiffRemoved
		gitcommitOverflow                      { fg="#ebb9b9", }, -- gitcommitOverflow xxx guifg=#ebb9b9
		gitcommitSummary                       { fg="#b1dba4", }, -- gitcommitSummary xxx guifg=#b1dba4
		gitcommitComment                       { fg="#313449", }, -- gitcommitComment xxx guifg=#313449
		gitcommitUntracked                     { fg="#313449", }, -- gitcommitUntracked xxx guifg=#313449
		gitcommitDiscarded                     { fg="#313449", }, -- gitcommitDiscarded xxx guifg=#313449
		gitcommitSelected                      { fg="#313449", }, -- gitcommitSelected xxx guifg=#313449
		gitcommitHeader                        { fg="#f6bbe7", }, -- gitcommitHeader xxx guifg=#f6bbe7
		gitcommitSelectedType                  { fg="#a3b8ef", }, -- gitcommitSelectedType xxx guifg=#a3b8ef
		gitcommitUnmergedType                  { fg="#a3b8ef", }, -- gitcommitUnmergedType xxx guifg=#a3b8ef
		gitcommitDiscardedType                 { fg="#a3b8ef", }, -- gitcommitDiscardedType xxx guifg=#a3b8ef
		gitcommitBranch                        { gui="bold", fg="#e8cca7", }, -- gitcommitBranch xxx gui=bold guifg=#e8cca7
		gitcommitUntrackedFile                 { fg="#e6dfb8", }, -- gitcommitUntrackedFile xxx guifg=#e6dfb8
		gitcommitUnmergedFile                  { gui="bold", fg="#ebb9b9", }, -- gitcommitUnmergedFile xxx gui=bold guifg=#ebb9b9
		gitcommitDiscardedFile                 { gui="bold", fg="#ebb9b9", }, -- gitcommitDiscardedFile xxx gui=bold guifg=#ebb9b9
		gitcommitSelectedFile                  { gui="bold", fg="#b1dba4", }, -- gitcommitSelectedFile xxx gui=bold guifg=#b1dba4
		htmlBold                               { fg="#e6dfb8", }, -- htmlBold       xxx guifg=#e6dfb8
		htmlItalic                             { fg="#f6bbe7", }, -- htmlItalic     xxx guifg=#f6bbe7
		htmlEndTag                             { fg="#ced4df", }, -- htmlEndTag     xxx guifg=#ced4df
		htmlTag                                { fg="#ced4df", }, -- htmlTag        xxx guifg=#ced4df
		javaScript                             { fg="#ced4df", }, -- javaScript     xxx guifg=#ced4df
		javaScriptBraces                       { fg="#ced4df", }, -- javaScriptBraces xxx guifg=#ced4df
		javaScriptNumber                       { fg="#e8cca7", }, -- javaScriptNumber xxx guifg=#e8cca7
		jsOperator                             { fg="#a3b8ef", }, -- jsOperator     xxx guifg=#a3b8ef
		jsStatement                            { fg="#f6bbe7", }, -- jsStatement    xxx guifg=#f6bbe7
		jsReturn                               { fg="#f6bbe7", }, -- jsReturn       xxx guifg=#f6bbe7
		jsThis                                 { fg="#ebb9b9", }, -- jsThis         xxx guifg=#ebb9b9
		jsClassDefinition                      { fg="#e6dfb8", }, -- jsClassDefinition xxx guifg=#e6dfb8
		jsFunction                             { fg="#f6bbe7", }, -- jsFunction     xxx guifg=#f6bbe7
		jsFuncName                             { fg="#a3b8ef", }, -- jsFuncName     xxx guifg=#a3b8ef
		jsFuncCall                             { fg="#a3b8ef", }, -- jsFuncCall     xxx guifg=#a3b8ef
		jsClassFuncName                        { fg="#a3b8ef", }, -- jsClassFuncName xxx guifg=#a3b8ef
		jsClassMethodType                      { fg="#f6bbe7", }, -- jsClassMethodType xxx guifg=#f6bbe7
		jsRegexpString                         { fg="#b8dceb", }, -- jsRegexpString xxx guifg=#b8dceb
		jsGlobalObjects                        { fg="#e6dfb8", }, -- jsGlobalObjects xxx guifg=#e6dfb8
		jsGlobalNodeObjects                    { fg="#e6dfb8", }, -- jsGlobalNodeObjects xxx guifg=#e6dfb8
		jsExceptions                           { fg="#e6dfb8", }, -- jsExceptions   xxx guifg=#e6dfb8
		jsBuiltins                             { fg="#e6dfb8", }, -- jsBuiltins     xxx guifg=#e6dfb8
		mailQuoted1                            { fg="#e6dfb8", }, -- mailQuoted1    xxx guifg=#e6dfb8
		mailQuoted2                            { fg="#b1dba4", }, -- mailQuoted2    xxx guifg=#b1dba4
		mailQuoted3                            { fg="#f6bbe7", }, -- mailQuoted3    xxx guifg=#f6bbe7
		mailQuoted4                            { fg="#b8dceb", }, -- mailQuoted4    xxx guifg=#b8dceb
		mailQuoted5                            { fg="#a3b8ef", }, -- mailQuoted5    xxx guifg=#a3b8ef
		mailQuoted6                            { fg="#e6dfb8", }, -- mailQuoted6    xxx guifg=#e6dfb8
		mailURL                                { fg="#a3b8ef", }, -- mailURL        xxx guifg=#a3b8ef
		mailEmail                              { fg="#a3b8ef", }, -- mailEmail      xxx guifg=#a3b8ef
		markdownCode                           { fg="#b1dba4", }, -- markdownCode   xxx guifg=#b1dba4
		markdownError                          { bg="#20202a", fg="#ced4df", }, -- markdownError  xxx guifg=#ced4df guibg=#20202A
		markdownCodeBlock                      { fg="#b1dba4", }, -- markdownCodeBlock xxx guifg=#b1dba4
		markdownHeadingDelimiter               { fg="#a3b8ef", }, -- markdownHeadingDelimiter xxx guifg=#a3b8ef
		phpMemberSelector                      { fg="#ced4df", }, -- phpMemberSelector xxx guifg=#ced4df
		phpComparison                          { fg="#ced4df", }, -- phpComparison  xxx guifg=#ced4df
		phpParent                              { fg="#ced4df", }, -- phpParent      xxx guifg=#ced4df
		phpMethodsVar                          { fg="#b8dceb", }, -- phpMethodsVar  xxx guifg=#b8dceb
		pythonOperator                         { fg="#f6bbe7", }, -- pythonOperator xxx guifg=#f6bbe7
		pythonRepeat                           { fg="#f6bbe7", }, -- pythonRepeat   xxx guifg=#f6bbe7
		pythonInclude                          { fg="#f6bbe7", }, -- pythonInclude  xxx guifg=#f6bbe7
		pythonStatement                        { fg="#f6bbe7", }, -- pythonStatement xxx guifg=#f6bbe7
		rubyAttribute                          { fg="#a3b8ef", }, -- rubyAttribute  xxx guifg=#a3b8ef
		rubyConstant                           { fg="#e6dfb8", }, -- rubyConstant   xxx guifg=#e6dfb8
		rubyInterpolationDelimiter             { fg="#eac1c1", }, -- rubyInterpolationDelimiter xxx guifg=#eAc1c1
		rubyRegexp                             { fg="#b8dceb", }, -- rubyRegexp     xxx guifg=#b8dceb
		rubySymbol                             { fg="#b1dba4", }, -- rubySymbol     xxx guifg=#b1dba4
		rubyStringDelimiter                    { fg="#b1dba4", }, -- rubyStringDelimiter xxx guifg=#b1dba4
		sassidChar                             { fg="#ebb9b9", }, -- sassidChar     xxx guifg=#ebb9b9
		sassClassChar                          { fg="#e8cca7", }, -- sassClassChar  xxx guifg=#e8cca7
		sassInclude                            { fg="#f6bbe7", }, -- sassInclude    xxx guifg=#f6bbe7
		sassMixing                             { fg="#f6bbe7", }, -- sassMixing     xxx guifg=#f6bbe7
		sassMixinName                          { fg="#a3b8ef", }, -- sassMixinName  xxx guifg=#a3b8ef
		javaOperator                           { fg="#a3b8ef", }, -- javaOperator   xxx guifg=#a3b8ef
		CmpItemAbbr                            { fg="#ced4df", }, -- CmpItemAbbr    xxx guifg=#ced4df
		CmpItemAbbrMatch                       { fg="#ced4df", }, -- CmpItemAbbrMatch xxx guifg=#ced4df
		CmpItemKind                            { fg="#ced4df", }, -- CmpItemKind    xxx guifg=#ced4df
		CmpItemMenu                            { fg="#ced4df", }, -- CmpItemMenu    xxx guifg=#ced4df
		DashboardCenter                        { fg="#4e4e58", }, -- DashboardCenter xxx guifg=#4e4e58
		DashboardFooter                        { fg="#4e4e58", }, -- DashboardFooter xxx guifg=#4e4e58
		DashboardHeader                        { fg="#4e4e58", }, -- DashboardHeader xxx guifg=#4e4e58
		DashboardShortcut                      { fg="#4e4e58", }, -- DashboardShortcut xxx guifg=#4e4e58
		DiffModified                           { bg="none", fg="#bccaeb", }, -- DiffModified   xxx guifg=#BCCAEB guibg=none
		IndentBlanklineChar                    { fg="#292933", }, -- IndentBlanklineChar xxx guifg=#292933
		NvimTreeEmptyFolderName                { fg="#cddbf9", }, -- NvimTreeEmptyFolderName xxx guifg=#CDDBF9
		NvimTreeEndOfBuffer                    { fg="#1a1a24", }, -- NvimTreeEndOfBuffer xxx guifg=#1a1a24
		NvimTreeFolderIcon                     { fg="#b8dceb", }, -- NvimTreeFolderIcon xxx guifg=#b8dceb
		NvimTreeFolderName                     { fg="#b8dceb", }, -- NvimTreeFolderName xxx guifg=#b8dceb
		NvimTreeGitDirty                       { fg="#ebb9b9", }, -- NvimTreeGitDirty xxx guifg=#ebb9b9
		NvimTreeFileDirty                      { NvimTreeGitDirty }, -- NvimTreeFileDirty xxx links to NvimTreeGitDirty
		NvimTreeIndentMarker                   { fg="#34343e", }, -- NvimTreeIndentMarker xxx guifg=#34343e
		NvimTreeNormal                         { bg="#1a1a24", }, -- NvimTreeNormal xxx guibg=#1a1a24
		NvimTreeSignColumn                     { NvimTreeNormal }, -- NvimTreeSignColumn xxx links to NvimTreeNormal
		NvimTreeNormalNC                       { bg="#1a1a24", }, -- NvimTreeNormalNC xxx guibg=#1a1a24
		NvimTreeOpenedFolderName               { gui="bold", fg="#cddbf9", }, -- NvimTreeOpenedFolderName xxx gui=bold guifg=#CDDBF9
		NvimTreeRootFolder                     { gui="bold", fg="#ebb9b9", }, -- NvimTreeRootFolder xxx gui=bold guifg=#ebb9b9
		NvimTreeStatuslineNc                   { bg="#1a1a24", fg="#1a1a24", }, -- NvimTreeStatuslineNc xxx guifg=#1a1a24 guibg=#1a1a24
		NvimTreeVertSplit                      { bg="#1a1a24", fg="#1a1a24", }, -- NvimTreeVertSplit xxx guifg=#1a1a24 guibg=#1a1a24
		NvimTreeWindowPicker                   { bg="#25252f", fg="#ebb9b9", }, -- NvimTreeWindowPicker xxx guifg=#ebb9b9 guibg=#25252f
		NvimTreeStatusline                     { bg="#1a1a24", fg="#1a1a24", }, -- NvimTreeStatusline xxx guifg=#1a1a24 guibg=#1a1a24
		TelescopeBorder                        { fg="#2a2a34", }, -- TelescopeBorder xxx guifg=#2a2a34
		TelescopePromptBorder                  { TelescopeBorder }, -- TelescopePromptBorder xxx links to TelescopeBorder
		TelescopeResultsBorder                 { TelescopeBorder }, -- TelescopeResultsBorder xxx links to TelescopeBorder
		TelescopePreviewBorder                 { TelescopeBorder }, -- TelescopePreviewBorder xxx links to TelescopeBorder
		TelescopeTitle                         { TelescopeBorder }, -- TelescopeTitle xxx links to TelescopeBorder
		TelescopePreviewTitle                  { bg="#2a2a34", fg="#b1dba4", }, -- TelescopePreviewTitle xxx guifg=#b1dba4 guibg=#2a2a34
		TelescopePromptTitle                   { bg="#2a2a34", fg="#cddbf9", }, -- TelescopePromptTitle xxx guifg=#CDDBF9 guibg=#2a2a34
		TelescopeResultsTitle                  { bg="#2a2a34", fg="#ebb9b9", }, -- TelescopeResultsTitle xxx guifg=#ebb9b9 guibg=#2a2a34
		NvimTreeSpecialFile                    { gui="bold,underline", fg="#e6dfb8", }, -- NvimTreeSpecialFile xxx gui=bold,underline guifg=#e6dfb8
		NvimTreeExecFile                       { gui="bold", fg="#b1dba4", }, -- NvimTreeExecFile xxx gui=bold guifg=#b1dba4
		NvimTreeImageFile                      { gui="bold", fg="#f6bbe7", }, -- NvimTreeImageFile xxx gui=bold guifg=#f6bbe7
		NvimTreeGitDeleted                     { fg="#ebb9b9", }, -- NvimTreeGitDeleted xxx guifg=#ebb9b9
		NvimTreeFileDeleted                    { NvimTreeGitDeleted }, -- NvimTreeFileDeleted xxx links to NvimTreeGitDeleted
		NvimTreeGitNew                         { fg="#e6dfb8", }, -- NvimTreeGitNew xxx guifg=#e6dfb8
		NvimTreeFileNew                        { NvimTreeGitNew }, -- NvimTreeFileNew xxx links to NvimTreeGitNew
		NvimTreeGitMerge                       { fg="#e6dfb8", }, -- NvimTreeGitMerge xxx guifg=#e6dfb8
		NvimTreeFileMerge                      { NvimTreeGitMerge }, -- NvimTreeFileMerge xxx links to NvimTreeGitMerge
		NvimTreeGitRenamed                     { fg="#f6bbe7", }, -- NvimTreeGitRenamed xxx guifg=#f6bbe7
		NvimTreeFileRenamed                    { NvimTreeGitRenamed }, -- NvimTreeFileRenamed xxx links to NvimTreeGitRenamed
		NvimTreeSymlink                        { gui="bold", fg="#b8dceb", }, -- NvimTreeSymlink xxx gui=bold guifg=#b8dceb
		NvimTreeOpenedFile                     { gui="bold", fg="#b1dba4", }, -- NvimTreeOpenedFile xxx gui=bold guifg=#b1dba4
		NvimTreeGitStaged                      { fg="#b1dba4", }, -- NvimTreeGitStaged xxx guifg=#b1dba4
		NvimTreeFileStaged                     { NvimTreeGitStaged }, -- NvimTreeFileStaged xxx links to NvimTreeGitStaged
		IndentBlanklineSpaceChar               { gui="nocombine", fg="#313449", }, -- IndentBlanklineSpaceChar xxx cterm=nocombine ctermfg=12 gui=nocombine guifg=#313449
		IndentBlanklineContextStart            { sp="#e6dfb8", gui="underline,nocombine", }, -- IndentBlanklineContextStart xxx cterm=underline gui=underline,nocombine guisp=#e6dfb8
		IndentBlanklineContextChar             { gui="nocombine", fg="#e6dfb8", }, -- IndentBlanklineContextChar xxx cterm=nocombine gui=nocombine guifg=#e6dfb8
		IndentBlanklineSpaceCharBlankline      { gui="nocombine", fg="#313449", }, -- IndentBlanklineSpaceCharBlankline xxx cterm=nocombine ctermfg=12 gui=nocombine guifg=#313449
		LightspeedLabel                        { gui="bold,underline", fg="#ff2f87", }, -- LightspeedLabel xxx cterm=bold,underline ctermfg=9 gui=bold,underline guifg=#ff2f87
		LightspeedLabelOverlapped              { gui="underline", fg="#e01067", }, -- LightspeedLabelOverlapped xxx cterm=underline ctermfg=13 gui=underline guifg=#e01067
		LightspeedLabelDistant                 { gui="bold,underline", fg="#99ddff", }, -- LightspeedLabelDistant xxx cterm=bold,underline ctermfg=14 gui=bold,underline guifg=#99ddff
		LightspeedLabelDistantOverlapped       { gui="underline", fg="#79bddf", }, -- LightspeedLabelDistantOverlapped xxx cterm=underline ctermfg=12 gui=underline guifg=#79bddf
		LightspeedShortcut                     { bg=colors.red, gui="bold,underline", fg=colors.darker_black, }, -- LightspeedShortcut xxx cterm=bold,underline ctermfg=15 ctermbg=9 gui=bold,underline guifg=#ffffff guibg=#f00077
		LightspeedShortcutOverlapped           { LightspeedShortcut }, -- LightspeedShortcutOverlapped xxx links to LightspeedShortcut
		LightspeedOneCharMatch                 { bg=colors.red, gui="bold", fg=colors.darker_black, }, -- LightspeedOneCharMatch xxx cterm=bold ctermfg=15 ctermbg=9 gui=bold guifg=#ffffff guibg=#f00077
		LightspeedMaskedChar                   { fg="#b38080", }, -- LightspeedMaskedChar xxx ctermfg=242 guifg=#b38080
		LightspeedUnlabeledMatch               { gui="bold", fg="#f3ecec", }, -- LightspeedUnlabeledMatch xxx cterm=bold ctermfg=15 gui=bold guifg=#f3ecec
		LightspeedUniqueChar                   { LightspeedUnlabeledMatch }, -- LightspeedUniqueChar xxx links to LightspeedUnlabeledMatch
		LightspeedPendingOpArea                { bg="#f00077", fg="#ffffff", }, -- LightspeedPendingOpArea xxx ctermfg=15 ctermbg=9 guifg=#ffffff guibg=#f00077
		LightspeedGreyWash                     { fg="#777777", }, -- LightspeedGreyWash xxx ctermfg=248 guifg=#777777
		CmpItemAbbrDefault                     { fg="#ced4df", }, -- CmpItemAbbrDefault xxx guifg=#ced4df
		CmpItemAbbrDeprecatedDefault           { fg="#4e4e58", }, -- CmpItemAbbrDeprecatedDefault xxx guifg=#4e4e58
		CmpItemAbbrDeprecated                  { CmpItemAbbrDeprecatedDefault }, -- CmpItemAbbrDeprecated xxx links to CmpItemAbbrDeprecatedDefault
		CmpItemAbbrMatchDefault                { fg="#ced4df", }, -- CmpItemAbbrMatchDefault xxx guifg=#ced4df
		CmpItemAbbrMatchFuzzyDefault           { fg="#ced4df", }, -- CmpItemAbbrMatchFuzzyDefault xxx guifg=#ced4df
		CmpItemAbbrMatchFuzzy                  { CmpItemAbbrMatchFuzzyDefault }, -- CmpItemAbbrMatchFuzzy xxx links to CmpItemAbbrMatchFuzzyDefault
		CmpItemKindDefault                     { fg="#b8dceb", }, -- CmpItemKindDefault xxx guifg=#b8dceb
		CmpItemMenuDefault                     { fg="#ced4df", }, -- CmpItemMenuDefault xxx guifg=#ced4df
		TSNone                                 { fg="foreground", }, -- TSNone         xxx guifg=foreground
		TSText                                 { TSNone }, -- TSText         xxx links to TSNone
		TSStrong                               { gui="bold", }, -- TSStrong       xxx cterm=bold gui=bold
		TSEmphasis                             { gui="italic", }, -- TSEmphasis     xxx cterm=italic gui=italic
		TSUnderline                            { gui="underline", }, -- TSUnderline    xxx cterm=underline gui=underline
		TSStrike                               { gui="strikethrough", }, -- TSStrike       xxx cterm=strikethrough gui=strikethrough
		TodoBgTODO                             { bg="#a3b8ef", gui="bold", fg="#20202a", }, -- TodoBgTODO     xxx gui=bold guifg=#20202a guibg=#a3b8ef
		TodoFgTODO                             { fg="#a3b8ef", }, -- TodoFgTODO     xxx guifg=#a3b8ef
		TodoSignTODO                           { fg="#a3b8ef", }, -- TodoSignTODO   xxx guifg=#a3b8ef
		TodoBgWARN                             { bg="#e6dfb8", gui="bold", fg="#20202a", }, -- TodoBgWARN     xxx gui=bold guifg=#20202a guibg=#e6dfb8
		TodoFgWARN                             { fg="#e6dfb8", }, -- TodoFgWARN     xxx guifg=#e6dfb8
		TodoSignWARN                           { fg="#e6dfb8", }, -- TodoSignWARN   xxx guifg=#e6dfb8
		TodoBgPERF                             { bg="#ebb9b9", gui="bold", fg="#20202a", }, -- TodoBgPERF     xxx gui=bold guifg=#20202a guibg=#ebb9b9
		TodoFgPERF                             { fg="#ebb9b9", }, -- TodoFgPERF     xxx guifg=#ebb9b9
		TodoSignPERF                           { fg="#ebb9b9", }, -- TodoSignPERF   xxx guifg=#ebb9b9
		TodoBgFIX                              { bg="#ebb9b9", gui="bold", fg="#20202a", }, -- TodoBgFIX      xxx gui=bold guifg=#20202a guibg=#ebb9b9
		TodoFgFIX                              { fg="#ebb9b9", }, -- TodoFgFIX      xxx guifg=#ebb9b9
		TodoSignFIX                            { fg="#ebb9b9", }, -- TodoSignFIX    xxx guifg=#ebb9b9
		TodoBgHACK                             { bg="#e6dfb8", gui="bold", fg="#20202a", }, -- TodoBgHACK     xxx gui=bold guifg=#20202a guibg=#e6dfb8
		TodoFgHACK                             { fg="#e6dfb8", }, -- TodoFgHACK     xxx guifg=#e6dfb8
		TodoSignHACK                           { fg="#e6dfb8", }, -- TodoSignHACK   xxx guifg=#e6dfb8
		TodoBgNOTE                             { bg="#b8dceb", gui="bold", fg="#20202a", }, -- TodoBgNOTE     xxx gui=bold guifg=#20202a guibg=#b8dceb
		TodoFgNOTE                             { fg="#b8dceb", }, -- TodoFgNOTE     xxx guifg=#b8dceb
		TodoSignNOTE                           { fg="#b8dceb", }, -- TodoSignNOTE   xxx guifg=#b8dceb
		lualine_b_normal                       { bg="#2c2e3e", fg="#cddbf9", }, -- lualine_b_normal xxx guifg=#cddbf9 guibg=#2C2E3E
		colorizer_mb_b1dba4                    { bg="#b1dba4", fg="black", }, -- colorizer_mb_b1dba4 xxx guifg=Black guibg=#b1dba4
		colorizer_mb_f6bbe7                    { bg="#f6bbe7", fg="black", }, -- colorizer_mb_f6bbe7 xxx guifg=Black guibg=#f6bbe7
		colorizer_mb_b8dceb                    { bg="#b8dceb", fg="black", }, -- colorizer_mb_b8dceb xxx guifg=Black guibg=#b8dceb
		colorizer_mb_cddbf9                    { bg="#cddbf9", fg="black", }, -- colorizer_mb_cddbf9 xxx guifg=Black guibg=#cddbf9
		colorizer_mb_ebb9b9                    { bg="#ebb9b9", fg="black", }, -- colorizer_mb_ebb9b9 xxx guifg=Black guibg=#ebb9b9
		colorizer_mb_eac1c1                    { bg="#eac1c1", fg="black", }, -- colorizer_mb_eac1c1 xxx guifg=Black guibg=#eac1c1
		colorizer_mb_e6dfb8                    { bg="#e6dfb8", fg="black", }, -- colorizer_mb_e6dfb8 xxx guifg=Black guibg=#e6dfb8
		colorizer_mb_c8cca7                    { bg="#c8cca7", fg="black", }, -- colorizer_mb_c8cca7 xxx guifg=Black guibg=#c8cca7
		colorizer_mb_1a1a24                    { bg="#1a1a24", fg="white", }, -- colorizer_mb_1a1a24 xxx guifg=White guibg=#1a1a24
		colorizer_mb_20202a                    { bg="#20202a", fg="white", }, -- colorizer_mb_20202a xxx guifg=White guibg=#20202a
		colorizer_mb_2c2e3e                    { bg="#2c2e3e", fg="white", }, -- colorizer_mb_2c2e3e xxx guifg=White guibg=#2c2e3e
		colorizer_mb_313449                    { bg="#313449", fg="white", }, -- colorizer_mb_313449 xxx guifg=White guibg=#313449
		colorizer_mb_3d4059                    { bg="#3d4059", fg="white", }, -- colorizer_mb_3d4059 xxx guifg=White guibg=#3d4059
		colorizer_mb_63718b                    { bg="#63718b", fg="white", }, -- colorizer_mb_63718b xxx guifg=White guibg=#63718b
		colorizer_mb_a7b7d6                    { bg="#a7b7d6", fg="black", }, -- colorizer_mb_a7b7d6 xxx guifg=Black guibg=#a7b7d6
		ZenBg                                  { bg="#1e1e27", fg="#1e1e27", }, -- ZenBg          xxx guifg=#1e1e27 guibg=#1e1e27
	}
end)
return theme
