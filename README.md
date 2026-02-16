# Jenkins CI/CD Pipeline

This repository contains the configuration for a Jenkins-based CI/CD pipeline, including Dockerization and Kubernetes deployment.

## 📂 Contents

- **`Jenkinsfile`**: Pipeline script defining the build, test, and deploy stages.
- **`Dockerfile`**: Instructions to containerize the application.
- **`deployment.yaml`**: Kubernetes manifest for deploying the containerized app.
- **`lab2-task6-snapshot` / `lab2-task7-monitor`**: Configuration/scripts related to monitoring and snapshots.

## 🚀 Pipeline Overview

1.  **Build**: Creates the Docker image.
2.  **Deploy**: Pushes the image to the registry and updates the Kubernetes deployment using `deployment.yaml`.
3.  **Monitor**: Integration with monitoring tools (as seen in `lab2-task7-monitor`).

## 🛠️ Usage

Ensure your Jenkins server has the necessary plugins (Docker, Kubernetes) and credentials configured before running this pipeline.

