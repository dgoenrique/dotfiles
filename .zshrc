# If you come from bash you might have to change your $PATH.
 export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load 
ZSH_THEME="AMG_basic"

# Use case-sensitive completion.
# CASE_SENSITIVE="true"

# Hyphen-insensitive completion.
# (Case-sensitive completion must be off. _ and - will be interchangeable)
# HYPHEN_INSENSITIVE="true"

# If pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Enable command auto-correction.
ENABLE_CORRECTION="true"

# Plugins:
plugins=( 
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# Set language 
export LANG=en_US.UTF-8

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Aliases definitions into a separate file: .aliases
source $HOME/.aliases

# Managing multiple language runtime versions on a per-project basis with asdf
# (https://asdf-vm.com/)
. $HOME/.asdf/asdf.sh

# append completions to fpath (asdf)
fpath=(${ASDF_DIR}/completions $fpath)

# initialise completions with ZSH's compinit (asdf)
autoload -Uz compinit && compinit

# View Colored Man Pages
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'
