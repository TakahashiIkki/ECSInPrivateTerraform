# terraform import aws_ecs_cluster.batch-cluster batch-cluster
resource "aws_ecs_cluster" "batch-cluster" {
  name = "batch-cluster"
}

# terraform import aws_ecs_cluster_capacity_providers.batch-cluster-providers batch-cluster
resource "aws_ecs_cluster_capacity_providers" "batch-cluster-providers" {
  cluster_name = aws_ecs_cluster.batch-cluster.name

  capacity_providers = [
    "FARGATE_SPOT"
  ]

  default_capacity_provider_strategy {
    base              = 0
    capacity_provider = "FARGATE_SPOT"
    weight            = 1
  }
}

# terraform import aws_ecs_service.batch-cluster_health-check-batch batch-cluster/health-check-batch
resource "aws_ecs_service" "batch-cluster_health-check-batch" {
  cluster                           = aws_ecs_cluster.batch-cluster.id
  name                              = "health-check-batch"
  desired_count                     = 0
  enable_ecs_managed_tags           = true
  health_check_grace_period_seconds = 0

  lifecycle {
    ignore_changes = [
      task_definition,
      desired_count
    ]
  }

  capacity_provider_strategy {
    base              = "0"
    capacity_provider = "FARGATE_SPOT"
    weight            = "1"
  }


  network_configuration {
    assign_public_ip = "false"
    security_groups  = [aws_security_group.SG_ECS.id]
    subnets          = [aws_subnet.SampleVPC-Private-1a.id]
  }
}
