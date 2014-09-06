" Global Settings
"==============================================================================
" Setup
set nocompatible               " Use Vim settings. Must be first since it changes other options as a side effect.  (cp)
filetype on                    " Turn filetype detection on.                                                       (ft)
filetype plugin on             " Turn filetype plugins on.                                                         (ft)
filetype indent on             " Turn filetype indent scripts on.                                                  (ft)

" Miscellaneous
set autoread                   " Automatically update external changes to file.                                    (ar)
set backspace=indent,eol,start " Allows backspacing beyond starting point of insert mode, indents and line breaks. (bs)
set fileformats=unix,dos,mac   " The <EOL> formats when editing new buffers. Use Unix as the standard file type.  (ffs)
set history=100                " Keep the given number of lines of command history.                                (hi)
set hidden                     " Buffer will not unload if it is not displayed in a window.                       (hid)
set lazyredraw                 " Screen will not be redrawn while executing marcos.                                (lz)
set magic                      " Changes special characters used in search patterns (default is on)
set mouse=a                    " Enable the use of the mouse.
set infercase                  " During keyword completion, fix case of new word (when ignore case is on).        (inf)
"set nrformats+=alpha          " Adds alpha chars to list that gets incremented/decremented with ^A/^X.            (nf)
"set textwidth=120             " Number of columns before an automatic line break is inserted (see formatoptions). (tw)
"set winminheight=0            " The minimal height of the window when it's not the current window.               (wmh)
set undolevels=100             " Keep 100 changes that can be undone.                                              (ul)

" Backup
"set backup                    " Will create a backup before overwriting a file.                                   (bk)
"set backupext=.bkup           " Defines the extension used in a backup file (default is '~').                    (bex)

" Colors
syntax on                      " Turns syntax highlighting on.
colorscheme darkblue           " Defines the color scheme of the syntax highlighting.
set background=dark            " Try to use colors that look good with either setting 'light' or 'dark'            (bg)
set t_Co=256                   " Set term number of colors.

" Display
set encoding=utf8              " Sets the character encoding used inside Vim.                                     (enc)
set laststatus=2               " Always show the status line.                                                      (ls)
set matchtime=2                " Tenths of a second to show the matching paren when showmatch is set.             (mat)
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
"set foldenable                " Enables or disables folding.                                                     (fen)
"set foldlevel=99              " When file is opened, don't close any folds.                                      (fdl)
"set foldmethod=indent         " Creates a fold for every level of indentation.                                   (fdm)
"set foldnestmax=3             " Limits the number of folds for the 'indent' and 'sytax' methods                  (fdn)

" Format Options
set formatoptions+=c           " Auto-wrap comments using textwidth and insert comment leader.                     (fo)
set formatoptions+=r           " Auto-insert comment leader after hitting <Enter> in Insert mode.                  (fo)
set formatoptions+=o           " Auto-insert comment leader after hitting 'o' or 'O' in Normal mode.               (fo)
set formatoptions+=q           " Allow formatting of comments with 'gq'.                                           (fo)

" Line Numbers
set numberwidth=3              " Minimum number of columns to use for line number.                                (nuw)
if exists('+relativenumber')
  set relativenumber           " Show the line number relative to the current line (Vim v7.3).                    (rnu)
endif

" List Characters              " Strings used in 'list' mode to show hidden characters (default=eol:$).
"set listchars+=tab:>-         " Char for a tab.                                                                  (lcs)
"set listchars+=trail:-        " Char for trailing spaces.                                                        (lcs)
set listchars+=precedes:<      " Char in first coloumn if 'nowrap' and there is text before.                      (lcs)
set listchars+=extends:>       " Char in last coloumn if 'nowrap' and there is text after.                        (lcs)

" Scroll
set scrolloff=3                " Minimum number of rows to keep above and below the cursor.                        (so)
"set sidescroll=3              " Minimum number of columns to scroll horizontally.                                 (ss)
"set sidescrolloff=3           " Minimum number of columns to keep to the left and the right if nowrap is set.   (siso)

