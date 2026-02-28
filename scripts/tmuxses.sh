#!/bin/bash

SESSION_NAME="playground"

tmux has-session -t $SESSION_NAME &> /dev/null
    if [ $? != 0 ]; then
        tmux new-session -s $SESSION_NAME -d

        # Create windows and panes, send commands
        tmux rename-window -t $SESSION_NAME:1 "code"
        # tmux split-window -h -t $SESSION_NAME:1
        tmux send-keys -t $SESSION_NAME:1.0 "cd ~/workspace/dev/personal/" C-m C-l
        # tmux send-keys -t $SESSION_NAME:1.1 "cd ~/workspace/dev/personal/" C-m C-l
        # tmux send-keys -t $SESSION_NAME:1.1 "lf" C-m

        tmux new-window -t $SESSION_NAME:2 -n "server"
        tmux send-keys -t $SESSION_NAME:2.0 "cd ~/workspace/dev/personal/playground/php_book/" C-m C-l
        tmux send-keys -t $SESSION_NAME:2.0 "php -S localhost:8080" C-m

        # Set active window
        tmux select-window -t $SESSION_NAME:1
    fi

    # Attach to the session
    tmux attach -t $SESSION_NAME
