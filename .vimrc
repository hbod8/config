"
" Vim Config
" Harry Saliba 2022
"

set number          " Show line numbers
set showmatch       " Highlight matching brace

syntax on

set hlsearch        " Highlight all search results
set smartcase       " Enable smart-case search
set ignorecase      " Always case-insensitive
set incsearch       " Searches for strings incrementally
 
set autoindent      " Auto-indent new lines
set expandtab       " Use spaces instead of tabs
set shiftwidth=2    " Number of auto-indent spaces
set smartindent     " Enable smart-indent
set smarttab        " Enable smart-tabs
set softtabstop=2   " Number of spaces per Tab

set list            " enable whitespace rendering
"set listchars=eol:¬
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣

set ruler           " Show row and column ruler information
 
set undolevels=1000             " Number of undo levels
set backspace=indent,eol,start  " Backspace behaviour

" Load colorscheme

hi clear

set background=dark

" General Colors
hi Normal       guifg=#d4d4d4   guibg=#1e1e1e   ctermfg=252    ctermbg=234       gui=none      cterm=none
hi Comment      guifg=#6a9955   guibg=NONE      ctermfg=107    ctermbg=NONE      gui=none      cterm=none
hi Constant     guifg=#d7d7af   guibg=NONE      ctermfg=187    ctermbg=NONE      gui=none      cterm=none
hi Identifier   guifg=#569cd6   guibg=NONE      ctermfg=75    ctermbg=NONE      gui=none      cterm=none
hi Statement    guifg=#87afd7   guibg=NONE      ctermfg=110    ctermbg=NONE      gui=none      cterm=none
hi PreProc      guifg=#87afd7   guibg=NONE      ctermfg=110    ctermbg=NONE      gui=none      cterm=none
hi Type         guifg=#569cd6   guibg=NONE      ctermfg=75    ctermbg=NONE      gui=none      cterm=none
hi Special      guifg=#d7d7af   guibg=NONE      ctermfg=187    ctermbg=NONE      gui=none      cterm=none

" Text Markup
hi Underlined   guifg=fg        guibg=NONE      ctermfg=fg     ctermbg=NONE      gui=underline cterm=underline
hi Error        guifg=#ff8787   guibg=NONE      ctermfg=210    ctermbg=NONE      gui=none      cterm=none
hi Todo         guifg=#d7d7af   guibg=NONE      ctermfg=187    ctermbg=NONE      gui=none      cterm=none
hi MatchParen   guifg=fg        guibg=#5f8787   ctermfg=fg     ctermbg=66        gui=none      cterm=none
hi NonText      guifg=#303030   guibg=NONE      ctermfg=236    ctermbg=NONE      gui=none      cterm=none
hi SpecialKey   guifg=#303030   guibg=NONE      ctermfg=236    ctermbg=NONE      gui=none      cterm=none
hi Title        guifg=#d7d7af   guibg=NONE      ctermfg=187    ctermbg=NONE      gui=none      cterm=none

" Text Selection
hi Cursor       guifg=bg        guibg=#af0000   ctermfg=bg     ctermbg=124       gui=none      cterm=none
hi CursorIM     guifg=bg        guibg=#af0000   ctermfg=bg     ctermbg=124       gui=none      cterm=none
hi CursorColumn guifg=NONE      guibg=#555555   ctermfg=NONE   ctermbg=238       gui=none      cterm=none
hi CursorLine   guifg=NONE      guibg=#555555   ctermfg=NONE   ctermbg=238       gui=none      cterm=none
hi Visual       guifg=NONE      guibg=#005f87   ctermfg=NONE   ctermbg=24        gui=none      cterm=none
hi VisualNOS    guifg=fg        guibg=NONE      ctermfg=fg     ctermbg=NONE      gui=underline cterm=underline
hi IncSearch    guifg=bg        guibg=#87d7ff   ctermfg=bg     ctermbg=123       gui=none      cterm=none
hi Search       guifg=bg        guibg=#ffd787   ctermfg=bg     ctermbg=221       gui=none      cterm=none

