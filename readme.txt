VIM:
windows: 
mklink /D %USERPROFILE%\vimfiles D:\Github\dotfiles\vim

Git Bash:
mklink /D %USERPROFILE%\.vim D:\Github\dotfiles\vim

Linux:
ln -s dotfiles/vim  .vim

NEO VIM:
mklink /D %LOCALAPPDATA%\nvim D:\Github\dotfiles\vim


GIT:

Windows:
mklink %USERPROFILE%\.gitconfig D:\GitHub\dotfiles\git\.gitconfig
mklink %USERPROFILE%\gitalias.txt D:\GitHub\dotfiles\git\gitalias.txt

Linux:
ln -s dotfiles/git/.gitconfig .gitconfig
ln -s dotfiles/git/gitalias.txt gitalias.txt


Emacs:
mklink /D %USERPROFILE%\AppData\Roaming\.emacs.d D:\Github\dotfiles\.emacs.d
ln -s dotfiles/.emacs.d .emacs.d

Windows find all Symlink under folder:
dir /al /s | findstr "<SYMLINK"
