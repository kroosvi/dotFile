# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

#Zsh Theme
ZSH_THEME=random

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
ZSH_THEME_RANDOM_CANDIDATES=( 
	"jonathan" 
)

#no more echo from zsh
ZSH_THEME_RANDOM_QUIET=true

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
 zstyle ':omz:update' mode auto      # update automatically without asking

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

#PlugIns goes here!
plugins=(
	git
	zsh-syntax-highlighting
	zsh-autosuggestions
	sudo
	web-search
	k
	colored-man-pages
	z
)
source $ZSH/oh-my-zsh.sh

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
# Example aliases

#Text editor
alias v="nvim"

#system commands 
alias sdn="shutdown now"
alias rest="sh ~/project/script/rest.sh"
alias update="sudo pacman -Syuu"

#To the config files 
alias zshconfig="nvim ~/.zshrc"
alias nvimconfig="nvim .config/nvim/lua"
alias i3config="nvim .config/i3/config"
alias alaconfig="nvim .config/alacritty/alacritty.yml"
alias polyconfig="nvim .config/polybar/colorblocks"
alias night="alacritty-themes Grayscale.dark"
alias morning="alacritty-themes Ocean.light"

# run neofetch as soon zsh is up
neofetch
