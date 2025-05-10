#!/bin/bash

session="deployment"
tmux new-session -d -s $session

tmux rename-window -t $session:0 'wit'
tmux send-keys -t $session:0 'cd ~/shopware/deployments/wit-deployment/' C-m

tmux new-window -t $session:1 -n 'wit-demo'
tmux send-keys -t $session:1 'cd ~/shopware/deployments/wit-demo-deployment/' C-m

tmux new-window -t $session:2 -n 'bekuplast'
tmux send-keys -t $session:2 'cd ~/shopware/deployments/bekuplast-deployment/' C-m

tmux new-window -t $session:3 -n 'frega'
tmux send-keys -t $session:3 'cd ~/shopware/deployments/frega-deployment/' C-m

tmux new-window -t $session:4 -n 'tigerenergy'
tmux send-keys -t $session:4 'cd ~/shopware/deployments/tigerenergy-deployment/' C-m

tmux new-window -t $session:5 -n 'vollmer'
tmux send-keys -t $session:5 'cd ~/shopware/deployments/vollmer-deployment/' C-m

tmux new-window -t $session:6 -n 'docker'
tmux send-keys -t $session:6 'cd ~/shopware/docker/' C-m

tmux select-window -t $session:0
