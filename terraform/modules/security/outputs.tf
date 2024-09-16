output "eks_cluster_sg_id" {
  value       = aws_security_group.eks_cluster_sg.id
  description = "The ID of the EKS cluster security group"
}
