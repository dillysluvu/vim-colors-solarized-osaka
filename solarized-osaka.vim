" A custom colorscheme inspired by Solarized Osaka.

if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'mycolorscheme'
set background=dark  " Change to 'light' if you prefer a light background

" Define the color palette based on Solarized Osaka
let s:base03  = '#002b36'
let s:base02  = '#073642'
let s:base01  = '#586e75'
let s:base00  = '#657b83'
let s:base0   = '#839496'
let s:base1   = '#93a1a1'
let s:base2   = '#eee8d5'
let s:base3   = '#fdf6e3'
let s:yellow  = '#b58900'
let s:orange  = '#cb4b16'
let s:red     = '#dc322f'
let s:magenta = '#d33682'
let s:violet  = '#6c71c4'
let s:blue    = '#268bd2'
let s:cyan    = '#2aa198'
let s:green   = '#859900'

" Function to expand and use variables in highlight
function! Highlight(group, guifg, guibg, gui)
  execute 'highlight' a:group 'guifg=' . a:guifg 'guibg=' . a:guibg 'gui=' . a:gui
endfunction

" Vim editor elements
call Highlight('Normal', s:base0, s:base03, 'NONE')
call Highlight('Cursor', s:base03, s:base0, 'NONE')
call Highlight('CursorLine', 'NONE', s:base02, 'NONE')
call Highlight('CursorColumn', 'NONE', s:base02, 'NONE')
call Highlight('LineNr', s:base01, 'NONE', 'NONE')
call Highlight('CursorLineNr', s:yellow, 'NONE', 'NONE')
call Highlight('Visual', 'NONE', s:base02, 'NONE')
call Highlight('Search', s:base03, s:yellow, 'NONE')
call Highlight('IncSearch', s:base03, s:orange, 'NONE')
call Highlight('StatusLine', s:base1, s:base02, 'NONE')
call Highlight('StatusLineNC', s:base00, s:base02, 'NONE')
call Highlight('VertSplit', s:base02, 'NONE', 'NONE')
call Highlight('Title', s:yellow, 'NONE', 'NONE')

" Pmenu (popup menu for autocomplete, etc.)
call Highlight('Pmenu', s:base0, s:base02, 'NONE')
call Highlight('PmenuSel', s:base3, s:base01, 'NONE')
call Highlight('PmenuSbar', 'NONE', s:base02, 'NONE')
call Highlight('PmenuThumb', 'NONE', s:base1, 'NONE')

" Tabs
call Highlight('TabLine', s:base1, s:base02, 'NONE')
call Highlight('TabLineSel', s:base3, s:base0, 'NONE')
call Highlight('TabLineFill', 'NONE', s:base02, 'NONE')

" General syntax highlighting
call Highlight('Comment', s:base01, 'NONE', 'italic')
call Highlight('Constant', s:cyan, 'NONE', 'NONE')
call Highlight('String', s:green, 'NONE', 'NONE')
call Highlight('Character', s:orange, 'NONE', 'NONE')
call Highlight('Number', s:violet, 'NONE', 'NONE')
call Highlight('Boolean', s:violet, 'NONE', 'NONE')
call Highlight('Float', s:violet, 'NONE', 'NONE')

call Highlight('Identifier', s:blue, 'NONE', 'NONE')
call Highlight('Function', s:yellow, 'NONE', 'NONE')
call Highlight('Statement', s:red, 'NONE', 'NONE')
call Highlight('Conditional', s:red, 'NONE', 'NONE')
call Highlight('Repeat', s:red, 'NONE', 'NONE')
call Highlight('Label', s:yellow, 'NONE', 'NONE')
call Highlight('Operator', s:base0, 'NONE', 'NONE')
call Highlight('Keyword', s:orange, 'NONE', 'NONE')
call Highlight('Exception', s:red, 'NONE', 'NONE')

call Highlight('PreProc', s:orange, 'NONE', 'NONE')
call Highlight('Include', s:blue, 'NONE', 'NONE')
call Highlight('Define', s:magenta, 'NONE', 'NONE')
call Highlight('Macro', s:magenta, 'NONE', 'NONE')
call Highlight('PreCondit', s:orange, 'NONE', 'NONE')

call Highlight('Type', s:yellow, 'NONE', 'NONE')
call Highlight('StorageClass', s:orange, 'NONE', 'NONE')
call Highlight('Structure', s:yellow, 'NONE', 'NONE')
call Highlight('Typedef', s:yellow, 'NONE', 'NONE')

call Highlight('Special', s:magenta, 'NONE', 'NONE')
call Highlight('SpecialChar', s:orange, 'NONE', 'NONE')
call Highlight('Tag', s:green, 'NONE', 'NONE')
call Highlight('Delimiter', s:base0, 'NONE', 'NONE')
call Highlight('SpecialComment', s:base01, 'NONE', 'NONE')
call Highlight('Debug', s:red, 'NONE', 'NONE')

" Underlining and errors
call Highlight('Underlined', 'NONE', 'NONE', 'underline')
call Highlight('Error', s:red, s:base03, 'NONE')
call Highlight('Todo', s:magenta, s:base03, 'NONE')

" Diagnostics for ALE, LSP, etc.
call Highlight('DiagnosticError', s:red, 'NONE', 'NONE')
call Highlight('DiagnosticWarn', s:yellow, 'NONE', 'NONE')
call Highlight('DiagnosticInfo', s:blue, 'NONE', 'NONE')
call Highlight('DiagnosticHint', s:green, 'NONE', 'NONE')

" Git signs (for vim-fugitive, etc.)
call Highlight('GitSignsAdd', s:green, 'NONE', 'NONE')
call Highlight('GitSignsChange', s:yellow, 'NONE', 'NONE')
call Highlight('GitSignsDelete', s:red, 'NONE', 'NONE')

" Diff mode
call Highlight('DiffAdd', s:base03, s:green, 'NONE')
call Highlight('DiffChange', s:base03, s:yellow, 'NONE')
call Highlight('DiffDelete', s:base03, s:red, 'NONE')
call Highlight('DiffText', s:base03, s:blue, 'NONE')


