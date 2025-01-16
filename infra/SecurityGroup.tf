# Security Group
resource "aws_security_group" "elasticache_sg" {
  name        = "elasticache-sg"
  description = "Allow traffic to ElastiCache cluster"
  vpc_id      = data.aws_vpc.eks_vpc.id # Substitua pelo ID da sua VPC

  # Permitir conexões internas na porta do Redis
  ingress {
    description = "Allow Redis access"
    from_port   = 6379
    to_port     = 6379
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Regras de saída (outbound)
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"] # Permitir todo tráfego de saída
  }
}


