resource "aws_codecommit_repository" "repo" {
  repository_name = "devops-repo"
  description     = "DevOps repository"

  tags = {
    Name = "devops-repo"
  }
}
