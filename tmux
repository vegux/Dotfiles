# source .tmux.conf as suggested in `man tmux`
set-window-option -g utf8 on
set -g status on
set -g status-utf8 on
#Remap default "prefix" from CTRL-b to CTRL-a
unbind C-b
set -g prefix C-a
# enable activity alerts
setw -g monitor-activity on
set -g visual-activity on
# reload conf with command+r
bind r source-file ~/.tmux.conf \; display "Reloaded!"
# use plenty of colors
set -g default-terminal "screen-256color"
# first window is number 1, not zero
set -g base-index 1
set -g pane-base-index 1
set -g history-limit 30000
#Powerline tmux
set-option -g status on
set -g status-bg black
set -g status-fg white
set-option -g status-interval 2
set-option -g status-utf8 on
#set-option -g status-justify "centre"
set-option -g status-left-length 75
set-option -g status-right-length 39
set-option -g status-left "#(~/Documents/tpm/powerline.sh left)"
set-option -g status-right "#(~/Documents/tpm/powerline.sh right)" 
# Terminal emulator window title
set -g set-titles on
set-option -g set-titles-string '#S:#I.#P <#W>' # window number,program name, active(or not)
# mouse
setw -g mode-mouse on
set -g mouse-select-pane on
set -g mouse-resize-pane on
set -g mouse-select-window on
#
bind C-[ run '~/Documents/tpm/mute_powerline.sh left' #Mute Left statusbar.
bind C-] run '~/Documents/tpm/mute_powerline.sh right' #Mute Right statusbar.
#
#EOF
