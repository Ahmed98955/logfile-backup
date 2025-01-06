## Log-File-Archiver
A simple script to archive .log files with timestamped backups.

## Description

This Bash script is designed to automate the process of archiving .log files from a specified directory. It takes a directory as an input parameter (with a default value of logfiles) and compresses all .log files within that directory into timestamped .tar.gz archives. The script ensures that the provided directory exists and contains .log files before proceeding. If successful, each .log file is archived with a unique timestamp for easier tracking and storage.


## Features

* Directory Input: The script accepts a directory name as a command-line argument. If no directory is specified, it defaults to a directory named logfiles.

* File Verification: The script checks if the specified directory exists and contains .log files.

* Timestamped Archiving: Each .log file is archived with a timestamp in the format YYYYMMDD_HHMMSS to ensure unique archive names.

* Error Handling: The script provides error messages in case the directory doesn't exist or contains no .log files.

* Compression: The script uses tar to compress .log files into .tar.gz archives for efficient storage and retrieval.

## explanation :


# This Bash script checks if a specified directory exists. If the directory is not found, it prints an error message and exits. It accepts a directory name as an argument, defaulting to "logfiles" if none is provided. This ensures that any subsequent operations dependent on the directory can proceed safely.
![image](https://github.com/user-attachments/assets/bd5909ba-a5ac-48d2-8dce-ebde492697bb)

# This script segment iterates over .log files in a specified directory, creating a timestamped .tar.gz archive for each file. It checks if each file exists to handle cases where no files match the pattern. If the archiving is successful, it prints a success message; otherwise, it prints an error. If no .log files are found, the script exits with an error message.




















