# Setting paths
# We use $GIT_ROOT to know our working directory.
if [ -z "$GIT_ROOT" ]; then
      echo "\$GIT_ROOT empty so using \$HOME/zsh"
      export GIT_ROOT=$HOME/zsh
fi
export PATH=$PATH:$GIT_ROOT/ultimate-linux-tool-box:$GIT_ROOT/ultimate-linux-tool-box/clustergit:$GIT_ROOT/ultimate-linux-tool-box/MySQLTuner-perl