" Search
set hlsearch                   " Highlights all instances of the last searched string.                            (hls)
set incsearch                  " Highlights what you are searching for as you type.                                (is)
set ignorecase                 " Ignores case in search patterns.                                                  (ic)
set smartcase                  " Don't ignore case when the search pattern has uppercase.                         (scs)
set wrapscan                   " Allows search to wrap to top of document when the bottom has been hit.            (ws)

" Splits
set splitbelow                 " Split the window below when splitting horizontally.                               (sb)
set splitright                 " Split the window to the right when splitting vertically.                         (spr)

"
" " Format the status line
" Line:\ %l

" Tabs
set autoindent                 " Turn on auto-indenting.                                                           (ai)
set copyindent                 " When auto-indenting, use the indenting format of the previous line.               (ci)
set expandtab                  " Insert spaces instead of <tab>                                                    (et)
set shiftwidth=2               " Width (in spaces) used in each step of autoindent (as well as << and >>).         (sw)
"set smarttab                  " 'shiftwidth' used in front of a line, but 'tabstop' used otherwise.              (sta)
set softtabstop=2              " Makes spaces feel like tabs when deleting (e.g. Delete all 4 spaces at once).    (sts)
set tabstop=2                  " Width (in spaces) that a <tab> is displayed as.                                   (ts)

" TOhtml
"let html_use_css = 1          " The ':%TOhtml' command generates html without <font> tags.

" Wild Card Completion
set wildmode=list:longest      " List all matches and complete till longest string.                                (wim)
set wildmenu                   " Enable Ctrl-n and Ctrl-p to scroll through matches.                               (wmu)
set wildignore+=*.o            " Ignore file pattern when completing file or directory names.                      (wig)
set wildignore+=*.obj
set wildignore+=*.pyc
set wildignore+=*.png
set wildignore+=*.jpg
set wildignore+=*.gif

" Wrap
set linebreak                  " Wrap long lines at a space instead of in the middle of a word.                   (lbr)
set nowrap                     " Allows text to continue off the window (need horizontal scrolling).

" Status Line
"   %c: Column number.
"   %f: Path to the file in the buffer as relative to current directory.
"   %F: Full path to the file in the buffer.
"   %l: Line number.
"   %P: Percentage through file of displayed window.  This is like the percentage described for 'ruler'.
"   %m: Modified flag, text is '[+]'.
"   %r: Readonly flag, text is '[RO]'.
"   %t: File name (tail) of file in the buffer.
"   %=: Separation point between left and right aligned items.
"   %<: Where to truncate line if too long. Default is at the start.
"   %{getcwd()}: Full path to current working directory.
set statusline=\ %f%m%r\ %<%{getcwd()}%=%{HasPaste()}\ %l,%c\(%P)
hi StatusLine ctermbg=brown ctermfg=white

" Highlight EOL whitespace with a red background except on the current line being edited.
autocmd InsertEnter * syn clear EOLWS | syn match EOLWS excludenl /\s\+\%#\@!$/
autocmd InsertLeave * syn clear EOLWS | syn match EOLWS excludenl /\s\+$/
highlight EOLWS ctermbg=red guibg=red

" Remappings
" =============================================================================
" Remapping commands
"   map      Map recursively.     The right-hand side of the map is re-mappable.
"   noremap  Map non-recursively. The right-hand side of the map is not re-mappable.

" A prepended character of map or noremap indicates the mode for which the map is applied:
"   n - Normal mode.
"   i - Insert mode.
"   v - Visual and select mode.
"   s - Select mode.
"   x - Visual mode.
"   c - Command-line mode.
"   o - Operator pending mode.

" Normal Remappings
" -----------------

" Treat long lines as break lines (useful to move around wrapped lines).
nnoremap j gj
nnoremap k gk

" Remap 0 to first non-blank character instead of start of line.
nnoremap 0 ^

" Move viewport up/down by three(3) lines instead of one(1).
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

