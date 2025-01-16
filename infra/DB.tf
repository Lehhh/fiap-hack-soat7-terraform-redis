resource "aws_elasticache_cluster" "redis" {
  cluster_id           = "redis-cluster"
  engine               = "redis"
  node_type            = "cache.t3.micro" # Escolha um tipo de nó adequado
  num_cache_nodes      = 1 # Redis não suporta mais de 1 nó por cluster
  parameter_group_name = "default.redis6.x"
  port                 = 6379

  subnet_group_name = aws_db_subnet_group.rds_subnet_group.name
  security_group_ids   = [aws_security_group.elasticache_sg.id]


  tags = {
    Environment = "prod"
  }
}