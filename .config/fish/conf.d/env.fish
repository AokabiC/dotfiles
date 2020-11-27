set -U fish_user_paths $fish_user_paths /usr/local/bin

# cargo
source ~/.cargo/env

# volta
set -x VOLTA_HOME $HOME/.volta
set -x PATH $VOLTA_HOME/bin $PATH

# pyenv
set -x PYENV_ROOT $HOME/.pyenv
set -x PATH $PYENV_ROOT/bin $PATH
pyenv init - | source