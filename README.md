# Prodigy Web App

A high-performance, modern web application built with .NET 8, featuring a premium glassmorphism UI and a robust CI/CD pipeline.

## 🚀 Quick Start

### Run Locally (Docker)
Ensure you have Docker installed, then run:
```bash
docker-compose up --build
```
The app will be available at `http://localhost:8080`.

### Run Locally (.NET SDK)
If you have the .NET 8 SDK installed:
```bash
dotnet run
```
The app will be available at `http://localhost:5000` (or the port specified in your console).

## 🏗️ Project Structure
- `wwwroot/`: Static web assets (HTML, CSS, JS).
- `Program.cs`: Entry point for the .NET application.
- `Dockerfile`: Multi-stage build for production-ready containers.
- `azure-pipelines.yml`: Enterprise-grade CI/CD pipeline (Azure DevOps).
- `docker-compose.yml`: Local orchestration.

## 🛠️ CI/CD Pipeline Stages
The pipeline is now broken down into 10 individual stages for granular tracking:
1. **Restore**: Fetches .NET dependencies.
2. **Build**: Compiles the source code.
3. **Test**: Executes unit tests and collects coverage.
4. **Trivy FS Scan**: Scans the filesystem for vulnerabilities.
5. **SonarQuality Scan**: Performs deep code quality analysis.
6. **Push Artifact**: Publishes the build artifact to Azure DevOps.
7. **Build Image**: Constructs the Docker container image.
8. **Trivy Image Scan**: Scans the container image for security issues.
9. **Push Image**: Uploads the verified image to Docker Hub.
10. **Deploy**: Deploys the application to Azure App Service.

## 🎨 Design
The web interface uses:
- **Glassmorphism**: Translucent, blurred backgrounds for a modern feel.
- **Dynamic Backgrounds**: Animated CSS blobs for a living interface.
- **Responsive Layout**: Optimized for all devices.
- **Google Fonts**: 'Outfit' and 'JetBrains Mono'.

---
Generated with ❤️ by Antigravity.
