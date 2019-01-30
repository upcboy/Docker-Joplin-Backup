joplin config sync.target 6
joplin config sync.6.path URL
joplin config sync.6.username Myuser
joplin config sync.6.password mypassword
joplin sync
joplin export /root/backup.jex
DATE=`date +%d%b%y`
cp /root/backup.jex mylocation/backup.${DATE}.jex
rm /root/backup.jex