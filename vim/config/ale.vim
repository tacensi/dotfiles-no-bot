" turn on sytax checker
syntax on

" don check syntax immediately
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1

" error symbol do use in sidebar
let g:ale_sign_error = '☢️'
let g:ale_sign_warning = '⚡'

" show number of errors
function! LinterStatus() abort
	let l:counts = ale#statusline#Count(bufnr(''))
	let l:all_errors = l:counts.total - l:all_errors
	return l:counts.total == 0 ? 'OK' : printf(
		\ '%d %d ',
		\ all_non_errors,
		\ all_errors
		\)
endfunction

set statusline+=%=
set statusline+=\ %{LinterStatus()}

" format error strings
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

