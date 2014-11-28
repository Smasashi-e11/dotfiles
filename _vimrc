"表示設定
set title "編集中のファイル名表示
syntax on "シンタックスハイライト！！

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

