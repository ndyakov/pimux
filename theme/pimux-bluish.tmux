# Colors
BACKGROUND=black
FOREGROUND=white
HIGHLIGHT="#3fcfff"
ACTIVITY="#a0d0f0"

# Title
set -g set-titles on
set -g set-titles-string '#(whoami)@#H - (#S:#W.#P)'

# Panes
set -g pane-border-style fg=default
set -g pane-active-border-style fg=$HIGHLIGHT,bg=default

set -g display-panes-time 1000
set -g display-panes-colour $FOREGROUND
set -g display-panes-active-colour $HIGHLIGHT

# Clock
set -g clock-mode-colour $FOREGROUND
set -g clock-mode-style 24

# Mode
set -g mode-style bg=$HIGHLIGHT,fg=$BACKGROUND

# Windows

setw -g window-status-format " #I:#W"
setw -g window-status-style bg=default,fg=$FOREGROUND,dim
setw -g window-status-last-style fg=$FOREGROUND,bold

setw -g window-status-current-format " #I:#W"
setw -g window-status-current-style bg=default,fg=$HIGHLIGHT,bold

setw -g window-status-activity-style bg=$BACKGROUND,fg=$ACTIVITY,dim

# Base index ( start counting from 1 )
set -g base-index 1
setw -g pane-base-index 1

# Status Top
set -g status-position top

# Status Colors
set -g status-style fg=$FOREGROUND,bg=$BACKGROUND

# Status Interval
# But there is a strange bug that freezes osx
# https://github.com/tmux/tmux/issues/108
# set to 0
set -g status-interval 0

# Status contents
set -g status-left ' π '
set -g status-right '%W/52 | #S:#I.#P '

# Message
set -g message-style fg=$HIGHLIGHT,bg=$BACKGROUND,bright

# vim: set syntax=tmux:
