In window using the following command to create symbolic.

vim:
mklink /D %USERPROFILE%\vimfiles D:\Github\dotfiles\vim
mklink %USERPROFILE%\vimrc D:\GitHub\dotfiles\vim\vimrc

neo vim:
mklink /D %LOCALAPPDATA%\nvim D:\Github\dotfiles\vim

Powershell:
New-Item -ItemType SymbolicLink -Path C:\Users\davwe\AppData\Local\nvim -Target D:\Github\dotfiles\vim
New-Item -ItemType SymbolicLink -Path C:\Users\davwe\AppData\Local\nvim\init.vim -Target D:\Github\dotfiles\vim\init.vim


git:
mklink %USERPROFILE%\.gitconfig D:\GitHub\dotfiles\git\.gitconfig
mklink %USERPROFILE%\gitalias.txt D:\GitHub\dotfiles\git\gitalias.txt

Check Symlink
dir /al /s | findstr "<SYMLINK"