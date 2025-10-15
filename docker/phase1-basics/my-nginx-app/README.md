# 🐳 My First Docker Project – Nginx App

This project is part of my **Railway Cloud Infrastructure preparation**, focused on learning Docker fundamentals.

## 📦 What This Does
This simple Nginx container serves a custom HTML page.  
It demonstrates how to:
- Write a Dockerfile  
- Build a Docker image  
- Run a container  
- Map container ports to the host machine  
- Push project files to GitHub  

## ⚙️ Commands Used
```bash
# Build the Docker image
docker build -t my-nginx-app .

# Run the container and expose port 8080
docker run -d -p 8080:80 my-nginx-app

# Check running containers
docker ps

# Stop container
docker stop <container_id>

# Remove container
docker rm <container_id>

