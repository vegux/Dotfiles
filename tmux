# source .tmux.conf as suggested in `man tmux`
bind R source-file '~/.tmux.conf'
# utf8 is on
set -g utf8 on
set -g status-utf8 on

#Remap default "prefix" from CTRL-b to CTRL-a
unbind C-b
set -g prefix C-a
bind-key C-a send-prefix

# easier and faster switching between next/prev window
bind C-p previous-window
bind C-n next-window

# increase scrollback buffer size
set -g history-limit 50000
# tmux messages are displayed for 4 seconds
set -g display-time 4000

# upgrade $TERM
set -g default-terminal "screen-256color"

# super useful when using "grouped sessions" and multi-monitor setup
setw -g aggressive-resize on

# switch panes using Alt-arrow without prefix
bind -n M-Left select-pane -L
bind -n M-Right select-pane -R
bind -n M-Up select-pane -U
bind -n M-Down select-pane -D

# Enable mouse control (clickable windows, panes, resizable panes)
set -g mouse-select-window on
set -g mouse-select-pane on
set -g mouse-resize-pane on

#EOF
