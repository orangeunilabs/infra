# !/bin/bash
git pull origin main

echo 

# Loop through all the subdirectories
for dir in */ ; do
    echo "Checking $dir"

    # Check if there is an update script in the subdirectory
    if test -f $dir/update.sh; then
        cd $dir

        echo "Updating $dir"

        chmod +x update.sh

        ./update.sh

        cd .. 
    else
        echo "No update script found in $dir"
    fi

    echo
done