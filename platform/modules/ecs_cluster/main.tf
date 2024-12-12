resource "aws_ecs_cluster" "main" {
  name = "main-cluster"
}

output "aws_ecs_cluster_id" {
  value = aws_ecs_cluster.main.id
}
