# install homebrew
echo "installing homebrew"
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "installing node"
# install node
brew install node

echo "install wget"
brew install wget

echo "Installing cordova"
# install cordova
sudo npm install -g cordova

echo "Install ionic framework"
sudo npm install -g ionic

echo "install haxm"
brew install caskroom/cask/brew-cask && brew update
brew cask install intel-haxm

# make sure Developer directory
mkdir ~/Developer
cd ~/Developer

echo "Change to ~/Developer directory"

echo "Downloading android sdk"
wget http://dl.google.com/android/android-sdk_r24.4.1-macosx.zip 

echo "unzipping android sdk"
unzip android-sdk_r24.4.1-macosx.zip

echo "Download apache ant"
wget http://www.carfab.com/apachesoftware//ant/binaries/apache-ant-1.9.6-bin.zip

echo "unzipping apache ant"
unzip apache-ant-1.9.6-bin.zip

echo "touching ~/.bash_profile"
touch ~/.bash_profile

echo "adding java to path, make sure to update this to the actual path of JAVA. Looking in ~/.bash_profile or ~/.profile"
echo "export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home" >> ~/.bash_profile
echo "export ANT_HOME=~/Developer/apache-ant-1.9.6" >> ~/.bash_profile

echo "launching android sdk, install Android SDK Platform-tools, Android SDK-Build-tools, Android 5.1.1 SDK Platform, Intel x86 Atom System Image"
~/Developer/android-sdk-macosx/tools/android sdk

