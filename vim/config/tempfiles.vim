"" Handling of temporary files

set backupdir=~/.vim.tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim.tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" Define undo dir
set undodir=~/.vim/undodir

" Permit changes in two different windows
augroup SimultaneousEdits
	autocmd!
	autocmd SwapExists * :let v:swapchoice = 'e'
augroup END

