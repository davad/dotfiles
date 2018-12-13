# zplug - plugins
source ~/.zplug/init.zsh

zplug "plugins/git", from:oh-my-zsh
zplug "plugins/git-extras", from:oh-my-zsh
zplug "plugins/docker", from:oh-my-zsh
zplug "plugins/docker-compose", from:oh-my-zsh
zplug "plugins/command-not-found", from:oh-my-zsh
zplug "plugins/sudo", from:oh-my-zsh
zplug "plugins/supervisor", from:oh-my-zsh
zplug "plugins/systemd", from:oh-my-zsh
zplug "plugins/tmux", from:oh-my-zsh
zplug "plugins/vi-mode", from:oh-my-zsh
zplug "lib/history", from:oh-my-zsh

#zplug "junegunn/fzf-bin", from:gh-r, at:0.17.5, as:command, use:"*linux*amd64*", rename-to:fzf

zplug "themes/mortalscumbag", from:oh-my-zsh

# Install plugins if there are plugins that have not been installed
if ! zplug check; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Have ^w break on /, -, and _
WORDCHARS='*?[]~=&;!#$%^(){}<>'

zplug load

# Then, source plugins and add commands to $PATH

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias ag="ag --color"

alias latexmk="latexmk -pdf -pvc"

# Nvidia CUDA library and binaries
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/lib64/
export PATH=$PATH:/usr/local/cuda/bin

# Home dir bin
export PATH=$PATH:$HOME/bin

# Android SDK
export ANDROID_HOME=~/Android/sdk

export JAVA_HOME=/usr/lib/jvm/java-8-oracle/jre/
export EC2_HOME=/usr/local/ec2/ec2-api-tools-1.7.5.1
export EC2_AMITOOL_HOME=/usr/local/ec2/ec2-ami-tools-1.5.7
export PATH=$PATH:$EC2_HOME/bin:$EC2_AMITOOL_HOME

alias compass='docker run --rm -ti -v $(pwd):/app davad/compass'
#alias composer='docker run --rm -v $(pwd):/app davad/composer'
alias regen-gemfile='docker run --rm -v $(pwd):/usr/src/app -w /usr/src/app ruby:2.3 bundle install'
alias rocketeer='docker run -ti --rm -v $(pwd):/app -v ~/.ssh:/root/.ssh grafikart/rocketeer'
#alias php='docker run --rm -it -v $(pwd):/app alxsad/psysh'

# added by Anaconda3 4.2.0 installer
export PATH="$HOME/anaconda3/bin:$PATH"

#export WORKON_HOME=~/PyEnvs
#source /usr/local/bin/virtualenvwrapper.sh

set -o EXTENDED_GLOB

export GOPATH=$HOME/gocode
export PATH="$GOPATH/bin:/usr/local/go/bin:$PATH"


export NVM_DIR="/home/davad/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

source ~/anaconda3/bin/aws_zsh_completer.sh

[ -f /usr/share/autojump/autojump.zsh ] && . /usr/share/autojump/autojump.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
