export DOTFILES=/dat.mnt/dotfiles
echo "$DOTFILES/13arch.experimental/.bashrc"
ln -svf $DOTFILES/13arch.experimental/.bash_profile  ~/.bash_profile
ln -svf $DOTFILES/13arch.experimental/.bashrc        ~/.bashrc
ls -lahF --color ~

unalias -a
alias l='ls -gGahlF --color '
alias sd='sudo shutdown -h now'
alias v='vim '

alias

