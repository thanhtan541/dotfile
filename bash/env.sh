#!/usr/bin/env bash

SS_OPTIONS='--nocolor --hidden -g ""'

export FZF_DEFAULT_COMMAND="ag -l $SS_OPTIONS"
export FZF_CTRL_T_COMMAND="ag -l $SS_OPTIONS"
