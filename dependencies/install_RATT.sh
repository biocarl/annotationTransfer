#Installation of RATT/[mummer]

#path for your bin's
path=$HOME/bin
path_mummer=$path/mummer
source=$HOME/.bashrc

mkdir $path
mkdir $path_mummer

#Install must-have programs
sudo apt-get --assume-yes  python-setuptools python-dev build-essential git wget vim tar mummer
#INstall pip
sudo easy_install pip
#install biopython
pip install biopython

#Downloading mummer
wget --no-check-certificate https://sourceforge.net/projects/mummer/files/latest/download?source=files -O mummer.tar.gz

#installing mummer
tar -xvzf mummer.tar.gz --strip-components=1 -C $path_mummer
rm -rf mummer.tar.gz
cd $path_mummer
make check
make install

#Downloading/Installing RATT
cd $path
#svn co "https://svn.code.sf.net/p/ratt/code/" RATT
git clone https://github.com/ThomasDOtto/ratt.git RATT

#!!!!!! to get of the warnings: Set-Up-Paths & Environment-Vars, according to the tutorial
#no warnings 'deprecated';

#Setting up paths
cat << EOF >> $source

##RATT/MUMMER

PATH=$PATH:$HOME/$path_mummer;
export PATH;

#RATT-Paths

RATT_HOME=$path/RATT;
export RATT_HOME;

#Configuration for bacteria
RATT_CONFIG=$RATT_HOME/RATT.config_bac;
export RATT_CONFIG;

#short alias
alias ratt='$RATT_HOME/start.ratt.sh'

##RATT/MUMMER
EOF


#source .bashrc
source $source