" UI
hi LineNr       guifg=#555555   guibg=#000000   ctermfg=238    ctermbg=233       gui=none      cterm=none
hi CursorLineNr guifg=#afafaf   guibg=#444444   ctermfg=245    ctermbg=bg        gui=none      cterm=none
hi Pmenu        guifg=#121212   guibg=#b2b2b2   ctermfg=233    ctermbg=249       gui=none      cterm=none
hi PmenuSel     guifg=fg        guibg=#585858   ctermfg=fg     ctermbg=240       gui=none      cterm=none
hi PMenuSbar    guifg=#121212   guibg=#c6c6c6   ctermfg=233    ctermbg=251       gui=none      cterm=none
hi PMenuThumb   guifg=fg        guibg=#767676   ctermfg=fg     ctermbg=243       gui=none      cterm=none
hi StatusLine   guifg=#121212   guibg=#b2b2b2   ctermfg=233    ctermbg=249       gui=none      cterm=none
hi StatusLineNC guifg=#121212   guibg=#767676   ctermfg=233    ctermbg=243       gui=none      cterm=none
hi TabLine      guifg=#121212   guibg=#b2b2b2   ctermfg=233    ctermbg=249       gui=none      cterm=none
hi TabLineFill  guifg=#121212   guibg=#b2b2b2   ctermfg=233    ctermbg=249       gui=none      cterm=none
hi TabLineSel   guifg=fg        guibg=#585858   ctermfg=fg     ctermbg=240       gui=none      cterm=none
hi VertSplit    guifg=#8a8a8a   guibg=#b2b2b2   ctermfg=245    ctermbg=249       gui=none      cterm=none
hi Folded       guifg=fg        guibg=#585858   ctermfg=fg     ctermbg=240       gui=none      cterm=none
hi FoldColumn   guifg=fg        guibg=#585858   ctermfg=fg     ctermbg=240       gui=none      cterm=none

" Spelling
hi SpellBad     guisp=#ee0000                   ctermfg=fg     ctermbg=160       gui=undercurl cterm=undercurl
hi SpellCap     guisp=#eeee00                   ctermfg=bg     ctermbg=226       gui=undercurl cterm=undercurl
hi SpellRare    guisp=#ffa500                   ctermfg=bg     ctermbg=214       gui=undercurl cterm=undercurl
hi SpellLocal   guisp=#ffa500                   ctermfg=bg     ctermbg=214       gui=undercurl cterm=undercurl

" Diff
hi DiffAdd      guifg=fg        guibg=#405040   ctermfg=fg     ctermbg=22        gui=none      cterm=none
hi DiffChange   guifg=fg        guibg=#605040   ctermfg=fg     ctermbg=58        gui=none      cterm=none
hi DiffDelete   guifg=fg        guibg=#504040   ctermfg=fg     ctermbg=52        gui=none      cterm=none
hi DiffText     guifg=#e0b050   guibg=#605040   ctermfg=220    ctermbg=58        gui=none      cterm=none

" Misc
hi Directory    guifg=fg        guibg=NONE      ctermfg=fg     ctermbg=NONE      gui=none      cterm=none
hi ErrorMsg     guifg=#ff8787   guibg=NONE      ctermfg=210    ctermbg=NONE      gui=none      cterm=none
hi SignColumn   guifg=#afafaf   guibg=NONE      ctermfg=145    ctermbg=NONE      gui=none      cterm=none
hi MoreMsg      guifg=#87ffff   guibg=NONE      ctermfg=123    ctermbg=NONE      gui=none      cterm=none
hi ModeMsg      guifg=fg        guibg=NONE      ctermfg=fg     ctermbg=NONE      gui=none      cterm=none
hi Question     guifg=fg        guibg=NONE      ctermfg=fg     ctermbg=NONE      gui=none      cterm=none
hi WarningMsg   guifg=#d7af87   guibg=NONE      ctermfg=180    ctermbg=NONE      gui=none      cterm=none
hi WildMenu     guifg=NONE      guibg=#005f87   ctermfg=NONE   ctermbg=24        gui=none      cterm=none
hi ColorColumn  guifg=NONE      guibg=#303030   ctermfg=NONE   ctermbg=236       gui=none      cterm=none
hi Ignore       guifg=bg                        ctermfg=bg