"inoremap ;; <esc>  " remap hh to escape in insert mode.
"snoremap ;; <esc>  " remap hh to escape in insert mode.
"xnoremap ;; <esc>  " remap hh to escape in insert mode.
"cnoremap ;; <esc>  " remap hh to escape in insert mode.
"onoremap ;; <esc>  " remap hh to escape in insert mode.

" Visual mode pressing * or # searches for the current selection
" " Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>

" Map Leader Remappings
" ---------------------

" Remap space to a NO-OP.
nnoremap <SPACE> <Nop>

" Set mapleader to be able to do extra key combinations.
let mapleader = "\<SPACE>"

" Move a line of text up or down.
nnoremap <leader>j :m+<cr>
nnoremap <leader>k :m-2<cr>
vnoremap <leader>j :m'>+<cr>
vnoremap <leader>k :m'<-2<cr>

" Close the current buffer
"nmap <leader>bd :Bclose<cr>

" Switch CWD to the directory of the open buffer
"map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Toggle paste mode on and off
nnoremap <leader>pp :setlocal paste!<cr>

" Move up/down half a screen.
nnoremap <leader>u <C-u>
nnoremap <leader>d <C-d>

" Move viewport up/down one line.
nnoremap <leader>e <C-e>
nnoremap <leader>y <C-y>

 " Enter blockwise visual mode.
nnoremap <leader>q <C-q>
nnoremap <leader>v <C-v>

" Decrease/Increase window split size horizontally.
nnoremap <leader>w, <C-w><
nnoremap <leader>w. <C-w>>

" Decrease/Increase window split size vertically.
nnoremap <leader>w- <C-w>-
nnoremap <leader>w+ <C-w>+

" Normalize window split sizes.
nnoremap <leader>w+ <C-w>+

" Switch to window below(j), above(k), left(h), right(l).
nnoremap <leader>wj <C-w>j
nnoremap <leader>wk <C-w>k
nnoremap <leader>wh <C-w>h
nnoremap <leader>wl <C-w>l

" Move window below(J), above(K), left(H), right(L).
nnoremap <leader>wJ <C-w>J
nnoremap <leader>wK <C-w>K
nnoremap <leader>wH <C-w>H
nnoremap <leader>wL <C-w>L

" Split current window vertically/horizontally.
nnoremap <leader>wv <C-w>v
nnoremap <leader>ws <C-w>s

" Remove trailing whitespace
nnoremap <silent> <leader>rtws :call <SID>RemoveTrailingWhitespace()<CR>

" File Contextual Settings
" =============================================================================

" C
autocmd FileType c,h setlocal cindent                  " Enable the intelligent indentation for C.               (cin)
autocmd FileType c,h setlocal matchpairs+==:;          " Allow the match pairs (%) to work with '=' and ';'.     (mps)
autocmd FileType c,h setlocal shiftwidth=2             " Width (in spaces) used in each step of autoindent.       (sw)
autocmd FileType c,h setlocal softtabstop=2            " Makes spaces feel like tabs when deleting.              (sts)
autocmd FileType c,h setlocal tabstop=2                " Width (in spaces) that a <tab> is displayed as.          (ts)

" C++
autocmd FileType cpp,hpp setlocal matchpairs+==:;      " Allow the match pairs (%) to work with '=' and ';'.     (mps)
autocmd FileType cpp,hpp setlocal shiftwidth=2         " Width (in spaces) used in each step of autoindent.       (sw)
autocmd FileType cpp,hpp setlocal softtabstop=2        " Makes spaces feel like tabs when deleting.              (sts)
autocmd FileType cpp,hpp setlocal tabstop=2            " Width (in spaces) that a <tab> is displayed as.          (ts)

