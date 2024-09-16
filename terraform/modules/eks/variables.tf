variable "cluster_name" {
  description = "Name of the EKS cluster"
  default     = "my-eks-cluster"
}

variable "public_subnets" {
  type        = list(string)
  description = "List of public subnet IDs"
}

variable "private_subnets" {
  type        = list(string)
  description = "List of private subnet IDs"
}
