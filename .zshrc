# Functions
# -- ultb_install - install some required ultb packages.
ultb-install() {
	apt install python3-pip
	pip install ngxtop
}

# -- Mention some tools need to be installed.
if (( !$+commands[ls] )); then
	echo "pip doesn't exist?"
else
	echo "pip not installed, run ultb-install"
fi

# -- Setting paths
if [ ! -z "$ZSH_ROOT" ]; then
        echo "\$ZSH_ROOT exists, using \$ZSH_ROOT/zsh/ultimate-linux-tool-box"        
elif [ -z "$GIT_ROOT" ]; then
	echo "\$GIT_ROOT empty so using \$HOME/zsh/ultimate-linux-tool-box"
	export ULTB_ROOT=$HOME/zsh
else
	export ULTB_ROOT=$GIT_ROOT
fi
export PATH=$PATH:$ULTB_ROOT/ultimate-linux-tool-box
export PATH=$PATH:$ULTB_ROOT/ultimate-linux-tool-box/clustergit
export PATH=$PATH:$ULTB_ROOT/ultimate-linux-tool-box/MySQLTuner-perl
export PATH=$PATH:$ULTB_ROOT/ultimate-linux-tool-box/parsyncfp
export PATH=$PATH:$ULTB_ROOT/ultimate-linux-tool-box/httpstat
