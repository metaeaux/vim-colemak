" Description {{{
"   Original by Shai Coleman, 2008-04-21.  http://colemak.com/
"   Modified by Esko, 2012-09-14.
"   Modified by metaeaux, 2022.03.09
"
"   Load colemak.vim after all other Vim scripts.
"
"   Refer to ../README.markdown for keymap explanations.
" }}}
" Require Vim >=7.0 {{{
    if v:version < 700 | echohl WarningMsg | echo "colemak.vim: You need Vim version 7.0 or later." | echohl None | finish | endif
" }}}

function! ColemakEnable()
" Up/down/left/right {{{
    nnoremap m h|xnoremap m h|onoremap m h|
    nnoremap n j|xnoremap n j|onoremap n j|
    nnoremap e k|xnoremap e k|onoremap e k|
    nnoremap i l|xnoremap i l|onoremap i l|
" }}}
" Words forward/backward {{{
    " l/L = back word/WORD
    " u/U = end of word/WORD
    " y/Y = forward word/WORD
    nnoremap l b|xnoremap l b|onoremap l b|
    nnoremap L B|xnoremap L B|onoremap L B|
    nnoremap u e|xnoremap u e|onoremap u e|
    nnoremap U E|xnoremap U E|onoremap U E|
    nnoremap y w|xnoremap y w|onoremap y w|
    nnoremap Y W|xnoremap Y W|onoremap Y W|
    cnoremap <C-L> <C-Left>
    cnoremap <C-Y> <C-Right>
" }}}
" inSert/Replace/append (T) {{{
    nnoremap s i|
    nnoremap S I|
    nnoremap t a|
    nnoremap T A|
" }}}
" Change {{{
    nnoremap w c|xnoremap w c|
    nnoremap W C|xnoremap W C|
    nnoremap ww cc|
" }}}
" Cut/copy/paste {{{
    nnoremap x x|xnoremap x d|
    nnoremap c y|xnoremap c y|
    " nnoremap v p|xnoremap v p|
    " paste without replacing contents of register
    nnoremap v p|xnoremap v "_c<C-r><C-o>+<Esc>|
    nnoremap X dd|xnoremap X d|
    nnoremap C yy|xnoremap C y|
    nnoremap V P|xnoremap V P|
    nnoremap gv gp|xnoremap gv gp|
    nnoremap gV gP|xnoremap gV gP|
" }}}
" Undo/redo {{{
    nnoremap z u|xnoremap z :<C-U>undo<CR>|
    "nnoremap gz U|xnoremap gz :<C-U>undo<CR>|
    nnoremap <C-Z> <C-R>|xnoremap <C-Z> :<C-U>redo<CR>|
