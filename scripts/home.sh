#!/bin/bash

# Switch to workspace 1
hyprctl dispatch workspace 1

sleep 0.2

### 1) cava (kitty)
kitty --title cava -e cava &
sleep 0.3
hyprctl dispatch focuswindow title:cava
hyprctl dispatch movewindowpixel exact 22 826
hyprctl dispatch resizewindowpixel exact 1876 232

### 2) peaclock (kitty)
kitty --title peaclock -e peaclock &
sleep 0.3
hyprctl dispatch focuswindow title:peaclock
hyprctl dispatch movewindowpixel exact 1295 60
hyprctl dispatch resizewindowpixel exact 603 752

### 3) Apple Music (Chromium APP mode)
chromium --app="https://music.apple.com/fr/home" &
sleep 1.2
hyprctl dispatch focuswindow class:chromium
hyprctl dispatch movewindowpixel exact 680 60
hyprctl dispatch resizewindowpixel exact 601 752

### 4) Terminal ~ (kitty)
kitty --title home &
sleep 0.3
hyprctl dispatch focuswindow title:home
hyprctl dispatch movewindowpixel exact 22 60
hyprctl dispatch resizewindowpixel exact 644 752
