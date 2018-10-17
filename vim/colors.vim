" <<<<<<<< Colors >>>>>>>>

" background
set background=dark

" colorscheme
colorscheme onedark

" 256 color
set t_Co=256

" << highlighting >>

" search
hi Search cterm=None ctermfg=black ctermbg=cyan
hi IncSearch cterm=None ctermfg=black ctermbg=cyan

" matching
hi MatchParen cterm=None ctermfg=black ctermbg=cyan

" transparent background
hi Normal ctermbg=None

" << whitespace >>

" whitespace group coloring
hi ExtraWhitespace ctermbg=magenta
" keep through color scheme change
au ColorScheme * hi ExtraWhitespace ctermbg=magenta
" highlight all trailing whitespace
au BufRead,InsertLeave * match ExtraWhitespace /\s\+$/
" avoid highlighting trailing whitespace on current line
" when editing at the end of it
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/

" << Syntax Groups >>

" match Tabs on file load
" (just matches, no highlighting yet)
au BufRead * syntax match Tab /\t/
