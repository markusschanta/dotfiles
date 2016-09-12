#!/bin/bash

# Sort media files
/usr/local/bin/filebot -script fn:amc --output ~/Downloads/#Torrents/#Sorted/ --action move -non-strict ~/Downloads/#Torrents/#Done/ --log-file filebot.log --def excludeList=filebot.txt --def subtitles=en --def movieFormat="Movies/{n}/{n}"
# Delete clutter
/usr/local/bin/filebot -script fn:cleaner ~/Downloads/#Torrents/#Done/