" Java
autocmd FileType java setlocal matchpairs+==:;         " Allow the match pairs (%) to work with '=' and ';'.     (mps)
autocmd FileType java setlocal smartindent             " Enable the smart indenting feature.                      (si)
autocmd FileType cpp,hpp setlocal shiftwidth=2         " Width (in spaces) used in each step of autoindent.       (sw)
autocmd FileType cpp,hpp setlocal softtabstop=2        " Makes spaces feel like tabs when deleting.              (sts)
autocmd FileType cpp,hpp setlocal tabstop=2            " Width (in spaces) that a <tab> is displayed as.          (ts)

" Javascript
autocmd FileType javascript setlocal matchpairs+==:;   " Allow the match pairs (%) to work with '=' and ';'.     (mps)
autocmd FileType javascript setlocal smartindent       " Enable the smart indenting feature.                      (si)
autocmd FileType javascript setlocal shiftwidth=2      " Width (in spaces) used in each step of autoindent.       (sw)
autocmd FileType javascript setlocal softtabstop=2     " Makes spaces feel like tabs when deleting.              (sts)
autocmd FileType javascript setlocal tabstop=2         " Width (in spaces) that a <tab> is displayed as.          (ts)

" HTML
autocmd FileType xhtml,html,htm setlocal shiftwidth=2  " Width (in spaces) used in each step of autoindent.       (sw)
autocmd FileType xhtml,html,htm setlocal softtabstop=2 " Makes spaces feel like tabs when deleting.              (sts)
autocmd FileType xhtml,html,htm setlocal tabstop=2     " Width (in spaces) that a <tab> is displayed as.          (ts)

" PHP
autocmd FileType php setlocal shiftwidth=2             " Width (in spaces) used in each step of autoindent.       (sw)
autocmd FileType php setlocal softtabstop=2            " Makes spaces feel like tabs when deleting.              (sts)
autocmd FileType php setlocal tabstop=2                " Width (in spaces) that a <tab> is displayed as.          (ts)

" Python
autocmd FileType python setlocal smartindent           " Enable the smart indenting feature.                      (si)
autocmd FileType python setlocal textwidth=79          " Autoinsert newline when line width is greater than this. (tw)
autocmd FileType python setlocal shiftwidth=4          " Width (in spaces) used in each step of autoindent.       (sw)
autocmd FileType python setlocal softtabstop=4         " Makes spaces feel like tabs when deleting.              (sts)
autocmd FileType python setlocal tabstop=4             " Width (in spaces) that a <tab> is displayed as.          (ts)
if exists('+colorcolumn')
  autocmd FileType python setlocal colorcolumn=80      " Column that is highlighted.                              (cc)
  hi ColorColumn ctermbg=brown ctermfg=white
endif

" Text
autocmd FileType txt setlocal formatoptions+=n         " Auto-indent lists.                                       (fo)
autocmd FileType txt setlocal formatoptions+=t         " Auto-wrap text using textwidth.                          (fo)

" XML
autocmd FileType xml setlocal shiftwidth=2             " Width (in spaces) used in each step of autoindent.       (sw)
autocmd FileType xml setlocal softtabstop=2            " Makes spaces feel like tabs when deleting.              (sts)
autocmd FileType xml setlocal tabstop=2                " Width (in spaces) that a <tab> is displayed as.          (ts)

" Abbreviations
" =============================================================================

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
" =============================================================================

" Remove trailing white space while keeping cursor position and last search.
function! <SID>RemoveTrailingWhitespace()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction

" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PasteMode'
    en
    return ''
endfunction

" Renames param1 tags to be param2 tags
"function! RenameTag(param1, param2)
"    :%s/<\(\/\?\)a:param1\(\_s*\)/<\1a:param2\2/gci
"endfunction

"" Reverses all the lines in the file (top to bottom)
"function! ReverseLines()
"    :g/^/m0
"endfunction

" Strips the tag defined by the parameter (for html pages)
"function! StripTag(TagName)
"    :%s/a:TagName/hello/gci
"    ":% s/<[^>]\+>//gci
"endfunction

function! VisualSelection(direction) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'gv'
        call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.')
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction

" Command Reference
" =============================================================================

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

