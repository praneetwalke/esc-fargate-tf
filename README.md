# AWS ECS Terraform Infrastructure


## 🚀 Project Overview

This repository contains a Terraform-based configuration for deploying and managing a robust AWS ECS Fargate infrastructure. The project enables:

- 🛠️ Automated provisioning of resources including VPC, subnets, and ECS services.
- 📦 Deployment of containerized applications on ECS Fargate.
- 📡 High availability through Application Load Balancers.
- 🔒 Secure and scalable network design with public and private subnets.

---

## 🏗️ Architecture Highlights

- **VPC** with Public and Private Subnets for secure and efficient resource allocation.
- **ECS Cluster** leveraging Fargate for serverless container management.
- **Application Load Balancer** for distributing traffic across ECS tasks.
- **IAM Roles and Policies** to ensure secure access for ECS tasks and services.
- **Remote State Management** with an S3 backend for Terraform state.

---

## 🔧 Prerequisites

1. **Terraform** installed ([Installation Guide](https://www.terraform.io/downloads)).
2. **AWS CLI** installed and configured ([Setup Instructions](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)).
3. **AWS Account** with permissions to create resources like ECS, VPC, and Load Balancers.

---

## 📝 Setup Instructions

1. Clone the repository:

   ```bash
   git clone https://github.com/praneetwalke/esc-fargate-tf.git
   cd ecs-fargate-tf
   ```

2. Initialize Terraform:

   ```bash
   terraform init
   ```

3. Preview the changes:

   ```bash
   terraform plan
   ```

4. Apply the configuration:

   ```bash
   terraform apply
   ```

5. Note the output values, especially the **Load Balancer DNS Name**.

---

## 📂 Repository Structure

```plaintext
aws-ecs-infra/
├── main.tf            # Core Terraform configuration
├── variables.tf       # Input variables for flexibility
├── outputs.tf         # Output variables for key resource details
├── modules/           # Modularized Terraform code (e.g., VPC, ECS)
├── README.md          # Project documentation
```

---

## 📋 Key Features

- **Infrastructure as Code**: Simplified and consistent environment setup using Terraform.
- **Scalable Design**: Easily adjust the number of ECS tasks and subnets.
- **Security First**: Fine-grained IAM roles and network configurations.

---

## 📊 Outputs

- **Load Balancer DNS Name**: Access your deployed application at the DNS name provided in Terraform output.

Example:

![Screenshot (159)](https://github.com/user-attachments/assets/6d74bd0e-cb45-432f-ba6c-21d6272f81a8)


```bash
Load Balancer DNS: http://ecs-cluster-alb-123456789.us-east-1.elb.amazonaws.com
```

---

## 🤝 Contributions

Contributions, issues, and feature requests are welcome! Feel free to submit a pull request.

---


## 📞 Contact

For questions or support, contact [Praneet Walke](mailto:walkepraneet@gmail.com).

---


> “Good infrastructure design is invisible when it works perfectly.”
