
# Next.js 13 App with Docker and CI/CD

This project is a simple **Next.js 13 application** that is containerized using **Docker** and deployed using **Vercel** and **Docker Hub** with a **GitHub Actions CI/CD pipeline**.

---

## 🚀 Features
- Next.js 13 app
- Dockerized for container deployment
- CI/CD pipeline with GitHub Actions
- Deployment on **Vercel** (for web hosting) and **Docker Hub** (for image distribution)

---

## 🐳 Running the App using Docker

### 1. Clone the repository
```bash
git clone https://github.com/shinjansarkar/nextjs13-github.git
cd nextjs13-github

2. ## Build the Docker image ##
```bash
docker build -t nextjs13-app .

```
3. ## Run the Docker container ##
  ```bash
docker run -d -p 3000:3000 --name nextjs13-container nextjs13-app

  ```

4. ## Access the app ##
   ```bash
   Open your browser and go to http://localhost:3000
   ```

🔄 CI/CD Pipeline (GitHub Actions)

This project uses GitHub Actions for automating builds and deployments.
The pipeline does the following:

Trigger: Runs on every push to the main branch.

Checkout Code: Pulls the latest code from GitHub.

Build Docker Image: Creates a Docker image for the app.

Push to Docker Hub: Publishes the image to your Docker Hub account.

Deploy: App can be deployed via Vercel for live web access.

```bash
- name: Login to Docker Hub
  uses: docker/login-action@v2
  with:
    username: ${{ secrets.DOCKER_USERNAME }}
    password: ${{ secrets.DOCKER_PASSWORD }}

- name: Build and Push Docker image
  uses: docker/build-push-action@v3
  with:
    context: .
    push: true
    tags: ${{ secrets.DOCKER_USERNAME }}/nextjs13-app:latest
```



   
