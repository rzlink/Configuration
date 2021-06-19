VIM:
windows: 
mklink /D %USERPROFILE%\vimfiles D:\Github\dotfiles\vim

linux:
mklink /D %USERPROFILE%\.vim D:\Github\dotfiles\vim

NEO VIM:
mklink /D %LOCALAPPDATA%\nvim D:\Github\dotfiles\vim


GIT:
mklink %USERPROFILE%\.gitconfig D:\GitHub\dotfiles\git\.gitconfig
mklink %USERPROFILE%\gitalias.txt D:\GitHub\dotfiles\git\gitalias.txt

Emacs:
mklink /D %USERPROFILE%\AppData\Roaming\.emacs.d D:\Github\dotfiles\.emacs.d

Find all Symlink under folder:
dir /al /s | findstr "<SYMLINK"
