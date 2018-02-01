# Colors
BACKGROUND=black
FOREGROUND=white
HIGHLIGHT="#3fcfff"
ACTIVITY="#a0d0f0"

# Title
set -g set-titles on
set -g set-titles-string '#(whoami)@#H - (#S:#W.#P)'

# Panes
set -g pane-border-fg default
set -g pane-active-border-bg default
set -g pane-active-border-fg $HIGHLIGHT

set -g display-panes-time 1000
set -g display-panes-colour default
set -g display-panes-active-colour $HIGHLIGHT

# Clock
set -g clock-mode-colour $FOREGROUND
set -g clock-mode-style 24

# Mode
set -g mode-bg $HIGHLIGHT
set -g mode-fg $BACKGROUND

# Windows

setw -g window-status-format " #I:#W"
setw -g window-status-bg default
setw -g window-status-fg $FOREGROUND
setw -g window-status-attr dim

setw -g window-status-last-style fg=$FOREGROUND,bold

setw -g window-status-current-format " #I:#W"
setw -g window-status-current-bg default
setw -g window-status-current-fg $HIGHLIGHT
setw -g window-status-current-attr bold

setw -g window-status-activity-bg $BACKGROUND
setw -g window-status-activity-fg $ACTIVITY
setw -g window-status-activity-attr dim

## Cannot use:
##  - screen-bce, screen-256color-bce: tmux does not support bce
##  - screen-256color: vim broken without -bce
set -g default-terminal "screen-256color"

# Base index ( start counting from 1 )
set -g base-index 1
setw -g pane-base-index 1

# Status Top
set -g status-position top

# Status Colors
set -g status-bg $BACKGROUND
set -g status-fg $FOREGROUND

# Status Interval - big
set -g status-interval 60
set -g status-utf8 on

# Status contents
set -g status-left ' π '
set -g status-right '| #S:#I.#P '

# Message
set -g message-bg $BACKGROUND
set -g message-fg $HIGHLIGHT
set -g message-attr bright
