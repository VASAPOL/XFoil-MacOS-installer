which $SHELL
# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install htop
brew install git


cd ~

git clone https://github.com/nolankucd/Xfoil-for-Mac.git

cd Xfoil-for-Mac

brew install xquartz

brew install gfortran

cd orrs/bin

make -f Makefile_DP osgen

cd ../../plotlib

make libPlt_gSP.a

cd ../bin

make xfoil

make pplot

make pxplot

cd ..

cd bin

cp xfoil ~/Desktop/xfoil_Shortcut