\# Terraform Multi-Region EC2 Deployment



\## Task

Launch Linux EC2 instances in two AWS regions using a single Terraform file.



\## Technologies Used

\- AWS EC2

\- Terraform

\- AWS CLI



\## Regions

\- Mumbai: ap-south-1

\- Virginia: us-east-1



\## Implementation

A single `main.tf` file was used with two AWS provider aliases to create Ubuntu 24.04 EC2 instances in both regions.



\## Terraform Commands

```bash

terraform init

terraform validate

terraform plan

terraform apply

