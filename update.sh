cp -r ~/.config/{dunst,i3,ranger,rofi,polybar,zathura} .

mkdir -p nvim
cp ~/.config/nvim/init.vim nvim/

cp ~/.zshrc .
cp ~/.Xresources .

mkdir -p .emacs.d
cp ~/.emacs.d/init.el .emacs.d/
