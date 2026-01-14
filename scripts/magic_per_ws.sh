#!/bin/bash

# Workspace courant
WS=$(hyprctl monitors -j | jq -r '.[0].activeWorkspace.id')

# Si pas de workspace (rare)
if [ -z "$WS" ]; then
    exit 0
fi

# Si l’utilisateur demande d’envoyer la fenêtre active
if [[ "$1" == "send" ]]; then
    hyprctl dispatch movetoworkspace "special:magic-$WS"
    exit 0
fi

# Sinon → toggle le workspace special
hyprctl dispatch togglespecialworkspace "magic-$WS"
