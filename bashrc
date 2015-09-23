

# Basic Alias's
alias c='clear'
alias pip='sudo pip'
alias quit='exit'
alias ls='ls -hG'

# Have had trouble with this server before potentially mix it up a bit
external_ip () { curl http://ipecho.net/plain;echo;}

# Internal Networking Setup
flush_dns () { sudo killall -HUP mDNSResponder }

# Command Line proxy on and off
proxy_on () { sudo networksetup -setwebproxystate Wi-Fi on }
proxy_off () { sudo networksetup -setwebproxystate Wi-Fi off }

# tar functions, I can never remember the syntax

tar_create () {echo "tar_create source_folder dest_file" ;tar -zvcf $1 $2;}
tar_extract () {echo "tar_extract tar_file dest_folderl" ;tar -zvxf $1 $2;}

# Colored Input
PS1='\[\e[0;32m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\$\[\e[m\] \[\e[1;30m\]'
