# github.com:leonkuhne/scripts
for f in ~/.config/scripts/*.sh; do source $f; done

# display
export DISPLAY=:0
export LC_ALL=C
export JAVA_HOME='/usr/lib/jvm/java-21-openjdk'
export PATH=$JAVA_HOME/bin:$PATH
export ANDROID_HOME=/opt/android-sdk/
export ANDROID_SDK=/opt/android-sdk/cmdline-tools
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
export PATH=$ANDROID_HOME/cmdline-tools/tools/bin:$PATH

# color overrides
export C_TITLE=$(color 7 0 6)
export C_WARN=$(color 7 0 3)
export C_DEBUG=$(color 7 0 5)

# aliases
alias x="exit 0"
alias ls="ls --color"
alias open="explorer.exe"
alias die="wsl.exe --shutdown"
alias ai="source ~/envs/ai/bin/activate"

function code() {
  /mnt/c/Program\ Files/Microsoft\ VS\ Code/bin/code $@ &
}

function serve() {
  # open in WSL browser
  cmd.exe /C start http://localhost:8000
  # start server
  python -m http.server 8000
}

# startup scripts
back
rand_prompt

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
#__conda_setup="$('/opt/anaconda/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
#if [ $? -eq 0 ]; then
#    eval "$__conda_setup"
#else
#    if [ -f "/opt/anaconda/etc/profile.d/conda.sh" ]; then
#        . "/opt/anaconda/etc/profile.d/conda.sh"
#    else
#        export PATH="/opt/anaconda/bin:$PATH"
#    fi
#fi
#unset __conda_setup
#conda deactivate
# <<< conda initialize <<<

