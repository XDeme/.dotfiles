export LANG=en_US.UTF-8
export LC_CTYPE=$LANG
export LC_NUMERIC=$LANG
export LC_TIME=$LANG
export LC_COLLATE=$LANG
export LC_MONETARY=$LANG
export LC_MESSAGES=$LANG
export LC_PAPER=$LANG
export LC_NAME=$LANG
export LC_ADDRESS=$LANG
export LC_TELEPHONE=$LANG
export LC_MEASUREMENT=$LANG
export LC_IDENTIFICATION=$LANG
export LC_ALL=

export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state

# Support for fcitx5 IME
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx

# SQLite
export SQLITE_HISTORY=$XDG_DATA_HOME/sqlite_history

# Node.js
export NODE_REPL_HISTORY=$XDG_DATA_HOME/node_repl_history

# Setup NVM
export NVM_DIR=$XDG_DATA_HOME/nvm
source /usr/share/nvm/init-nvm.sh

# export NVIM_QT_RUNTIME_PATH=~/.local/share/nvim-qt/runtime/
