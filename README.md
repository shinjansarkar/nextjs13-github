
# Next.js Application – CI/CD with Docker, Vercel & Docker Hub

This project showcases a **Next.js** app (based on the [nextjs13-github template](https://github.com/shinjansarkar/nextjs13-github)) containerized with **Docker** and deployed using **CI/CD via GitHub Actions**. The app is hosted on **Vercel**, and a Docker image is published to **Docker Hub**.

---

##  🚀 How to Run the App Locally Using Docker

1. **Clone the repository**  
   ```bash
   git clone https://github.com/shinjansarkar/nextjs13-github.git
   cd nextjs13-github
    ```
2. ## Build the Docker image ##
```bash
docker build -t your-dockerhub-username/nextjs13-github:latest .
```
3. ## Run the Docker container ##
  ```bash
docker run -d -p 3000:3000 --name nextjs-app your-dockerhub-username/nextjs13-github:latest
  ```

4. ## Access the app ##
   ```bash
   Open your browser and go to http://localhost:3000
   ```
