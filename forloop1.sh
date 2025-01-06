#!/bin/bash

#!/bin/bash

# Check if a directory is passed as an argument, default to 'logfiles'
directory="${1:-logfiles}"

# Check if the directory exists
if [ ! -d "$directory" ]; then
  echo "Directory '$directory' does not exist. Exiting..."
  exit 1
fi

# Loop through each .log file in the directory
for file in "$directory"/*.log; do
  # Check if the file exists (to handle no files matching the pattern)
  if [ -f "$file" ]; then
    # Create a timestamped archive to avoid overwriting
    timestamp=$(date +"%Y%m%d_%H%M%S")
    tar -czvf "$file_$timestamp.tar.gz" "$file"
    
    if [ $? -eq 0 ]; then
      echo "Successfully archived: $file"
    else
      echo "Error archiving: $file"
    fi
  else
    echo "No .log files found in '$directory'. Exiting..."
    exit 1
  fi
done

