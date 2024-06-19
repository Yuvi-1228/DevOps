resource "aws_ecs_service" "example_service" {
  name            = "example-ecs-service"
  cluster         = aws_ecs_cluster.example_cluster.id
  task_definition = aws_ecs_task_definition.example_task_definition.arn
  desired_count   = 1  // Number of tasks to run

  launch_type     = "FARGATE"

  network_configuration {
    subnets          = ["subnet-12345678", "subnet-87654321"]  // Replace with your subnet IDs
    security_groups  = ["sg-0123456789abcdef0"]  // Replace with your security group IDs
    assign_public_ip = true
  }
}
