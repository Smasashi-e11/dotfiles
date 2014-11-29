"-------表示設定--------
set title "編集中のファイル名表示
syntax on "シンタックスハイライト！！
set number "行番号 

"------オプション------
set nobackup "バックアップ取らない。
set tabstop=2

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

" lightline
NeoBundle 'itchyny/lightline.vim'
	
"color scheme
NeoBundle 'tomasr/molokai'
NeoBundle 'vim-scripts/darktango.vim'

call neobundle#end()
     
" Required:
filetype plugin indent on
      
" 未インストールのプラグインがある場合、インストールするかどうかを尋ね
" てくれるようにする設定
" 毎回聞かれると邪魔な場合もあるので、この設定は任意です。
NeoBundleCheck

"-------------------------
"End Neobundle Settings.
""-------------------------


"----color scheme-------
set t_Co=256
colorscheme molokai

