##################### FISH CONFIG ##################

#################### DOTFILES #######################
alias configfiles="/usr/bin/git --git-dir=$HOME/.configfiles.git/ --work-tree=$HOME"

#################### WSL #############################
set -x DISPLAY_NUMBER 0.0
set -x LIBGL_ALWAYS_INDIRECT 1
set -x DISPLAY (/sbin/ip route | awk '/default/ { print $3 }'):$DISPLAY_NUMBER

################# NVM #################################
#set -g NVM_DIR ([ -z $XDG_CONFIG_HOME- ] && printf %s $HOME/.nvm || printf %s $XDG_CONFIG_HOME/nvm)
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
set -g NVM_DIR "$HOME/.nvm"
bass source ~/.nvm/nvm.sh --no-use ';' 
nvm use --lts
#######################################################
if status is-interactive
    # Commands to run in interactive sessions can go here
end

#######################################################
