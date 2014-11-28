"表示設定
set title "編集中のファイル名表示
syntax on "シンタックスハイライト！！

set nocompatible "no vi, vim default

set tabstop=2
"スワップファイル作らない
set noswapfile
"カーソルの場所把握
set ruler
"小文字のみの検索では、大文字小文字を無視する。
set smartcase
"改行時に、入力された行の末尾に合わせて次の行のインデントを増減する。
set smartindent
"カラースキーマの設定
colorscheme desert
"行番号
set number

let g:hi_insert = 'highlight StatusLine guifg=darkblue guibg=darkyellow gui=none ctermfg=blue ctermbg=yellow cterm=none'

if has('syntax')
	augroup InsertHook
		autocmd!
		autocmd InsertEnter * call s:StatusLine('Enter')
		autocmd InsertLeave * call s:StatusLine('Leave')
	augroup END
endif

let s:slhlcmd = ''
function! s:StatusLine(mode)
	if a:mode == 'Enter'
		silent! let s:slhlcmd = 'highlight ' . s:GetHighlight('StatusLine')
		silent exec g:hi_insert
	else
		highlight clear StatusLine
		silent exec s:slhlcmd
	endif
endfunction


function! s:GetHighlight(hi)
	redir => hl
	exec 'highlight '.a:hi
	redir END
	let hl = substitute(hl, '[\r\n]', '', 'g')
	let hl = substitute(hl, 'xxx', '', '')
	return hl
endfunction


"--------------------------
" Start Neobundle Settings.
"---------------------------
"" bundleで管理するディレクトリを指定
set runtimepath+=~/dotfiles/vimfiles/bundle/neobundle.vim

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" neobundle自体をneobundleで管理
NeoBundleFetch 'Shougo/neobundle.vim'

" NERD Tree
NeoBundle 'scrooloose/nerdtree'

call neobundle#end()

" Required:
filetype plugin indent on

" 未インストールのプラグインがある場合、インストールするかどうかを尋ね
" てくれるようにする設定
" 毎回聞かれると魔な場合もあるので、この設定は任意です。
NeoBundleCheck

"-------------------------
"End Neobundle Settings.
""-------------------------

