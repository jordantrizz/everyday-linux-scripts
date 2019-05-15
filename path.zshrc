# Setting paths
# We use $GIT_ROOT to know our working directory.
if [ -z "$GIT_ROOT" ]; then
	echo "\$GIT_ROOT empty so using \$HOME/zsh"
	export ULTB_ROOT=$HOME/zsh
else
	export ULTB_ROOT=$GIT_ROOT
fi
export PATH=$PATH:$ULTB_ROOT/ultimate-linux-tool-box:$ULTB_ROOT/ultimate-linux-tool-box/clustergit:$ULTB_ROOT/ultimate-linux-tool-box/MySQLTuner-perl