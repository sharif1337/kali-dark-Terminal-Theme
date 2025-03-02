##!/bin/bash
#sudo cp /usr/share/qtermwidget5/color-schemes/Kali-Dark.colorscheme /usr/share/qtermwidget6/color-schemes/
#exit
#!/bin/bash

# Define paths
QTERM5_PATH="/usr/share/qtermwidget5/color-schemes"
QTERM6_PATH="/usr/share/qtermwidget6/color-schemes"
FILENAME="Kali-Dark.colorscheme"

# Function to check and copy file
copy_file() {
    src=$1
    dest=$2
    if [ -e "$src/$FILENAME" ]; then
        echo "File found in $src. Copying to $dest..."
        cp "$src/$FILENAME" "$dest/"
        echo "File copied successfully!"
    else
        echo "File not found in $src."
    fi
}

# Check and copy from QTERM5 to QTERM6
if [ -e "$QTERM5_PATH/$FILENAME" ]; then
    echo "File exists in $QTERM5_PATH."
    copy_file "$QTERM5_PATH" "$QTERM6_PATH"
else
    echo "File not found in $QTERM5_PATH. Checking $QTERM6_PATH..."
    # Check and copy from QTERM6 to QTERM5
    copy_file "$QTERM6_PATH" "$QTERM5_PATH"
fi

