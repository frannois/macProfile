# -------------------------------------------
# Command line alias and other functions 

# Author : JF Dionne 
# Copyright : None

# --------------------------------------------

# mount the android file image
function mountAndroid { hdiutil attach ~/android.dmg.sparseimage -mountpoint /Volumes/android; }

#   -------------------------------
#   ENVIRONMENT CONFIGURATION
#   -------------------------------

#   Set Paths
#   ------------------------------------------------------------
    export PATH="$PATH:/usr/local/bin/"
    export ANDROID_HOME="/Users/jfd/sdk"
    export PATH="/usr/local/git/bin:/sw/bin/:/usr/local/bin:/usr/local/:/usr/local/sbin:/usr/local/mysql/bin:/usr/local/apache-ant-1.9.4/bin/:~/bin/:$ANDROID_HOME/platform-tools/:$ANDROID_HOME/tools/:$PATH"
    export ANT_HOME="/usr/local/apache-ant-1.9.4/"
    export ANT_OPTS="-Xms512m -Xmx2048m"

#   -------------------------------
#   TERMINAL IMPLEMENTATION  
#   -------------------------------

alias ll='ls -FGlAhp'                       # Preferred 'ls' implementation
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels



#  ------------------------------
#  Colored Logcat in terminal
#  -----------------------------

alias nyancat='adb logcat | ~/scripts/colorLogcat.py'
alias lolnyancat='adb logcat | lolcat'
alias buildMailGradle='pushd /Users/jfd/Desktop/android-mail/mail;ant -f build/build.xml yall yclean ydebug | lolcat ;ant -f build/build.xml yclean | lolcat;./gradlew assembleDebug | lolcat;popd'
#   lr:  Full Recursive Directory Listing
#   ------------------------------------------
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'

alias qfind="find . -name "


# Git autocomplete stuff
source ~/Utils/git-completion.bash
alias gco='git co'
alias gci='git ci'
alias grb='git rb'

