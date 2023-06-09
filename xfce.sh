#bin/bash

echo "******* Installing EndeavourOS Theming for XFCE4*******" && sleep 5

echo "******* cloning dotfiles for EndeavourOS - XFCE4 Theming *******" && sleep 1
    git clone https://github.com/aneeshlingala/paxxer-theming
    cd endeavouros-xfce4-theming
      
echo "******* setting up xfce4 theme and settings: *******" && sleep 1
    rm -rf ~/.config/Thunar ~/.config/qt5ct ~/.config/xfce4 ~/.cache
    cp .Xresources ~/.Xresources
    cp -R .config/ ~/
    dbus-launch dconf load / < xed.dconf
    cd ..
    rm -rf endeavouros-xfce4-theming 

echo "******* All Done --- restarting System NOW! *******" && sleep 10
echo "******* Please login again and enjoy EndeavourOS Theming! *******" && sleep 1

    yad --title="Restarting System" \
        --text="All done --- please login again and enjoy XFCE4 with EndeavourOS Theming!" \
        --width=400 --height=100 \
        --button="Restart System":0

    sudo systemctl reboot

}

Main "$@"
