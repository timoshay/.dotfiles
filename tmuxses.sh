#!/bin/bash

SESSION_NAME="sesname"

tmux has-session -t $SESSION_NAME &> /dev/null
    if [ $? != 0 ]; then
        tmux new-session -s $SESSION_NAME -d

        # Create windows and panes, send commands
        tmux new-window -t $SESSION_NAME:1 -n "zsh"
        tmux send-keys -t $SESSION_NAME:1.0 "cd ~/workspace/dev/" C-m C-l

        tmux new-window -t $SESSION_NAME:2 -n "S"
        tmux send-keys -t $SESSION_NAME:2.0 "cd ~/workspace/dev/" C-m C-l
        tmux send-keys -t $SESSION_NAME:2.0 "php -S localhost:8080" C-m

        tmux new-window -t $SESSION_NAME:3 -n "notes"
        tmux send-keys -t $SESSION_NAME:3.0 "cd ~/workspace/notes/obsidian-vault/" C-m C-l

        # Set active window
        tmux select-window -t $SESSION_NAME:1
    fi

    # Attach to the session
    tmux attach -t $SESSION_NAME
