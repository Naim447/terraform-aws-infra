# terraform-aws-infra
Enterprise CI/CD Pipeline using Terraform, Jenkins, Docker, Kubernetes and AWS Designed and implemented a production-grade CI/CD pipeline using Terraform, Jenkins, Docker, Kubernetes and AWS.

📖 Project Overview

This project demonstrates a complete Enterprise DevOps CI/CD Pipeline built using modern DevOps tools and best practices.

The infrastructure is provisioned using Terraform, source code is managed in GitHub, builds are automated using Jenkins, applications are containerized using Docker, images are stored in Docker Hub, and deployments are performed automatically on a Kubernetes Cluster running on AWS EC2.

The entire process is fully automated, enabling Continuous Integration (CI) and Continuous Deployment (CD) with zero manual intervention.

🎯 Project Objective

Whenever a developer pushes code to GitHub:

GitHub triggers Jenkins through a Webhook
Jenkins pulls the latest code
Jenkins runs build and test stages
Jenkins creates a Docker image
Jenkins pushes the image to Docker Hub
Jenkins updates the Kubernetes deployment
Kubernetes performs a rolling update
New application version becomes available automatically
