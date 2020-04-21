# Functions
# -- ultb_install - install some required ultb packages.
ultb-install () {
	sudo apt install python3-pip
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
        export ULTB_ROOT=$ZSH_ROOT/ultimate-linux-tool-box
elif [ -z "$GIT_ROOT" ]; then
	echo "\$GIT_ROOT empty so using \$HOME/zsh/ultimate-linux-tool-box"
	export ULTB_ROOT=$HOME/zsh/ultimate-linux-tool-box
else
	export ULTB_ROOT=$GIT_ROOT
fi

export PATH=$PATH:$ULTB_ROOT
export PATH=$PATH:$ULTB_ROOT/clustergit
export PATH=$PATH:$ULTB_ROOT/MySQLTuner-perl
export PATH=$PATH:$ULTB_ROOT/parsyncfp
export PATH=$PATH:$ULTB_ROOT/httpstat
export PATH=$PATH:$ULTB_ROOT/cloudflare-cli/bin