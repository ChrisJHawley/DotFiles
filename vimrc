syntax on
set bg=dark
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
filetype plugin on
filetype indent on
set bs=2
behave xterm
set incsearch
set hlsearch

set ls=2
if has('statusline')
    function SetStatusLineStyle()
        if &stl == '' || &stl =~ 'synID'
        let &stl="%f %y%([%R%M]%)%{'!'[&ff=='".&ff."']}%{'$'[!&list]}%=#%n %l/%L,%c%V "
    else
        let &stl="%f %y%([%R%M]%)%{'!'[&ff=='".&ff."']}%{'$'[!&list]} (%{synIDattr(synID(line('.'),col('.'),0),'name')})%=#%n %l/%L,%c%V "
    endif
    endfunc
    " Switch between the normal and vim-debug modes in the status line
    nmap _ds :call SetStatusLineStyle()<CR>
    call SetStatusLineStyle()
    " Window title
    if has('title')
    set titlestring=%t%(\ [%R%M]%)
    endif
endif

if has('syntax')
	let perl_include_pod=1
	let is_bash=1
	syntax on
	if v:version >= 600
		filetype plugin indent on
	endif
endif

" Other useful shortcuts
" F6 to set modifiable
map <F6> :set modifiable! <CR><LF>
" F7 to toggle paste mode
map <F7> :set paste! <CR><LF>
" F8 to bring up recently opened files
map <F8> :MRU <CR><LF>
" F9 to pretty a line of XML
map <F9> :.! prettyxml - <CR><LF>
" F10 to toggle linenumbers
map <F10> :set nonumber! <CR><LF>
" F11 to quit all files - useful for vimdiff, but ensure that the quit isn't
" done without saving, in case it's hit by accident.
map <F11> :qa <CR><LF>

map <up> gk
imap <up> <C-o>gk
map <down> gj
imap <down> <C-o>gj
map <home> g<home>
imap <home> <C-o>g<home>
map <end> g<end>
imap <end> <C-o>g<end>

set linebreak
set display+=lastline

set number

" I can't always type well...
iab boolena boolean
iab pirnt print
iab pritn print
iab serach search
iab vairable variable
iab varibale variable
iab varibales varibales
iab udpate update
iab teh the
