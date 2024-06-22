output "cluster_endpoint" {
  description = "The endpoint for the EKS cluster"
  value       = module.eks.cluster_endpoint
}

output "cluster_name" {
  description = "The name of the EKS cluster"
  value       = module.eks.cluster_id
}

output "kubeconfig" {
  description = "Kubeconfig file contents"
  value       = module.eks.kubeconfig
}
