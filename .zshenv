######################################## Begin Environment Variables Export (excluding $PATH) ########################################

# XDG
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

# network proxy
NO_PROXY_LOCAL="10.0.0.0/8,100.64.0.0/10,169.254.0.0/16,172.16.0.0/12,192.0.0.0/24,192.168.0.0/16,fc00::/7,fe80::/10,127.0.0.0/8,127.0.0.1,::1,localhost,*.local"
NO_PROXY_APPLE="time.apple.com,timestamp.apple.com,sequoia.apple.com,seed-sequoia.siri.apple.com,captive.apple.com"
NO_PROXY_DOCKER="192.168.65.0/24,*.docker.internal"
export no_proxy="${NO_PROXY_LOCAL},${NO_PROXY_APPLE},${NO_PROXY_DOCKER}"
export http_proxy="http://127.0.0.1:7897"
export https_proxy="http://127.0.0.1:7897"
export all_proxy="socks5://127.0.0.1:7897"
unset NO_PROXY_APPLE; unset NO_PROXY_LOCAL; unset NO_PROXY_DOCKER

# golang
export GO111MODULE="on"
export GOPATH="$HOME/.golang"
export GOPROXY="https://goproxy.cn,https://mirrors.aliyun.com/goproxy/,direct"

# GPG
export GPG_TTY=$(tty)

# java
export JAVA_HOME="$(/usr/libexec/java_home)"

# poetry
export POETRY_CONFIG_DIR="$XDG_CONFIG_HOME/pypoetry"
export POETRY_HOME="$HOME/.local/share/pypoetry"

# ruby
export RUBY_YJIT_ENABLE=1

# load secrets
if [[ -f ~/.secrets ]]; then
  source ~/.secrets
fi

######################################## End Environment Variables Export (excluding $PATH) ########################################
