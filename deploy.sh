#!/bin/bash
cd /home/ec2-user/app

# Stop old container if running
docker stop nextjs-app || true
docker rm nextjs-app || true

# Build and run new container
docker build -t nextjs-app .
docker run -d -p 80:3000 --name nextjs-app nextjs-app
