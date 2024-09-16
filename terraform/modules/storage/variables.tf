variable "volume_size" {
  description = "Size of the EBS volume"
  default     = 50
}

variable "volume_name" {
  description = "Name of the EBS volume"
  default     = "app-ebs-volume"
}

variable "s3_bucket_name" {
  description = "Name of the S3 bucket"
  default     = "app-storage-bucket"
}
