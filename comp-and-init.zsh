# sheldon
if command -v sheldon>/dev/null 2>&1; then
    if [[ "$USE_ZSH_PM" == "sheldon" ]]; then
        eval "$(sheldon source)"
    fi
fi

# Ghostty shell integration for Zsh
#if test -n "${GHOSTTY_RESOURCES_DIR}"; then
#    builtin source "${GHOSTTY_RESOURCES_DIR}/shell-integration/zsh/ghostty-integration"
#fi

# Ghostty shell integration for Zsh
GHOSTTY_REPO_S_GHOSTTY_RESOURCES_DIR="$GHQ_ROOT/github.com/ghostty-org/ghostty/src"
if test -n "${GHOSTTY_REPO_S_GHOSTTY_RESOURCES_DIR}"; then
    if test -d "${GHOSTTY_REPO_S_GHOSTTY_RESOURCES_DIR}"; then
        builtin source "${GHOSTTY_REPO_S_GHOSTTY_RESOURCES_DIR}/shell-integration/zsh/ghostty-integration"
    fi
fi

# zoxide
if command -v zoxide>/dev/null 2>&1; then
    eval "$(zoxide init zsh)"
fi

# pnpm
if command -v pnpm>/dev/null 2>&1; then
    eval "$(pnpm completion zsh)"
fi

# broot
# TODO: Use zsh integration
if command -v broot>/dev/null 2>&1; then
    source "$XDG_CONFIG_HOME/broot/launcher/bash/br"
fi

# Rye
if command -v rye>/dev/null 2>&1; then
    source "$HOME/.rye/env"
fi

# Linuxbrew
if command -v brew>/dev/null 2>&1; then
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi

# walk
function lk {
  cd "$(walk "$@")"
}

# mise
eval "$(mise activate zsh)"

# inshellisense
#if test -f ~/.inshellisense/key-bindings.zsh
#then
#    source ~/.inshellisense/key-bindings.zsh
#fi

# mdbook
if command -v mdbook>/dev/null 2>&1; then
    eval "$(mdbook completions zsh)"
fi

# atuin
if command -v atuin>/dev/null 2>&1; then
    eval "$(atuin init zsh)"
    atuin gen-completions --shell zsh
fi

# rebar3
if command -v rebar3 >/dev/null 2>&1; then
    export PATH="$XDG_CACHE_HOME/rebar3/bin:$PATH"
fi

# pay-respects
eval "$(pay-respects zsh --alias)"

# TODO: fix it
# jujutsu
#jj util completion zsh

# TODO: fix it
# sunbeam
#sunbeam completion zsh


# vfox
# NOTE: can't use it now
#eval "$(vfox activate zsh)"

# srgn
if command -v srgn >/dev/null 2>&1; then
    eval "$(srgn --completions zsh)"
fi

# go-task
if command -v task >/dev/null 2>&1; then
    eval "$(task --completion zsh)"
fi

# pixi
if command -v pixi >/dev/null 2>&1; then
    eval "$(pixi completion --shell zsh)"
fi

# intelli-shell
if command -v intelli-shell >/dev/null 2>&1; then
    eval "$(intelli-shell init zsh)"
fi

# pymobiledevice3
if command -v pymobiledevice3 >/dev/null 2>&1; then
    if [ -f "$HOME/.pymobiledevice3.zsh" ]; then
        source "$HOME/.pymobiledevice3.zsh"
    fi
fi

# ghtkn
if command -v ghtkn >/dev/null 2>&1; then
    eval "$(ghtkn completion zsh)"
fi

# jiratui
if command -v jiratui >/dev/null 2>&1; then
    eval "$(jiratui completions zsh)"
fi

# gup
if command -v gup >/dev/null 2>&1; then
    eval "$(gup completion zsh)"
fi

# tombi
if command -v tombi >/dev/null 2>&1; then
    eval "$(tombi completion zsh)"
fi

# vectorcode
if command -v vectorcode >/dev/null 2>&1; then
    eval "$(vectorcode --print-completion zsh)"
fi

# tod
if command -v tod >/dev/null 2>&1; then
    eval "$(tod shell completions zsh)"
fi

# dotter
if command -v dotter >/dev/null 2>&1; then
    eval "$(dotter gen-completions --shell zsh)"
fi

# ghciwatch
if command -v ghciwatch >/dev/null 2>&1; then
    eval "$(ghciwatch --completions zsh)"
fi

# crush
if command -v crush >/dev/null 2>&1; then
    source <(crush completion zsh)
fi

# jump
if command -v jump >/dev/null 2>&1; then
    eval "$(jump shell)"
fi

# wtp
if command -v wtp >/dev/null 2>&1; then
    #eval "$(wtp shell-init zsh)"
fi

# turm
if command -v turm >/dev/null 2>&1; then
    eval "$(turm completion zsh)"
fi

# dnspyre
if command -v dnspyre >/dev/null 2>&1; then
    eval "$(dnspyre --completion-script-zsh)"
fi

