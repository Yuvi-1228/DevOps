resource "aws_s3_bucket" "my_bucket" {
  bucket = var.bucket_name

  acl    = "private"

  versioning {
    enabled = true
  }

  logging {
    target_bucket = var.logs_bucket
    target_prefix = "my-logs/"
  }

  lifecycle_rule {
    enabled = true
    expiration {
      days = 90
    }
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

  cors_rule {
    allowed_origins = ["*"]
    allowed_methods = ["GET", "PUT", "POST"]
    allowed_headers = ["*"]
    expose_headers = ["ETag"]
    max_age_seconds = 3000
  }

  policy = file("bucket_policy.json")  // Assuming your bucket policy is in a separate JSON file

  tags = {
    Name        = "MyBucket"
    Environment = var.environment
  }
}
