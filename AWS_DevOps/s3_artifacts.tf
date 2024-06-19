resource "aws_s3_bucket" "artifacts" {
  bucket = "devops-artifacts-bucket"

 /* versioning {
    enabled = true
  } */

  tags = {
    Name = "devops-artifacts-bucket"
  }
}
