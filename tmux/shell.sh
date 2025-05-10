#!/bin/bash

session="work"
tmux new-session -d -s $session

tmux rename-window -t $session:0 'main_2066'
tmux send-keys -t $session:0 'cd ~/shopware/sandbox/2066' C-m

tmux new-window -t $session:1 -n 'symfony_2066'
tmux send-keys -t $session:1 'cd ~/shopware/sandbox/2066' C-m

tmux new-window -t $session:2 -n 'main_20'
tmux send-keys -t $session:2 'cd ~/shopware/sandbox/20' C-m

tmux new-window -t $session:3 -n 'symfony_20'
tmux send-keys -t $session:3 'cd ~/shopware/sandbox/20' C-m

tmux new-window -t $session:4 -n 'main_10'
tmux send-keys -t $session:4 'cd ~/shopware/sandbox/10' C-m

tmux new-window -t $session:5 -n 'symfony_10'
tmux send-keys -t $session:5 'cd ~/shopware/sandbox/10' C-m

tmux new-window -t $session:6 -n 'ssh'

tmux new-window -t $session:7 -n 'mailhog'

tmux select-window -t $session:0
