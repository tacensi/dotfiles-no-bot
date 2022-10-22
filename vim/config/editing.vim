scriptencoding utf-8
set encoding=utf-8

" Automatically indent lines intelligently
set autoindent
set smartindent

set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

" backspace behaviour
set backspace=indent,eol,start

" nav keys should wrap
set whichwrap+=<,>,h,l

" Display extra white space
set list listchars=tab:>\ ,nbsp:·,trail:☠,extends:»,precedes:«
hi NonText ctermfg=25 guifg=#4a4a59
hi SpecialKey ctermfg=25 guifg=#4a4a59

" Wrap lines rather hor scroll
set wrap
" But not middle-word
set linebreak
" 80-char limit
set textwidth=80

" Automatically restore cursor position when possible
autocmd BufReadPost *
	\ if line("'\"") > 1 && line("'\"") <= line("$") |
	\ exe "normal! g`\"" |
	\ endif

" % to bound from do to end etc
runtime! macros/matchit.vim

" Automatically reload file changed outside
set autoread

" Set spell check on markdown
autocmd BufRead,BufNewFile *.md setlocal spell

set foldenable
set foldlevelstart=10
set foldnestmax=10
"
nnoremap <space> za
set foldmethod=indent

let g:phpqa_codesniffer_args = "--standard=WordPress"
let g:phpqa_messdetector_autorun = 0
let g:phpqa_codesniffer_autorun = 0

noremap <f6> :Phpcs<cr>

