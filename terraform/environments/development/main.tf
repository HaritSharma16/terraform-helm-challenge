provider "aws" {
  region = "us-west-2"
}

module "vpc" {
  source        = "../../modules/vpc"
  vpc_cidr      = "10.2.0.0/16"
  public_subnets  = ["10.2.1.0/24", "10.2.2.0/24"]
  private_subnets = ["10.2.3.0/24", "10.2.4.0/24"]
}

module "eks" {
  source        = "../../modules/eks"
  cluster_name  = "development-eks-cluster"
  public_subnets = module.vpc.public_subnets
  private_subnets = module.vpc.private_subnets
}

module "storage" {
  source          = "../../modules/storage"
  volume_size     = 20  # Smaller storage for development
  s3_bucket_name  = "dev-app-storage-bucket"
}

module "security" {
  source = "../../modules/security"
  vpc_id = module.vpc.vpc_id
}
