provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = "fiap-hack-soat7-redis-state"
}

data "aws_eks_cluster" "eks" {
  name = var.cluster_name
}

data "aws_vpc" "eks_vpc" {
  id = data.aws_eks_cluster.eks.vpc_config[0].vpc_id
}

data "aws_subnets" "eks_subnets" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.eks_vpc.id]
  }
}

resource "aws_elasticache_subnet_group" "redis_subnet_group" {
  name       = "hack-fiap-soat7-redis-subnet-group"
  subnet_ids = data.aws_subnets.eks_subnets.ids
  description = "Subnet group for ElastiCache Redis"
}