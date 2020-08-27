" Vim color file - fit
"
" Mantainer : si1kdd <lksstb.scott@gmail.com>
"
"

hi clear

if exists('syntax on')
    syntax reset
endif

let g:colors_name = 'fit'

" create a hightline function
function! s:hi(group, fg, bg, style, special)
    let l:command = 'hi ' . a:group

    if (!empty(a:fg))
        let l:command .= ' guifg=' . a:fg
    endif

    if (!empty(a:bg))
        let l:command .= ' guibg=' . a:bg
    endif

    if (!empty(a:style))
        let l:command .= ' gui=' . a:style
    endif

    if (!empty(a:special))
        let l:command .= ' guisp=' . a:special
    endif

    execute l:command
endfunction

" modify color in hex code
" let s:dred = '#ED0045'  " dark red
let s:dark = '#000000'  " pure dark
let s:whit = '#FFFFFF'  " pure white

let s:dred = '#C92A89'  " statement color
let s:lred = '#EC9055'  " light red
let s:dora = '#FF8000'  " dark orange
let s:lora = '#FFC000'  " light orange
let s:dyel = '#F0FF1E'  " dark yellow
let s:lyel = '#FFFF80'  " light yellow
let s:dgre = '#99E699'  " dark green
let s:lgre = '#37BE0E'  " light green
let s:dblu = '#0096FF'  " dark blue
let s:lblu = '#00C9F0'  " light blue
let s:dmag = '#BC23A0'  " dark magenta
let s:comm = '#957A99'  " Comment color
let s:lmag = '#C099FE'  " light magenta
let s:sele = '#3901A0'  " visual select area
let s:ligy = '#707979'  " light grey
let s:grey = '#002B38'  " blue grey
let s:fold = '#1B3359'  " folded color
let s:move = '#002222'  " cursor move
let s:text = '#A2F798'  " for normal text

" Call highlight function
call s:hi('Normal',           s:text, s:dark, '','')
call s:hi('SpecialKey',       s:dblu, s:dark, '', '')
call s:hi('NonText',          s:dblu, '',     'NONE', '')
call s:hi('Directory',        s:dblu, s:dark, '', '')
call s:hi('ErrorMsg',         s:dark, s:dred, '', '')
call s:hi('MoreMsg',          s:dark, s:lyel, 'NONE', '')
call s:hi('ModeMsg',          s:dark, s:lyel, 'NONE', '')
call s:hi('WarningMsg',       s:dark, s:lyel, '', '')
call s:hi('WildMenu',         s:sele, s:whit, '', '')
call s:hi('Question',         s:dark, s:lyel, 'NONE', '')

call s:hi('StatusLine',       s:dark, s:dblu, 'NONE', '')
call s:hi('StatusLineNC',     s:dblu, s:dark, 'NONE', '')

call s:hi('IncSearch',        'NONE', 'NONE', 'INVERSE', '')
call s:hi('Search',           s:whit, s:lgre, '', '')
call s:hi('VertSplit',        s:dark, s:dblu, '', '')
call s:hi('Title',            s:lblu, s:dark, 'NONE', '')

call s:hi('LineNr',           s:ligy, '', '', '')
call s:hi('CursorLineNr',     s:dyel, s:grey, 'NONE', '')

call s:hi('Visual',           s:lyel, s:sele, '', '')
call s:hi('VisualNOS',        s:dark, s:lblu, 'NONE', '')

call s:hi('Folded',           s:ligy, s:fold, '', '')
call s:hi('FoldColumn',       s:dark, s:dblu, '', '')

call s:hi('DiffAdd',          s:grey, s:lgre, '', '')
call s:hi('DiffChange',       s:whit, s:dblu, '', '')
call s:hi('DiffDelete',       s:dora, s:dred, 'NONE', '')
call s:hi('DiffText',         s:whit, s:dred, 'NONE', '')

call s:hi('SignColumn',       s:lyel, s:dark, '', '')
call s:hi('Conceal',          s:lyel, s:dark, '', '')

call s:hi('SpellBad',         'NONE', 'NONE', 'UNDERCURL', s:dred)
call s:hi('SpellCap',         'NONE', 'NONE', 'UNDERCURL', s:dblu)
call s:hi('SpellRare',        'NONE', 'NONE', 'UNDERCURL', s:dmag)
call s:hi('SpellLocal',       'NONE', 'NONE', 'UNDERCURL', s:lgre)

call s:hi('Pmenu',            s:whit, s:grey, '', '')
call s:hi('PmenuSel',         s:dark, s:dora, 'NONE', '')
call s:hi('PmenuSbar',        s:dark, s:lora, '', '')
call s:hi('PmenuThumb',       s:dark, s:dred, '', '')

call s:hi('TabLine',          s:dblu, s:dark, '', '')
call s:hi('TabLineSel',       s:lblu, s:dgre, 'NONE', '')
call s:hi('TabLineFill',      s:dark, s:dark, '', '')

call s:hi('CursorColumn',     'NONE', s:move, '', '')
call s:hi('CursorLine',       'NONE', s:move, '', '')
call s:hi('ColorColumn',      'NONE', s:move, '', '')

call s:hi('StatusLineTerm',   s:dark, s:lgre, 'NONE', '')
call s:hi('StatusLineTermNC', s:dblu, s:dark, '', '')

call s:hi('Cursor',           s:dark, s:lora, '', '')
call s:hi('lCursor',          s:dark, s:lora, '', '')

call s:hi('MatchParen',       s:dark, s:lblu, '', '')
call s:hi('ToolbarLine',      s:lora, s:dark, '', '')
call s:hi('ToolbarButton',    s:lora, s:dark, 'NONE', '')

call s:hi('Comment',          s:comm, 'NONE', '', '')
call s:hi('Constant',         s:lblu, 'NONE', '', '')
call s:hi('Special',          s:dblu, 'NONE', '', '')
call s:hi('Identifier',       s:dora, 'NONE', '', '')
call s:hi('Statement',        s:dred, 'NONE', 'NONE', '')
call s:hi('Type',             s:dyel, 'NONE', 'BOLD', '')
call s:hi('Structure',        s:lblu, 'NONE', 'BOLD', '')
call s:hi('StorageClass',     s:lgre, 'NONE', 'BOLD', '')
call s:hi('PreProc',          s:lmag, 'NONE', '', '')
call s:hi('Underlined',       'NONE', 'NONE', 'UNDERLINE', '')
call s:hi('Ignore',           s:dgre, 'NONE', '', '')
call s:hi('Error',            s:dark, s:dred, '', '')
call s:hi('Todo',             s:dark, s:lora, '', '')

hi CursorLine     cterm=NONE
hi CursorColumn   cterm=NONE
hi DiffText       cterm=NONE
hi Identifier     cterm=BOLD
hi ModeMsg        cterm=NONE
hi StatusLine     cterm=NONE
hi StatusLineTerm cterm=NONE
hi TabLine        cterm=NONE
hi TabLineSel     cterm=NONE
hi ToolbarButton  cterm=NONE
hi VisualNOS      cterm=NONE
hi Underlined     ctermfg=NONE ctermfg=NONE
hi Type           cterm=BOLD
hi Statement      cterm=BOLD
hi Comment        cterm=BOLD

hi! link lilySlur         Comment
hi! link vimCommentString Comment
hi! link vimCommentTitle  Comment
hi! link TrailingSpac     DiffDelete