# ty
if command -v ty >/dev/null 2>&1; then
    eval "$(ty generate-shell-completion zsh)"
fi

# handler
if command -v handler >/dev/null 2>&1; then
    eval "$(_HANDLER_COMPLETE=zsh_source handler)"
fi

# pass-cli 
if command -v pass-cli >/dev/null 2>&1; then
    eval "$(pass-cli completion zsh)"
fi

# lazyworktree
if command -v lazyworktree >/dev/null 2>&1; then
    eval "$(lazyworktree completion zsh --code)"
fi

# worktrunk
if command -v worktrunk >/dev/null 2>&1; then
    eval "$(wt config shell init zsh)"
fi

# git-wt
if command -v git-wt >/dev/null 2>&1; then
    eval "$(git wt --init zsh)"
fi

# try-rs
if command -v try-rs >/dev/null 2>&1; then
    source "$HOME/.config/try-rs/try-rs.zsh"
fi

# doggo
if command -v doggo >/dev/null 2>&1; then
    eval "$(doggo completions zsh)"
fi

# pikpaktui
if command -v pikpaktui >/dev/null 2>&1; then
    eval "$(pikpaktui completions zsh)"
fi

# autohand
if command -v autohand >/dev/null 2>&1; then
    eval "$(autohand completion zsh)"
fi

# goose
if command -v goose >/dev/null 2>&1; then
    eval "$(goose completion zsh)"
fi

# kiro-cli
if command -v kiro-cli >/dev/null 2>&1; then
    eval "$(kiro-cli completion zsh)"
fi

# acli
if command -v acli >/dev/null 2>&1; then
    eval "$(acli completion zsh)"
fi

# codex
if command -v codex >/dev/null 2>&1; then
    eval "$(codex completion zsh)"
fi

# agent
if command -v agent >/dev/null 2>&1; then
    eval "$(agent shell-integration zsh)"
fi

# taws
if command -v taws >/dev/null 2>&1; then
    eval "$(taws completion zsh)"
fi

# pgit
if command -v pgit >/dev/null 2>&1; then
    eval "$(pgit completion zsh)"
fi

# jsongrep
# NOTE: or run it: jg generate shell zsh > ~/.zsh/completions/_jg
if command -v jg >/dev/null 2>&1; then
    eval "$(jg generate shell zsh)"
fi

# hyprmoncfg 
if command -v hyprmoncfg >/dev/null 2>&1; then
    eval "$(hyprmoncfg completion zsh)"
fi

# purple
if command -v purple >/dev/null 2>&1; then
    eval "$(purple --completions zsh)"
fi

# deadbranch
# NOTE: or run it: deadbranch completions zsh > ~/.zfunc/_deadbranch
if command -v deadbranch >/dev/null 2>&1; then
    eval "$(deadbranch completions zsh)"
fi

# sharedserver
if command -v sharedserver >/dev/null 2>&1; then
    eval "$(sharedserver completion zsh)"
fi

# unifly
if command -v unifly >/dev/null 2>&1; then
    eval "$(unifly completions zsh)"
fi

# tombi
if command -v tombi >/dev/null 2>&1; then
    eval "$(tombi completion zsh)"
fi

# fnox
if command -v fnox >/dev/null 2>&1; then
    eval "$(fnox activate zsh)"
    eval "$(fnox completion zsh)"
fi

# hk
if command -v hk >/dev/null 2>&1; then
    eval "$(hk completion zsh)"
fi

# pitchfork
if command -v pitchfork >/dev/null 2>&1; then
    eval "$(pitchfork activate zsh)"
    eval "$(pitchfork completion zsh)"
fi

# usage
if command -v usage >/dev/null 2>&1; then
    eval "$(usage --completions zsh)"
fi

# aube
if command -v aube >/dev/null 2>&1; then
    #aube completion zsh > "${fpath[1]}/_aube"
    eval "$(aube completion zsh)"
fi

# pkl
if command -v pkl >/dev/null 2>&1; then
    eval "$(pkl shell-completion zsh)"
fi

# rvpm
if command -v rvpm >/dev/null 2>&1; then
    #rvpm completion zsh > ~/.zfunc/_rvpm
    eval "$(rvpm completion zsh)"
fi

# kyushu
if [ -f "$HOME/.kyu/bin/env" ]; then
    source "$HOME/.kyu/bin/env"
fi

# ttl
if command -v ttl >/dev/null 2>&1; then
    #ttl --completions zsh > ~/.zfunc/_ttl
    eval "$(ttl --completions zsh)"
fi

# TODO: Use plugin manager
# cute
# e.g. https://github.com/mattmc3/antidote
#antidote install ras0q/cute

CUTE_DIR="${XDG_DATA_HOME:-$HOME/.local/share}/cute"
if [ ! -d "$CUTE_DIR" ]; then
  git clone https://github.com/ras0q/cute "$CUTE_DIR"
fi
source "$CUTE_DIR/cute"

#[ ! -f "$HOME/.x-cmd.root/X" ] || . "$HOME/.x-cmd.root/X" # boot up x-cmd.

