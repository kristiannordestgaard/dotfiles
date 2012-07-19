# alias gmpc='kgmpc'

alias x='startx'
# alias ncmpcpp='mpd && mpc stop && ncmpcpp && clear && mpd --kill'

alias df='df -h'
alias u='sudo aptitude update && sudo aptitude safe-upgrade && sudo aptitude clean && sudo aptitude autoclean'

alias off='sudo poweroff'
alias reboot='sudo reboot'

alias cp='cp -i'
alias mv='mv -i'
 
alias google='links2 www.google.com'

## ncmpcpp workaround
alias ncmpcpp-bug='strace -o ~/bug.txt ncmpcpp && rm ~/bug.txt && clear'


alias xchat='nohup xchat &'
alias pidgin='nohup pidgin &'
alias chromium='nohup chromium-browser &'

alias exit-X='killall xinit'

alias wma2ogg='for i in *.wma; do ffmpeg -i $i -acodec vorbis -aq 100 ${i%.wma}.ogg; done'
alias mp32ogg='for i in *.mp3; do ffmpeg -i $i -acodec vorbis -aq 100 ${i%.mp3}.ogg; done'
alias m4a2ogg='for i in *.m4a; do ffmpeg -i $i -acodec vorbis -aq 100 ${i%.m4a}.ogg; done'


## SSH
alias sshfs-anapnea='sshfs -p 5050 kristian@anapnea.net:/home/kristian/ /home/kristian/sshfs-anapnea/' 
alias gim11='ssh -p 22121 gim11.pl'

alias ted='Ted'

## FILENAMES
alias fixnames='. ~/.scripts/rename.sh'
#alias fixnames-videos='. ~/.scripts/fixnames-videos.sh'

## BACKUP
## gammel version
## alias backup='rsync -avPL --stats --delete --ignore-errors /home/kristian/ /mnt/usbhdd/kristian/'

##
alias backup='rsync -avPL --stats --delete --ignore-errors --exclude-from\=/home/kristian/exclude.txt /home/kristian/ /mnt/usbhdd/kristian/'
alias backup-dropbox='rsync -avz /home/kristian/Dropbox/ /home/kristian/dropbox-bak/'


## RANDOM IMAGE
alias randomimage='imgs=(~/wallpapers/*.jpg); feh --bg-center "${imgs[RANDOM % ${#imgs[@]}]}"'

## cthulhu
# alias cthulhu-music='ssh music@cthulhu'
alias cthulhu-music='ssh cthulhu -t ncmpc'
alias musik='ssh cthulhu -t ncmpc'
alias cthulhu-fthagn='sudo etherwake -i eth0 -D 00:0d:60:92:29:86'
alias cthulhu-fthagn-music='sudo etherwake -i eth0 -D 00:0d:60:92:29:86 && sleep 15 && ssh music@cthulhu'
alias cthulhu-off='ssh cthulhu -l kristian -t "sudo poweroff"'
alias sshfs-cthulhu='sshfs kristian@cthulhu:/home/kristian/ /home/kristian/sshfs-cthulhu/'
alias cthulhu-mount='sshfs cthulhu:/mnt/medier/ /home/kristian/cthulhu-local/'

alias odtlatex='mk4ht oolatex'


