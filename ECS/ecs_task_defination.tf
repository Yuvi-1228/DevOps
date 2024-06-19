resource "aws_ecs_task_definition" "example_task_definition" {
  family                   = "example-task-family"
  cpu                      = "256"  // CPU units (1 vCPU = 1024 units)
  memory                   = "512"  // Memory in MiB

  container_definitions    = <<DEFINITION
[
  {
    "name": "example-container",
    "image": "nginx:latest",
    "cpu": 0,
    "memoryReservation": 128,
    "portMappings": [
      {
        "containerPort": 80,
        "hostPort": 80,
        "protocol": "tcp"
      }
    ],
    "essential": true
  }
]
DEFINITION
}
