provider "aws" {
  region = "us-west-2"
}

module "vpc" {
  source        = "../../modules/vpc"
  vpc_cidr      = "10.1.0.0/16"
  public_subnets  = ["10.1.1.0/24", "10.1.2.0/24"]
  private_subnets = ["10.1.3.0/24", "10.1.4.0/24"]
}

module "eks" {
  source        = "../../modules/eks"
  cluster_name  = "staging-eks-cluster"
  public_subnets = module.vpc.public_subnets
  private_subnets = module.vpc.private_subnets
}

module "storage" {
  source          = "../../modules/storage"
  volume_size     = 50  # Smaller storage for staging
  s3_bucket_name  = "staging-app-storage-bucket"
}

module "security" {
  source = "../../modules/security"
  vpc_id = module.vpc.vpc_id
}
