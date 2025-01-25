resource "aws_ecs_task_definition" "ecs_td" {
  family                   = "ecs-webpage"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  cpu                      = 2048
  memory                   = 4096

  container_definitions = <<DEFINITION
[
  {
    "image": "nginx:latest",
    "cpu": 2048,
    "memory": 4096,
    "name": "nginx-ecs-fargate",
    "networkMode": "awsvpc",
    "portMappings": [
      {
        "containerPort": 80,
        "hostPort": 80
      }
    ]
  }
]
DEFINITION
}

