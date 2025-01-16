resource "aws_elasticache_cluster" "redis" {
  cluster_id           = "redis-cluster"
  engine               = "redis"
  node_type            = "cache.t3.micro" # Escolha um tipo de nó adequado
  num_cache_nodes      = 1 # Redis não suporta mais de 1 nó por cluster
  engine_version       = "7.1"
  parameter_group_name = aws_elasticache_parameter_group.redis7.name
  port                 = 6379

  subnet_group_name = aws_elasticache_subnet_group.redis_subnet_group.name
  security_group_ids   = [aws_security_group.elasticache_sg.id]
}

resource "aws_elasticache_parameter_group" "redis7" {
  name   = "redis7-parameter-group"
  family = "redis7"
  description = "Parameter group for Redis 7"
}