# Terraform EKS Module

This repository contains a Terraform configuration to set up an Amazon EKS cluster along with a VPC in AWS.

## Directory Structure

- `main.tf` - The main Terraform configuration file.
- `variables.tf` - This file contains the variable definitions.
- `outputs.tf` - This file contains the output definitions.
- `README.md` - Documentation for this Terraform configuration.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) v0.12+
- AWS account with necessary permissions to create resources.

## Usage

1. **Clone the repository:**

    ```sh
    git clone https://github.com/your-repo/terraform-eks.git
    cd terraform-eks
    ```

2. **Initialize the Terraform working directory:**

    ```sh
    terraform init
    ```

3. **Review and modify the variables if necessary:**

    Edit the `variables.tf` file to change any default values if required.

4. **Apply the Terraform configuration:**

    ```sh
    terraform apply
    ```

    This command will prompt you to confirm before creating resources. Type `yes` to proceed.

5. **Retrieve the outputs:**

    After the apply command completes, you can view the outputs using:

    ```sh
    terraform output
    ```

## Configuration Details

### main.tf

- **Provider Configuration:** Specifies the AWS region to use.
- **EKS Module:** Configures the EKS cluster using the `terraform-aws-modules/eks/aws` module.
- **VPC Module:** Configures the VPC using the `terraform-aws-modules/vpc/aws` module.

### variables.tf

- `cluster_name`: The name of the EKS cluster. Default is `"my-cluster"`.
- `region`: The AWS region to deploy the resources. Default is `"us-west-2"`.
- `vpc_cidr`: The CIDR block for the VPC. Default is `"10.0.0.0/16"`.

### outputs.tf

- `cluster_endpoint`: The endpoint for the EKS cluster.
- `cluster_name`: The name of the EKS cluster.
- `kubeconfig`: The contents of the kubeconfig file to access the EKS cluster.

## Clean Up

To delete the resources created by this Terraform configuration, run:

```sh
terraform destroy
