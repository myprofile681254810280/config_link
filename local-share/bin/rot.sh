a=$(xrandr --query --verbose | grep -v disconnected | grep connected | cut -d' ' -f1)
#echo $a $1
xrandr --output $a --rotate $1
