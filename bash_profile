#  ---------------------------------------------------------------------------
#
#  Sérgio Fontes's Bash Profile
#
#  ---------------------------------------------------------------------------


#   -------------------------------
#   1.  ENVIRONMENT CONFIGURATION
#   -------------------------------

#   Change Prompt
    export PS1='\W\[\033[01;32m\]`git branch 2> /dev/null | grep -e ^* | sed -E  s/^\\\\\*\ \(.+\)$/\:\\\\\1\\/` \[\033[37m\]\$\[\033[00m\] '

#   Set Paths
    export PATH="$PATH:/usr/local/bin/"
    export PATH="$PATH:~/bin/"
    export PATH=$PATH:/usr/local/sbin

#   Set Default Editor (change 'Nano' to the editor of your choice)
    export EDITOR=/usr/bin/nano

#   Set default blocksize for ls, df, du
#   from this: http://hints.macworld.com/comment.php?mode=view&cid=24491
    export BLOCKSIZE=1k

#   Add color to terminal
#   (this is all commented out as I use Mac Terminal Profiles)
#   from http://osxdaily.com/2012/02/21/add-color-to-the-terminal-in-mac-os-x/
    export CLICOLOR=1
    export LSCOLORS=ExFxBxDxCxegedabagacad


#   -----------------------------
#   2.  MAKE TERMINAL BETTER
#   -----------------------------

    alias f='open -a Finder ./'                 # f:            Opens current directory in MacOS Finder
    alias which='type -all'                     # which:        Find executables
    alias gs='git status'                       # gs:           Status
    alias gc='git commit'                       # gc:           Commits
    alias gcm='git commit -m'                   # gcm:          Commits with a message
    alias go='git checkout'                     # go:           Checkouts
    alias gl='git pull'                         # gl:           Pulls
    alias gpl='git pull'                        # gpl:          Pulls
    alias gp='git push'                         # gp:           Pushs
    alias gps='git push'                        # gps:          Pushs
    alias gd='git diff'                         # gd:           Diffs
    alias gb='git branch'                       # gb:           Branches
    alias ga='git add'                          # ga:           Adds

#   Open files and projects in Sublime Text
#   ln -s "/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl


#   ---------------------------------------
#   3.  WEB DEVELOPMENT
#   ---------------------------------------

#   Add RVM to PATH for scripting
    export PATH="$PATH:$HOME/.rvm/bin"

#   Load RVM into a shell session *as a function*
    [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

#   Git Auto Complete
    if [ -f `brew --prefix`/etc/bash_completion ]; then
      . `brew --prefix`/etc/bash_completion
    fi
