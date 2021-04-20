# tmux
session="workspace"
tmux has-session -t $session 2>/dev/null
if [ $? != 0 ]; then
  tmux new-session -s $session 2>/dev/null
else
  tmux attach -t $session 2>/dev/null
fi

# if ! [ -n "$TMUX" ]; then
#   exit
# fi

# Theme
fpath+=$HOME/.zsh/pure
autoload -U promptinit; promptinit
export PURE_CMD_MAX_EXEC_TIME=0
prompt pure

setopt HIST_SAVE_NO_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS
HIST_STAMPS="yyyy-mm-dd"
HISTSIZE=10000000
SAVEHIST=10000000

export ZSH="/home/bobo/.oh-my-zsh"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$HOME/.emacs.d/bin:$HOME/.local/bin:$HOME/.cargo/bin:$PYENV_ROOT/bin:$GOPATH/bin:/home/bobo/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"

export PET_GITHUB_ACCESS_TOKEN="1ad4eebf13422ffe4c0f132d6d2aeca5ef77ce25"

# ~/.config/kioslaverc stores KDE proxy config
export http_proxy="http://127.0.0.1:10809"
export https_proxy=$http_proxy
export HTTP_PROXY=$http_proxy
export HTTPS_PROXY=$http_proxy

#rustlang
export RUSTUP_DIST_SERVER=https://mirrors.ustc.edu.cn/rust-static         # update toolchain
export RUSTUP_UPDATE_ROOT=https://mirrors.ustc.edu.cn/rust-static/rustup  # update rustup
export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/library"
export WASM_BUILD_TYPE=release # For substrate
# export OPENSSL_LIB_DIR="/usr/lib/openssl-1.0"
# export OPENSSL_INCLUDE_DIR="/usr/include/openssl-1.0"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# npm install -g yarn
# alias npm="npm --registry=https://registry.npm.taobao.org --cache=$HOME/.npm/.cache/cnpm --disturl=https://npm.taobao.org/dist --userconfig=$HOME/.cnpmrc"
export npm_config_proxy=http://127.0.0.1:10809

#GOlang
export GOPATH="$HOME/go"
export GO111MODULE=on
export GOPROXY=https://mirrors.aliyun.com/goproxy/
# CGO_ENABLED=1 leads to faster, smaller builds & runtimes
# it can dynamically load the host OS's native libraries (glibc etc.)
export CGO_ENABLED=0

# Standard plugins can be found in $ZSH/plugins/
plugins=(emacs extract git zsh-autosuggestions zsh-syntax-highlighting cargo)
source $ZSH/oh-my-zsh.sh

alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"
alias ls="lsd"
alias la="ls -lth --date \"+%Y-%m-%d %H:%M:%S\""
alias lb="ls -lh"
alias grep="rg"
alias less="bat -p"
alias baidunetdisk="/usr/lib/baidunetdisk/baidunetdisk"
alias top="glances"

# A tool to infer progress speed
# sudo nethogs

eval "$(pyenv init -)"
# screenfetch -A 'Arch Linux' # | lolcat
# ibus engine libpinyin
typeset -U PATH
