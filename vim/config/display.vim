" Syntax highlight
syntax enable

" Coordenates on statusbar
set ruler

" relative line number
set number
set relativenumber
augroup numbertoggle
	autocmd!
	autocmd BufEnter,FocusGained,InsertLeave,WinEnter * set relativenumber
	autocmd BufLeave,FocusLost,InsertEnter,WinLeave * set norelativenumber
augroup END

" Unfineshed commands on status bar
set showcmd

" Only one space after punctuation
set nojoinspaces

" Redraw only when needed
set lazyredraw

" Highlight matching [{()}]
set showmatch

" Highlight last inserted text
nnoremap gV `[v`]

" Show unicode glyphs
set encoding=utf-8

" Explicitly tell vim that terminal supports 256 colors
set t_Co=256

" Config status bar
set laststatus=2

" Color test: Save this file, enter 'so %'
" Then enter one of the following commands:
"   :VimColorTest "(for console/terminal Vim)
"   :GvimColorTest "(for GUI gvim)
function! VimColorTest(outfile, fgend, bgend)
	let result = []
	for fg in range(a:fgend)
		for bg in range(a:bgend)
			let kw = printf('%-7s', printf('c_%d_%d', fg, bg))
			let h = printf('hi %s ctermfg=%d ctermbg=%d', kw, fg, bg)
			let s = printf('syn keyword %s %s', kw, kw)
			call add(result, printf('%-32s | %s', h, s))
		endfor
	endfor
	cal writefile(result, a:outfile)
	execute 'edit '.a:outfile
	source %
endfunction

" Increse numbers in next line to see more colors
command! VimColorTest call VimColorTest('vim-color-test.tmp', 12, 16)

