# example of getting file change details along with a batch marker
# used to perform single action for "batch" for file changes

# set to `true` to echo all file changes
DEBUG=true

FILE_CHANGE_BATCH_MARKER='--file-change-batch-end--'

fswatch --batch-marker="${FILE_CHANGE_BATCH_MARKER}" -0 . | xargs -0 -n 1 -I {} echo {} | while read file_path;
do
    if $DEBUG; then
        echo $file_path;
    fi

    # run block if file change batch marker is output
    if [ "$file_path" = "$FILE_CHANGE_BATCH_MARKER" ]; then
        echo $file_path;
    fi    
done