augroup filetype_gitcommit
  autocmd!
  autocmd FileType gitcommit set textwidth=72 " wrap @ 72 characters
  autocmd Filetype gitcommit set colorcolumn=73
augroup END

augroup filetype_make
  autocmd!
  autocmd FileType make set noexpandtab " insert tabs, not 2 spaces
augroup END

augroup filetype_markdown
  autocmd!
  autocmd FileType markdown set colorcolumn=
augroup END

augroup filetype_python
  autocmd!
  autocmd Filetype python set colorcolumn=89
  autocmd Filetype python set textwidth=88
augroup END

augroup filetype_vim
  autocmd!
  autocmd Filetype vim set textwidth=80
  autocmd BufRead,BufNewFile *.nvim		setfiletype vim
augroup END

augroup filetype_json
  autocmd!
  " mark json files as jsonc by default
  " refs:
  " - https://github.com/neoclide/jsonc.vim
  " - https://github.com/neoclide/jsonc.vim/blob/master/ftdetect/jsonc.vim
  autocmd BufNewFile,BufRead *.json setlocal filetype=jsonc
augroup END
