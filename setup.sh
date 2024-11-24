ROOT="$(dirname "$(realpath "$0")")"
echo "$ROOT"

mv ~/.config/Kvantum /dev/shm/
mv ~/.config/xbindkeys /dev/shm/
mv ~/.xbindkeysrc.scm /dev/shm/
mv ~/.config/x /dev/shm/
mv ~/.config/i3 /dev/shm/
mv ~/.config/vim /dev/shm/
mv ~/.config/mpv /dev/shm/
#mv ~/.config/kwinrulesrc /dev/shm/
#ln -s "$ROOT/config/kwinrulesrc"         ~/.config/
ln -s "$ROOT/config/Kvantum"             ~/.config/
ln -s "$ROOT/config/xbindkeys"             ~/.config/
ln -s ~/.config/xbindkeys/kwin7.scm     ~/.xbindkeysrc.scm
ln -s "$ROOT/config/x"             ~/.config/
ln -s "$ROOT/config/i3"             ~/.config/
ln -s "$ROOT/config/vim"             ~/.config/
ln -s "$ROOT/config/mpv"             ~/.config/

mv ~/.local/share/color-schemes /dev/shm/
mv ~/.local/share/kxmlgui5 /dev/shm/
mv ~/.local/share/dolphin /dev/shm/
mv ~/.local/share/konsole /dev/shm/
mv ~/.local/share/applications /dev/shm/
mv ~/.local/share/plasma /dev/shm/
mv ~/.local/bin /dev/shm/
mv ~/bin /dev/shm/

#这里有一个dolphin用的配色
ln -s "$ROOT/local-share/color-schemes"  ~/.local/share/
#这里面有dolphin的工具栏配置，或许还有其他东西
ln -s "$ROOT/local-share/kxmlgui5"       ~/.local/share/
#这里是dolphin的默认文件夹配置
ln -s "$ROOT/local-share/dolphin"        ~/.local/share/
#这里是konsole的各种主题配置
ln -s "$ROOT/local-share/konsole"        ~/.local/share/
#常用快捷方式，全是手写的。有些程序或许会侵入这里，但是基本都不是我们要的，都需要删除
ln -s "$ROOT/local-share/applications"        ~/.local/share/
#这里面是我们手写的desktoptheme breeze-dark-opaque
#里面的改动是dialogs和widgets 的透明度，其他都是breeze dark的link
ln -s "$ROOT/local-share/plasma"        ~/.local/share/
#管理bin目录，这个目录并不给x权限，但是会有手动执行的需要
ln -s "$ROOT/local-share/bin"        ~/.local/
ln -s ~/.local/bin ~/


