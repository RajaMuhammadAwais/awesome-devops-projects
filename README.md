<!--
SPDX-FileCopyrightText: 2025 The Project Authors
SPDX-License-Identifier: Apache-2.0
-->

# awesome-devops-projects

A demo DevOps project showcasing:
- CI/CD with GitHub Actions and Jenkins
- Containerization with Docker
- Deployment via Kubernetes (Helm chart)
- Infrastructure provisioning with Terraform (AWS EC2)

## Repository Structure

- cicd/
  - github-actions/docker-build.yml — GitHub Actions workflow to build the Docker image
  - jenkins/Jenkinsfile — Declarative Jenkins pipeline to build and run the Docker image
- docker/
  - simple-app/ — Minimal Flask application with Dockerfile
- kubernetes/
  - helm-charts/my-app — Helm chart to deploy the simple app
- terraform/
  - aws-ec2/ — Terraform module to provision a demo EC2 instance

## Quickstart

### Docker: Build and Run Locally
- Build: `docker build -t demo/simple-app:latest docker/simple-app`
- Run: `docker run -d -p 5000:5000 --name simple-app demo/simple-app:latest`
- Visit: http://localhost:5000

### GitHub Actions: Build Docker
- On push to `docker/simple-app/**`, the workflow `cicd/github-actions/docker-build.yml` will build the image (no push).

### Jenkins: Pipeline
- Use the `cicd/jenkins/Jenkinsfile` in a Multibranch or Pipeline job.
- Stages: checkout, docker build, run container.

### Kubernetes: Deploy via Helm
- Package/install the chart from `kubernetes/helm-charts/my-app`
- Example:
  - `helm install my-app kubernetes/helm-charts/my-app`
  - Override values as needed (image repo/tag, replicas, etc.)

### Terraform: AWS EC2
- Change into `terraform/aws-ec2`:
  - `terraform init`
  - `terraform apply -var="ami_id=ami-xxxxxxxx" -auto-approve`
- Provide an Ubuntu AMI for your region or rely on the data source to pick the latest Ubuntu Jammy image.

## Notes
- This is intended as a self-contained demo. Secrets and production-grade concerns (registries, TLS, ingress, etc.) are intentionally simplified.
