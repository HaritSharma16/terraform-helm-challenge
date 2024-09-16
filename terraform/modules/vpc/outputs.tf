output "vpc_id" {
  value       = aws_vpc.main.id
  description = "The ID of the VPC"
}

output "public_subnets" {
  value       = aws_subnet.public_subnet[*].id
  description = "The public subnets"
}

output "private_subnets" {
  value       = aws_subnet.private_subnet[*].id
  description = "The private subnets"
}
