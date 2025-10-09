# Linux Command Cheatsheet
Common commands grouped by category (navigation, file management, permissions, etc.)

## Navigation Commands
- `pwd` — Print working directory
- `cd` — Change directory
- `ls -la` — List files (detailed)

## File and Directory Management
- `touch file.txt` — Create a new file
- `mkdir foldername` — Create a new directory
- `cp source.txt destination.txt` — Copy a file
- `mv oldname.txt newname.txt` — Rename or move file
- `rm file.txt` — Remove a file
- `rmdir foldername` — Remove empty directory
- `rm -r foldername` — Remove directory with contents

## Viewing and Editing Files
- `cat file.txt` — Display file contents
- `less file.txt` — View file page by page
- `head -n 5 file.txt` — Show first 5 lines
- `tail -n 5 file.txt` — Show last 5 lines
- `nano file.txt` — Edit file using nano editor

## Permissions and Ownership
- `chmod 755 file.txt` — Change file permissions
- `chown user:user file.txt` — Change file owner

## System and Process Monitoring
- `top` — Show running processes
- `ps aux` — Display all running processes
- `kill PID` — Terminate a process by ID
- `df -h` — Show disk space usage
- `free -h` — Show memory usage
- `uptime` — Show system uptime and load

## Networking Commands
- `ping google.com` — Test connectivity
- `ifconfig` — Show network interfaces
- `netstat -tuln` — Show active ports
- `curl ifconfig.me` — Show public IP

## Useful Shortcuts
- `Ctrl + C` — Stop a running command
- `Ctrl + L` — Clear the terminal screen
- `history` — Show command history
- `echo - `history` — Show command history >> linux_cheatsheet.md` — Repeat the last command
