#!/bin/bash

# Directory to search for PDFs
SEARCH_DIR="$HOME/Documents/Obsidian Vault/resources"

# Find PDFs and pipe to rofi
SELECTED=$(fd -L -e pdf . "$SEARCH_DIR" | sed 's|.*/resources/||' | \
    rofi -dmenu -i -matching fuzzy -sorting-method fzf -p "Select PDF: ")

# Open in zathura if a file was selected
if [ -n "$SELECTED" ]; then
    zathura "$SEARCH_DIR/$SELECTED" &
fi
