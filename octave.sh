# source: https://adampash.com/how-to-install-octave/

# install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install Caskroom/cask/xquartz

# tap the science formulae
brew tap homebrew/science

# install some Octave dependencies
# the update/upgrade command below could take a while
brew update && brew upgrade
brew install gfortran

# install octave
brew install octave

# install fltk for gnuplot
brew install fltk

# install gnuplot
brew install gnuplot

touch ~/.octaverc
echo "setenv ('GNUTERM', 'X11')" >> ~/.octaverc
