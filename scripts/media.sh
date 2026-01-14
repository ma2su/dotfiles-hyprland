#!/bin/bash

playerctl metadata --format '{{ trunc(title, 30) }} - {{ artist }}' 2>/dev/null || echo "⏸️ Rien en cours"
