# Good Morning-script - Turn on screen and show dashbaord

# Turn screensaver off
sudo ~/.dotfiles/shell/screensaveroff.sh
defaults -currentHost write com.apple.screensaver idleTime 0

# Simulate user activity to turn on screen
caffeinate -u -t 7200&

# Set volume to 25% (4 bars)
osascript -e "set volume output volume 25 --100%"
# Play Ö1 Morgenjournal
python Coding/GitHub/PyOE1/oe1.py -f Morgenjournal -u | xargs open
# Sleep for 3 seconds (otherwise playback does not start in Chrome sometimes)
sleep 3

# Open dashboard in Chrome
/usr/bin/osascript -e 'tell application "Google Chrome"' -e 'open location "https://www.thedash.com/dashboard/V1LwlLx7-/fullscreen"' -e "activate" -e "end tell"
# sleep 3
# /usr/bin/osascript -e  'tell application "System Events"' -e 'keystroke "f" using {control down, command down}' -e "end tell"

# Show dashboard for two hours
sleep 7200

# Close Chrome tab
/usr/bin/osascript -e 'tell application "Google Chrome"' -e "activate" -e 'keystroke "w" using {command down}' -e "end tell"
# Un-fullscreen Chrome
# sleep 3
# /usr/bin/osascript -e 'tell application "System Events"' -e 'keystroke "f" using {control down, command down}' -e "end tell"

# Turn screensaver back on
sudo ~/.dotfiles/shell/screensaveron.sh
defaults -currentHost write com.apple.screensaver idleTime 600
