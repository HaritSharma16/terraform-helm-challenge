resource "aws_ebs_volume" "app_storage" {
  availability_zone = element(data.aws_availability_zones.available.names, 0)
  size              = var.volume_size
  type              = "gp2"
  encrypted         = true
  tags = {
    Name = var.volume_name
  }
}

resource "aws_s3_bucket" "app_bucket" {
  bucket = var.s3_bucket_name
  acl    = "private"
  tags = {
    Name = var.s3_bucket_name
  }
}
