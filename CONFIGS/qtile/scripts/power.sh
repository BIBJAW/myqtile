#! /bin/sh

chosen=$(printf "Lock\nLog Out\nSuspend\nRestart\nOFF" | rofi -dmenu -i -theme-str '@import "~/.config/qtile/scripts/powermenu.rasi"')

case "$chosen" in
    "Lock") betterlockscreen -l dimblur;;
	"Log Out") killall qtile ;;
	"Suspend") i3lock -i ~/Pictures/backgrounds/coffee.png && systemctl suspend ;;
	"Restart") systemctl reboot ;;
	"OFF") systemctl poweroff ;;
	*) exit 1 ;;
esac
