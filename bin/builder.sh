#!bin/bash

OUTPUT_PATH="$1"
SOURCE_DIR='src'
MAIN_FILE="$SOURCE_DIR/__main"
INCLUDE_FILE="$SOURCE_DIR/__includes"
 
echo -e '#!/bin/bash' > "$OUTPUT_PATH"
echo '' >> "$OUTPUT_PATH"

for line in $(cat $INCLUDE_FILE);
do
    cat "$SOURCE_DIR/$line" >> "$OUTPUT_PATH"
    echo -e "" >> "$OUTPUT_PATH"
done

cat "$MAIN_FILE" >> "$OUTPUT_PATH"