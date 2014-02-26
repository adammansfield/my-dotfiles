" Global Settings
" -----------------------------------------------------------------------------
set nocompatible               " Use Vim defaults.                                                                 (cp)

" Miscellaneous
set backspace=indent,eol,start " Allows backspacing beyond starting point of insert mode, indents and line breaks. (bs)
set history=50                 " Keep 50 lines of command history.                                                 (hi)
set infercase                  " During keyword completion, fix case of new word (when ignore case is on).        (inf)
"set nrformats+=alpha          " Adds alpha chars to list that gets incremented/decremented with ^A/^X.            (nf)
set sidescroll=5               " The minimal number of columns to scroll horizontally.                             (ss)
set textwidth=80               " Number of columns before an automatic line break is inserted (see formatoptions). (tw)
"set winminheight=0            " The minimal height of the window when it's not the current window.               (wmh)
set undolevels=100             " Keep 100 changes that can be undone..                                             (ul)

" Backup
"set backup                    " Will create a backup before overwriting a file.                                   (bk)
"set backupext=.bkup           " Defines the extension used in a backup file (default is '~').                    (bex)

" Colors
syntax on                      " Turns syntax highlighting on.
colorscheme darkblue           " Defines the color scheme of the syntax highlighting.
set t_Co=256                   " Set term number of colors.

" Display
"set number                    " Display line numbers.                                                             (nu)
set ruler                      " Display the cursor position at all times.                                         (ru)
set showcmd                    " Display an incomplete command in the lower right.                                 (sc)
set showmatch                  " Briefly jump to matching bracket when inserting one.                              (sm)

" Error Bell
set noerrorbells               " Disable audio errorbells.                                                       (noeb)  
set visualbell                 " Enable Vim's internal visual bell (To fully disable using t_vb later).            (vb)
set t_vb=                      " Set term visual bell to do nothing.

" Folding
"set foldcolumn=6              " Width of fold column (to see where folds are).                                   (fdc)
"set foldmethod=indent         " Creates a fold for every level of indentation.                                   (fdm)
"set foldlevel=99              " When file is opened, don't close any folds.                                      (fdl)
"set foldenable                " Enables or disables folding.                                                     (fen)

" Format Options
set formatoptions+=c           " Auto-wrap comments using textwidth and insert comment leader.                     (fo)
set formatoptions+=r           " Auto-insert comment leader after hitting <Enter> in Insert mode.                  (fo)
set formatoptions+=o           " Auto-insert comment leader after hitting 'o' or 'O' in Normal mode.               (fo)
set formatoptions+=q           " Allow formatting of comments with 'gq'.                                           (fo)

" List Characters              " Strings used in 'list' mode to show hidden characters (default=eol:$).
"set listchars+=tab:>-         " Char for a tab.                                                                  (lcs)
"set listchars+=trail:-        " Char for trailing spaces.                                                        (lcs)
set listchars+=precedes:<      " Char in first coloumn if 'nowrap' and there is text before.                      (lcs)
set listchars+=extends:>       " Char in last coloumn if 'nowrap' and there is text after.                        (lcs)

" Search
set hlsearch                   " Highlights all instances of the last searched string.                            (hls)
set incsearch                  " Highlights what you are searching for as you type.                                (is)
set ignorecase                 " Ignores case in search patterns.                                                  (ic)
set smartcase                  " Don't ignore case when the search pattern has uppercase.                         (scs)
set wrapscan                   " Allows search to wrap to top of document when the bottom has been hit.            (ws)

" Tabs
set autoindent                 " Turn on auto-indenting.                                                           (ai)
set copyindent                 " When auto-indenting, use the indenting format of the previous line.               (ci)
set expandtab                  " Insert spaces instead of <tab>                                                    (et)
set shiftwidth=4               " Width (in spaces) used in each step of autoindent (as well as << and >>).         (sw)
"set smarttab                  " 'shiftwidth' used in front of a line, but 'tabstop' used otherwise.              (sta)
set softtabstop=4              " Makes spaces feel like tabs when deleting (e.g. Delete all 4 spaces at once).    (sts)
set tabstop=4                  " Width (in spaces) that a <tab> is displayed as.                                   (ts)

" TOhtml
"let html_use_css = 1           " The ':%TOhtml' command generates html without <font> tags.

" Wrap
set linebreak                  " Wrap long lines at a space instead of in the middle of a word.                   (lbr)
set nowrap                     " Allows text to continue off the window (need horizontal scrolling).


" File Contextual Settings
" -----------------------------------------------------------------------------

" C
autocmd FileType c,h setlocal cindent                  " Enable the intelligent indentation for C.           (cin)
autocmd FileType c,h setlocal matchpairs+==:;          " Allow the match pairs (%) to work with '=' and ';'. (mps)
autocmd FileType c,h setlocal shiftwidth=2             " Width (in spaces) used in each step of autoindent.   (sw)
autocmd FileType c,h setlocal softtabstop=2            " Makes spaces feel like tabs when deleting.          (sts)
autocmd FileType c,h setlocal tabstop=2                " Width (in spaces) that a <tab> is displayed as.      (ts)

" C++
autocmd FileType cpp,hpp setlocal matchpairs+==:;      " Allow the match pairs (%) to work with '=' and ';'. (mps)
autocmd FileType cpp,hpp setlocal shiftwidth=2         " Width (in spaces) used in each step of autoindent.   (sw)
autocmd FileType cpp,hpp setlocal softtabstop=2        " Makes spaces feel like tabs when deleting.          (sts)
autocmd FileType cpp,hpp setlocal tabstop=2            " Width (in spaces) that a <tab> is displayed as.      (ts)

