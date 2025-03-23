#!/usr/bin/env bash
# This script updates all .sh files in the repository.
# It backs up each file (with a .bak extension) before modifying it.

# Define the new shebang line and header comment.
NEW_SHEBANG='#!/usr/bin/env bash'
CURRENT_DATE=$(date)
NEW_HEADER="# Updated on ${CURRENT_DATE}\n# This script is maintained by [Your Name]"

# Find all .sh files in the current directory (and subdirectories)
find . -type f -name "*.sh" | while read -r file; do
    # Optionally skip updating this script to avoid self-modification
    if [[ "$file" == "./scripts/update_scripts.sh" ]]; then
      echo "Skipping self update: $file"
      continue
    fi

    echo "Updating $file ..."

    # Make a backup of the original file
    cp "$file" "$file.bak"

    # Check if the file starts with a shebang
    if head -n 1 "$file" | grep -q "^#!"; then
        # If it does, remove the first line and add our new header.
        tail -n +2 "$file" > "$file.tmp"
        {
            echo -e "$NEW_SHEBANG"
            echo -e "$NEW_HEADER"
            echo ""
            cat "$file.tmp"
        } > "$file"
        rm "$file.tmp"
    else
        # If no shebang, prepend it using a heredoc
        cat <<EOF > "$file.tmp"
$NEW_SHEBANG
$NEW_HEADER

EOF
        cat "$file" >> "$file.tmp"
        mv "$file.tmp" "$file"
    fi
done

echo "Script update complete."

