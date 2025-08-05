<!-- docs/architecture.md -->
# High-Level Architecture

This document describes the end-to-end flow of our multi-cloud CSV-processing prototype.

## 1. Overview

1. **Frontend (AKS)**  
   - Flask-based web app running in Azure Kubernetes Service  
   - Drag-and-drop CSV upload UI  
2. **Messaging Layer**  
   - Upon upload, frontend posts each file as a message to Google Pub/Sub  
   - Decouples ingestion from processing  
3. **Processing (GCP)**  
   - Cloud Functions subscribe to Pub/Sub topics  
   - Each function: parse CSV → validate → transform  
4. **Storage (AWS)**  
   - Final JSON or Parquet blobs land in an S3 bucket  
   - Lifecycle rules move older data to Glacier  
5. **Networking & Security**  
   - AKS, GCP Functions and S3 communicate over private endpoints / VPC-peering  
   - IAM roles with least privilege per service  

## 2. Data Flow Diagram

1. User → AKS LoadBalancer  
2. AKS → Pub/Sub  
3. Pub/Sub → Cloud Functions  
4. Functions → S3  

## 3. Cloud-Agnostic Terraform Modules

- **modules/networking/**: VPC/VNet, subnets, peering  
- **modules/compute/**: AKS/EKS/GKE clusters  
- **modules/messaging/**: Pub/Sub topics, Event Grid, SNS (abstracted)  
- **modules/storage/**: S3 buckets, GCS buckets, Blob containers  

Parameterize via `cloud_provider` variable to generate the right resources.

---

