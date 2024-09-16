variable "vpc_name" {
  description = "The name of the VPC"
  default     = "main-vpc"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "public_subnets" {
  description = "Public subnets in different availability zones"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnets" {
  description = "Private subnets in different availability zones"
  type        = list(string)
  default     = ["10.0.3.0/24", "10.0.4.0/24"]
}
