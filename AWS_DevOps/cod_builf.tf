resource "aws_codebuild_project" "build_project" {
  name          = "devops-build-project"
  service_role  = aws_iam_role.codebuild_role.arn
  artifacts {
    type = "S3"
    location = aws_s3_bucket.artifacts.bucket
  }
  environment {
    compute_type                = "BUILD_GENERAL1_SMALL"
    image                       = "aws/codebuild/standard:4.0"
    type                        = "LINUX_CONTAINER"
    environment_variable {
      name  = "ENV_VAR"
      value = "production"
    }
  }
  source {
    type     = "CODECOMMIT"
    location = aws_codecommit_repository.repo.clone_url_http
  }

  tags = {
    Name = "devops-build-project"
  }
}
