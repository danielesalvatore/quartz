#! /bin/bash

TMP="tmp"
CONTENT_ROOT_FOLDER="content/"
SCRIPTS_ROOT_FOLDER="scripts/"
FOLDER_TO_BACKUP=("private" "templates" "_index.md")
SANITIZE_SCRIPT="obsidian-quartz-sanitizer.py"
OBSIDIAN_VAULT_ROOT="obsidian/danielesalvatore/"
OBSIDIAN_FOLDER_NAME="Project management"


# -- Create a working dir
echo "Create working dir"
rm -rf $TMP
mkdir -p $TMP

# -- Backup the non-content folders/files

for FOLDER in ${FOLDER_TO_BACKUP[@]}; do
    echo "Copying to working dir: "$FOLDER
    cp -r $CONTENT_ROOT_FOLDER$FOLDER $TMP
done

# -- Sanitize the obsidian content
echo "Move obsidian content to working dir"
cp -R "$OBSIDIAN_VAULT_ROOT$OBSIDIAN_FOLDER_NAME" $TMP

# Copy the script in 'content' folder and run the script
echo "Move sanitize script to working dir"
cp $SCRIPTS_ROOT_FOLDER$SANITIZE_SCRIPT $TMP
cd $TMP
echo "Run sanitize script"
python $SANITIZE_SCRIPT

# Remove the uneeded files once done
rm -rf $SANITIZE_SCRIPT
rm -rf "$OBSIDIAN_FOLDER_NAME"

cd ..

# -- Clean up the content folder
echo "Clean up old 'content' folder"
rm -rf $CONTENT_ROOT_FOLDER

echo "Creating a new empty 'content' folder"
mkdir -p $CONTENT_ROOT_FOLDER

ls

echo "Moving sanitized content to 'content' folder"
cp -R tmp/ content

# -- Clean up tmp folder
echo "Cleaned up working dir"
rm -rf $TMP

echo "Content sanitized!"
