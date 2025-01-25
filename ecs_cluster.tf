resource "aws_ecs_cluster" "my-ecs-cluster" {
  name = "my-ecs-cluster"

  setting {
    name  = "containerInsights"
    value = "enabled"
  }
}
