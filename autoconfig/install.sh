


echo -========- 0. Installing Installer \& Package manager -========- \n

while true; do
    read -p "You have to install curl before installing Things. Does u installed that? \n" yn
    case $yn in
        [Yy]* ) echo Next Process... \n ; break;;
        [Nn]* ) echo https://curl.se/download.html; break;;
        * ) echo "Please answer yes or no.";;
    esac
done


echo -========- 0.0 Installing zsh -================================- \n

while true; do
    read -p "Do you wish to install zsh? \n" yn
    case $yn in
        [Yy]* ) apt install zsh; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no. \n ";;
    esac
done

echo -========- 0.1 setting default shell to zsh -======================- \n


while true; do
    read -p "Do you wish to switch default shell to zsh?" yn
    case $yn in
        [Yy]* ) chsh -s /bin/zsh; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no. \n ";;
    esac
done


echo -========- 0.2 Install Brew -----------------======================- \n


while true; do
    read -p "Do you want to install Brew? \n " yn
    case $yn in
        [Yy]* ) /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no. \n ";;
    esac
done


echo -========- 0.3 Installing Git, Wget, Npm -==========================- \n


while true; do
    read -p "Install Git ?" yn
    case $yn in
        [Yy]* ) brew install git wget npm; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no. \n ";;
    esac
done

echo -========- 0.4 Installing Starship -================================- \n


while true; do
    read -p "Install Starship?" yn
    case $yn in
        [Yy]* ) sh -c "$(curl -fsSL https://starship.rs/install.sh)"; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no. \n ";;
    esac
done


echo -========- 0.5 Installing Lvim -====================================- \n 



while true; do
    read -p "Install Lvim?" yn
    case $yn in
        [Yy]* ) brew install nvim
                LVBRANCH=rolling bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/rolling/utils/installer/install.sh); break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no. \n ";;
    esac
done