" }}}
" Visual mode {{{
    nnoremap a v|xnoremap a v|
    nnoremap A V|xnoremap A V|
    nnoremap <C-A> <C-V>|xnoremap <C-A> <C-V>|
    nnoremap ga gv
    " Make insert/add work also in visual line mode like in visual block mode
    xnoremap <silent> <expr> s (mode() =~# "[V]" ? "\<C-V>0o$I" : "I")
    xnoremap <silent> <expr> S (mode() =~# "[V]" ? "\<C-V>0o$I" : "I")
    xnoremap <silent> <expr> t (mode() =~# "[V]" ? "\<C-V>0o$A" : "A")
    xnoremap <silent> <expr> T (mode() =~# "[V]" ? "\<C-V>0o$A" : "A")
" }}}
" Search {{{
    " f/F are unchanged
    nnoremap p t|xnoremap p t|onoremap p t|
    nnoremap P T|xnoremap P T|onoremap P T|
    nnoremap b ;|xnoremap b ;|onoremap b ;|
    nnoremap B ,|xnoremap B ,|onoremap B ,|
    nnoremap k n|xnoremap k n|onoremap k n|
    nnoremap K N|xnoremap K N|onoremap K N|
" }}}
" inneR text objects {{{
    " E.g. dip (delete inner paragraph) is now drp
    onoremap r i
" }}}
" Folds, etc. {{{
    nnoremap j z|xnoremap j z|
    nnoremap jn zj|xnoremap jn zj|
    nnoremap je zk|xnoremap je zk|
    " marks
    nnoremap " m|xnoremap " m
" }}}
" Overridden keys must be prefixed with g {{{
    nnoremap gX X|xnoremap gX X|
    nnoremap gK K|xnoremap gK K|
    nnoremap gL L|xnoremap gL L|
" }}}
" Window handling {{{
    nnoremap <C-W>m <C-W>h|xnoremap <C-W>m <C-W>h|
    nnoremap <C-W>n <C-W>j|xnoremap <C-W>n <C-W>j|
    nnoremap <C-W>e <C-W>k|xnoremap <C-W>e <C-W>k|
    nnoremap <C-W>i <C-W>l|xnoremap <C-W>i <C-W>l|
" }}}
endfunction

function! ColemakDisable()
" Up/down/left/right {{{
    nnoremap h h|xnoremap h h|onoremap h h|
    nnoremap j j|xnoremap j j|onoremap j j|
    nnoremap k k|xnoremap k k|onoremap k k|
    nnoremap l l|xnoremap l l|onoremap l l|
" }}}
" Words forward/backward {{{
    " l/L = back word/WORD
    " u/U = end of word/WORD
    " y/Y = forward word/WORD
    nnoremap u b|xnoremap u b|onoremap u b|
    nnoremap U B|xnoremap U B|onoremap U B|
    nnoremap i e|xnoremap i e|onoremap i e|
    nnoremap I E|xnoremap I E|onoremap I E|
    nnoremap o w|xnoremap o w|onoremap o w|
    nnoremap O W|xnoremap O W|onoremap O W|
    cnoremap <C-L> <C-Left>
    cnoremap <C-Y> <C-Right>
" }}}
" inSert/Replace/append (T) {{{
    nnoremap d i|
    nnoremap D I|
    nnoremap f a|
    nnoremap F A|
" }}}
" Change {{{
    nnoremap w c|xnoremap w c|
    nnoremap W C|xnoremap W C|
    nnoremap ww cc|
" }}}
" Cut/copy/paste {{{
    nnoremap x x|xnoremap x d|
    nnoremap c y|xnoremap c y|
    nnoremap v p|xnoremap v p|
    nnoremap X dd|xnoremap X d|
    nnoremap C yy|xnoremap C y|
    nnoremap V P|xnoremap V P|
    nnoremap gv gp|xnoremap gv gp|
    nnoremap gV gP|xnoremap gV gP|
" }}}
" Undo/redo {{{
    nnoremap z u|xnoremap z :<C-U>undo<CR>|
    " nnoremap gz U|xnoremap gz :<C-U>undo<CR>|
    nnoremap <C-Z> <C-R>|xnoremap <C-Z> :<C-U>redo<CR>|
" }}}
" Visual mode {{{
    nnoremap a v|xnoremap a v|
    nnoremap A V|xnoremap A V|
    nnoremap ga gv
    " Make insert/add work also in visual line mode like in visual block mode
    xnoremap <silent> <expr> s (mode() =~# "[V]" ? "\<C-V>0o$I" : "I")
    xnoremap <silent> <expr> S (mode() =~# "[V]" ? "\<C-V>0o$I" : "I")
    xnoremap <silent> <expr> t (mode() =~# "[V]" ? "\<C-V>0o$A" : "A")
    xnoremap <silent> <expr> T (mode() =~# "[V]" ? "\<C-V>0o$A" : "A")
" }}}
" Search {{{
    " f/F are unchanged
    nnoremap e f|xnoremap e f|onoremap e f|
    nnoremap E F|xnoremap E F|onoremap E F|
    nnoremap r t|xnoremap r t|onoremap r t|
    nnoremap R T|xnoremap R T|onoremap R T|
    nnoremap t ;|xnoremap t ;|onoremap t ;|
    nnoremap T ,|xnoremap T ,|onoremap T ,|
    nnoremap n n|xnoremap n n|onoremap n n|
    nnoremap N N|xnoremap N N|onoremap N N|
" }}}
" inneR text objects {{{
    " E.g. dip (delete inner paragraph) is now drp
    onoremap s i
" }}}
" Folds, etc. {{{
    nnoremap y z|xnoremap y z|
    nnoremap yn zj|xnoremap yn zj|
    nnoremap ye zk|xnoremap ye zk|
" }}}
" Overridden keys must be prefixed with g {{{
    nnoremap gX X|xnoremap gX X|
    nnoremap gK K|xnoremap gK K|
    nnoremap gL L|xnoremap gL L|
" }}}
" Window handling {{{
    nnoremap <C-W>m <C-W>h|xnoremap <C-W>m <C-W>h|
    nnoremap <C-W>n <C-W>j|xnoremap <C-W>n <C-W>j|
    nnoremap <C-W>e <C-W>k|xnoremap <C-W>e <C-W>k|
    nnoremap <C-W>i <C-W>l|xnoremap <C-W>i <C-W>l|
" }}}
endfunction

command! ColemakEnable call ColemakEnable()
command! ColemakDisable call ColemakDisable()
ColemakEnable
