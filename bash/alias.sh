#!/usr/bin/env bash
#
# Directory shortcut
export PROJECT_GIT=/Users/Shared/development/dev-project
alias contnetserv="cd $PROJECT_GIT/contentserv"
alias todev="cd $PROJECT_GIT/.."
alias toconfig="cd $PROJECT_GIT/../dev-config"
#
# Custom aliases for workspace
alias cl='clear'
alias sacl='tail -f /usr/local/var/log/httpd/access_log'
alias indesignlog='tail -f ~/Desktop/idlog_cs11.log'
alias secl='tail -f /usr/local/var/log/httpd/error_log'
alias mysqlshell="mysql -h localhost -u root -p"
#
# Git stuffs
alias gs='git status'
alias gf='git fetch'
alias gl='git log'
alias gc='git commit'
# Postgres stuffs
alias pg_start="launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"
alias pg_stop="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"
#
# Docker stuff
alias dv="docker version"
alias dn="docker network"
