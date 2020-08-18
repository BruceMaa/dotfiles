
LOCAL_HOME=/usr/local
MAVEN_HOME=/Users/Bruce/Documents/maven
TOMCAT_HOME=/Users/Bruce/Documents/tomcat
ANDROID_HOME=~/Library/Android/sdk
PATH=$LOCAL_HOME/bin:$MAVEN_HOME/bin:$TOMCAT_HOME/bin:$ANDROID_HOME/tools:$PATH

export MAVEN_HOME
export TOMCAT_HOME
export ANDROID_HOME
export PATH

REACT_EDITOR=atom
HOMEBREW_EDITOR=vim

export NVM_DIR="/Users/Bruce/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH="$HOME/.cargo/bin:$PATH"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/Bruce/.sdkman"
[[ -s "/Users/Bruce/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/Bruce/.sdkman/bin/sdkman-init.sh"
