#!/bin/bash

oklm=30
oula=10
critic=5

battery_file="/sys/class/power_supply/BAT0/capacity"
state_file="/tmp/battery_state"
battery=$(cat "$battery_file")

# Lire l'ancien état, sinon none
if [ -f "$state_file" ]; then
    last_state=$(cat "$state_file")
else
    last_state="none"
fi

# Définir l'état actuel
if [ "$battery" -le "$critic" ]; then
    current_state="critical"
elif [ "$battery" -le "$oula" ]; then
    current_state="medium"
elif [ "$battery" -le "$oklm" ]; then
    current_state="low"
else
    current_state="normal"
fi

# Notifier uniquement si on change d'état
if [ "$current_state" != "$last_state" ]; then

    case "$current_state" in
        low)
            notify-send -u low "Battery" "Pense à charger ! ($battery%)"
            ;;
        medium)
            notify-send -u normal "Battery" "Charge ton PC ($battery%)"
            ;;
        critical)
            notify-send -u critical "Battery" "Charge maintenant ! ($battery%)"
            ;;
    esac

    # Enregistrer le nouvel état
    echo "$current_state" > "$state_file"
fi

# Si on remonte au dessus de 30%, réinitialiser l'état
if [ "$current_state" = "normal" ] && [ "$last_state" != "normal" ]; then
    echo "normal" > "$state_file"
fi
