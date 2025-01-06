
#!/bin/bash

directory="${1:-logfiles}"


if [ ! -d "$directory" ]; then
  echo "Directory '$directory' does not exist. Exiting..."
  exit 1
fi


for file in "$directory"/*.log; do
 
  if [ -f "$file" ]; then
   
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

