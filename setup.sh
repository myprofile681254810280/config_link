ROOT="$(dirname "$(realpath "$0")")"
echo "$ROOT"

mv ~/.config/Kvantum /dev/shm/
#mv ~/.config/kwinrulesrc /dev/shm/
ln -s "$ROOT/config/Kvantum"             ~/.config/
#ln -s "$ROOT/config/kwinrulesrc"         ~/.config/

mv ~/.local/share/color-schemes /dev/shm/
mv ~/.local/share/kxmlgui5 /dev/shm/
mv ~/.local/share/dolphin /dev/shm/
mv ~/.local/share/konsole /dev/shm/

#这里有一个dolphin用的配色
ln -s "$ROOT/local-share/color-schemes"  ~/.local/share/
#这里面有dolphin的工具栏配置，或许还有其他东西
ln -s "$ROOT/local-share/kxmlgui5"       ~/.local/share/
#这里是dolphin的默认文件夹配置
ln -s "$ROOT/local-share/dolphin"        ~/.local/share/
#这里是konsole的各种主题配置
ln -s "$ROOT/local-share/konsole"        ~/.local/share/

