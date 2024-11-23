ROOT="$(dirname "$(realpath "$0")")"
echo "$ROOT"

mv ~/.config/Kvantum /dev/shm/
mv ~/.config/kwinrulesrc /dev/shm/
ln -s "$ROOT/config/Kvantum"             ~/.config/
ln -s "$ROOT/config/kwinrulesrc"         ~/.config/

mv ~/.local/share/color-schemes /dev/shm/
mv ~/.local/share/kxmlgui5 /dev/shm/
mv ~/.local/share/dolphin /dev/shm/
ln -s "$ROOT/local-share/color-schemes"  ~/.local/share/
ln -s "$ROOT/local-share/kxmlgui5"       ~/.local/share/
ln -s "$ROOT/local-share/dolphin"        ~/.local/share/

