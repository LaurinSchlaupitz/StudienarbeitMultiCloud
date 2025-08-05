# DevOps Multi-Cloud Prototype

A hands-on exploration of DevOps strategies for provisioning and operating applications across multiple public clouds in a cloud-agnostic way.

## Motivation

Enterprises increasingly rely on more than one cloud provider to optimize cost, resilience and regulatory compliance. Yet most DevOps practices and tooling are designed around a single platform.  
This prototype demonstrates how established DevOps patterns—Infrastructure as Code, CI/CD pipelines, environment provisioning and observability—can be applied uniformly across AWS, Azure and Google Cloud, minimizing lock-in and maximizing portability.

## Objectives

1. **Assess** core DevOps principles (IaC, pipeline automation, testing, monitoring) through literature and best-practice frameworks.  
2. **Implement** a reference architecture in Terraform that can target AWS, Azure and GCP with minimal changes.  
3. **Containerize** a sample web application and deploy it via a unified CI/CD workflow.  
4. **Validate** cloud-agnostic deployment, drift-detection and recovery across providers.

## High-Level Architecture

- **Infrastructure as Code**  
  Reusable Terraform modules for networking, compute and storage, parameterized per cloud.  
- **Sample Application**  
  A simple containerized web service (Node.js/React) deployed in each environment.  
- **CI/CD Pipelines**  
  GitHub Actions workflows that run linting, plan/apply stages and end-to-end tests.  

## Tech Stack

- **IaC:** Terraform
- **Clouds:** AWS, Azure, GCP  
- **Containerization:** Kubernetes 
- **App:** Flask/Python
- **CI/CD:** GitHub Actions  

## Getting Started

1. **Clone the repo**  
   ```bash
   git clone https://github.com/LaurinSchlaupitz/StudienarbeitMultiCloud.git
   cd StudienarbeitMultiCloud
