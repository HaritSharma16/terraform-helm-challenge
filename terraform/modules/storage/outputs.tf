output "ebs_volume_id" {
  value       = aws_ebs_volume.app_storage.id
  description = "The ID of the EBS volume"
}

output "s3_bucket_name" {
  value       = aws_s3_bucket.app_bucket.bucket
  description = "The name of the S3 bucket"
}
