#!/bin/bash

# Define the scripts you want to run

SCRIPTS=(
    "Manage Menu"
    "Manage Storage Space"
    "Manage Storage"
    "Manage Niri"
    "CS2SUS"
    "Quit"
)

# Use fzf to display an interactive menu
CHOICE=$(printf "%s\n" "${SCRIPTS[@]}" | fzf --prompt="Select a script to run: ")

# Act on the user's choice
case "$CHOICE" in
    "Manage Menu")
        echo "Managing Menu"
        # Execute the script
        ~/scripts/script3.sh
        ;;
    "Manage Niri")
        echo "Opening config"
        ~/scripts/script2.sh
        ;;
    "Manage Storage Space")
        echo "Managing Storage space"
        ~/scripts/script1.sh
        ;;
     "Manage Storage")
        echo "Managing Storage"
        ~/scripts/Partition.sh
        ;;
    "CS2SUS")
        echo "HACKING CS2..."
        ~/scripts/cs2SUS.sh
        ;;
    "Quit")
        echo "Exiting menu."
        ;;
    *)
        echo "No script selected or invalid choice."
        ;;
esac