" Java
autocmd FileType java setlocal matchpairs+==:;         " Allow the match pairs (%) to work with '=' and ';'. (mps)
autocmd FileType java setlocal smartindent             " Enable the smart indenting feature.                  (si)

" Javascript
autocmd FileType js setlocal matchpairs+==:;           " Allow the match pairs (%) to work with '=' and ';'. (mps)
autocmd FileType js setlocal smartindent               " Enable the smart indenting feature.                  (si)

" HTML
autocmd FileType xhtml,html,htm setlocal shiftwidth=2  " Width (in spaces) used in each step of autoindent.   (sw)
autocmd FileType xhtml,html,htm setlocal softtabstop=2 " Makes spaces feel like tabs when deleting.          (sts)
autocmd FileType xhtml,html,htm setlocal tabstop=2     " Width (in spaces) that a <tab> is displayed as.      (ts)

" PHP
autocmd FileType php setlocal shiftwidth=2             " Width (in spaces) used in each step of autoindent.   (sw)
autocmd FileType php setlocal softtabstop=2            " Makes spaces feel like tabs when deleting.          (sts)
autocmd FileType php setlocal tabstop=2                " Width (in spaces) that a <tab> is displayed as.      (ts)

" Python
autocmd FileType py setlocal smartindent               " Enable the smart indenting feature.                  (si)

" Text
autocmd FileType txt setlocal formatoptions+=n         " Auto-indent lists.                                   (fo)
autocmd FileType txt setlocal formatoptions+=t         " Auto-wrap text using textwidth.                      (fo)

" XML
autocmd FileType xml setlocal shiftwidth=2             " Width (in spaces) used in each step of autoindent.   (sw)
autocmd FileType xml setlocal softtabstop=2            " Makes spaces feel like tabs when deleting.          (sts)
autocmd FileType xml setlocal tabstop=2                " Width (in spaces) that a <tab> is displayed as.      (ts)

" Remove any extra white space at the end of a line before writing to any file.
"autocmd! BufWrite,FileWritePre * call RemoveWhiteSpace()


" Abbreviations
" -----------------------------------------------------------------------------

" C
abbreviate #i #include
abbreviate #d #define

" HTML
abbreviate <a <a href=""></a><left><left><left><left><left>
abbreviate <i <img src="" /><left><left><left>
abbreviate <? <?php?><left><left>
"abbreviate l" &ldquo;&rdquo;<left><left><left><left><left><left>
"abbreviate r" &rdquo;
"abbreviate l' &lsquo;
"abbreviate r' &rsquo;
"abbreviate "" &quot;&quot;<left><left><left><left><left>


" Functions
" -----------------------------------------------------------------------------

" Renames param1 tags to be param2 tags
"function! RenameTag(param1, param2)
"    :%s/<\(\/\?\)a:param1\(\_s*\)/<\1a:param2\2/gci
"endfunction

" Strips the tag defined by the parameter (for html pages)
"function! StripTag(TagName)
"    :%s/a:TagName/hello/gci
"    ":% s/<[^>]\+>//gci
"endfunction

"" Reverses all the lines in the file (top to bottom)
"function! ReverseLines()
"    :g/^/m0
"endfunction

" Removes superfluous white space from the end of a line
"function! RemoveWhiteSpace()
"    :%s/\s*$//g
"    :'^
"    "`.
"endfunction


" Command Reference
" ------------------------------------------------------------

" *                     - searches for word under cursor
" gd                    - finds definition of variable/function under cursor
" ga                    - prints the ascii value of character under cursor
" gf                    - opens file under the cursor (in split view)
" gi                    - goes to insert mode in the same spot as you last inserted
" ~                     - changes case of character
" :r !<cmd>             - reads the output of the shell <cmd> into the file
" :% s/hello/A/gc       - typical search and replace command

" :% !tidy              - runs the code through the 'tidy' program

" :runtime! syntax/2html.vim
" :10,40TOhtml

" command reference ->  " za : fold toggle  toggles between a fold being opened and closed (zA does it recursively)
"                       " zc : fold close   close 1 fold under the cursor (zC does it recursively)
                        " zo : fold open    open 1 fold under the cursor (zO does it recursively)
                        " zm : fold more    increases foldlevel by 1 (zM opens all folds)
                        " zr : fold reduce  decreses foldlevel by 1 (zR closes all folds)

" :retab                - when expandtab is set, replace all tabs in the file with the # of spaces defined in 'shiftwidth'
" :retab!               - when expandtab is not set, replace the number of spaces in 'shiftwidth' with a tab
if has("cscope")
    set csprg=/usr/bin/cscope
    set csto=0
    set cst
    set nocsverb
    " add any database in current directory
    if filereadable("cscope.out")
        cs add cscope.out
    " else add database pointed to by environment
    elseif $CSCOPE_DB != ""
        cs add $CSCOPE_DB
    endif
    set csverb

    "   's'   symbol: find all references to the token under cursor
    "   'g'   global: find global definition(s) of the token under cursor
    "   'c'   calls:  find all calls to the function name under cursor
    "   't'   text:   find all instances of the text under cursor
    "   'e'   egrep:  egrep search for the word under cursor
    "   'f'   file:   open the filename under cursor
    "   'i'   includes: find files that include the filename under cursor
    "   'd'   called: find functions that function under cursor calls
    nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
    nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>
endif

