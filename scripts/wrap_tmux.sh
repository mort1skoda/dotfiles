#!/bin/sh

tmux new-session -s "masterStack" -d
tmux split-window -h
#tmux split-window -v
tmux -2 attach-session -d

