variable "cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
  default     = "my-cluster"
}

variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-west-2"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}
