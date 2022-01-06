# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/redemption/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="af-magic"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#source $ZSH/oh-my-zsh.sh
plugins=(
	git
	archlinux
	#kubectl
  bundler
  dotenv
  rake
  rbenv
  #docker
  kube-ps1
  ruby
  #zsh-kubectl-prompt
  #ansible
  #helm
  #postgres
  salt
  fzf
  ssh-agent
  ufw
  #vscode
  #vault
  #vagrant
  #vagrant-prompt
  #torrent
  #thor
  #terraform
  systemadmin
  redis-cli
  adb
  aws
  #encode64
  battery
  otp
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#PROMPT=$PROMPT'$(kube_ps1) '
RPROMPT='$(battery_pct_prompt) | ${battery_level_gauge}'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
#GIT_PAGER=cat git diff
export LESS="-F -X $LESS"

fpath+=${ZDOTDIR:-~}/.zsh_functions

typeset -g POWERLEVEL9K_INSTANT_PROMPT=off

export PATH=$PATH:$HOME/go/bin:$HOME/.local/bin:$HOME/bin:$HOME/.local/bin/Goliad
#alias kubecolor=kubectl
alias k=kubecolor

# Confirm command to be executed
confirm() {
  echo -n "\e[33mDo you want to run $*? [N/yes] \e[m"
  read REPLY

  # if test "$REPLY" = "y" -o "$REPLY" = "Y"; then
  if test "$REPLY" = "yes"; then
    "$@"
  else
      echo "Cancelled by user"
  fi
}

safe_kubectlapply() {
  context=$(kubectl config current-context)
  echo "\n"
  echo "BECAREFUL!!! APPLYING TO \e[31m$context\e[m"
  confirm kubectl apply -f "$@"
}

export XCURSOR_PATH=${XCURSOR_PATH}:~/.local/share/icons
#alias kaf='safe_kubectlapply'
#alias kctx='kubectx'
#alias kns='kubens'
#source .oh-my-zsh/custom/fzf-tab/fzf-tab.plugin.zsh
#
#fpath=(~/.zsh/completion $fpath)
#autoload -Uz compinit && compinit -i
#
#alias klocal='k --kubeconfig $HOME/.kube/local-config'
#alias kdev='k --kubeconfig $HOME/.kube/development'
#alias kstage='k --kubeconfig $HOME/.kube/staging'
#alias kprod='k --kubeconfig $HOME/.kube/global-prod'
#alias kindo='k --kubeconfig $HOME/.kube/indo-prod'
#alias knepalprod='k --kubeconfig $HOME/.kube/mst-nepal-prod'
#alias ksharedprod='k --kubeconfig $HOME/.kube/mst-production-sharedinfra-eks'
#alias ksharedev='k --kubeconfig $HOME/.kube/mst-development-sharedinfra-eks'
#alias kaltadadev='k --kubeconfig $HOME/.kube/altada-dev'
#
#alias helmlocal='helm --kubeconfig $HOME/.kube/local-config'
#alias helmdev='helm --kubeconfig $HOME/.kube/development'
#alias helmstage='helm --kubeconfig $HOME/.kube/staging'
#alias helmprod='helm --kubeconfig $HOME/.kube/global-prod'
#alias helmindo='helm --kubeconfig $HOME/.kube/indo-prod'
#alias helmsharedprod='helm --kubeconfig $HOME/.kube/mst-production-sharedinfra-eks'
#alias helmsharedev='helm --kubeconfig $HOME/.kube/mst-development-sharedinfra-eks'
#
#alias clip="xclip -sel clipboard"
#alias mst2fa="2fa mst-ca|clip"
#alias cloudflare2fa="2fa cloudflare|clip"
#alias gitlab2fa="2fa gitlab|clip"
#alias vision2fa="2fa vision2fa|clip"
#screenfetch
#export PATH=$PATH:~/.kube/plugins/jordanwilson230
#
#alias alston-vpn="bash /home/redemption/.local/bin/vpn-alston"
#
#alias cat="bat"
#export PATH=/home/redemption/bin:$PATH
#export DOCKER_HOST=unix:///run/user/1000/docker.sock

alias bd="base64 -d <<<"
