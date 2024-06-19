resource "aws_s3_bucket" "example_bucket" {
  bucket = "your-unique-bucket-name"  // Replace with your bucket name

  // Uncomment the following line if you want to enable versioning
  // versioning {
  //   enabled = true
  // }

  // Uncomment the following block to add a bucket policy
  // policy = <<EOF
  // {
  //   "Version": "2012-10-17",
  //   "Statement": [
  //     {
  //       "Effect": "Allow",
  //       "Principal": "*",
  //       "Action": "s3:GetObject",
  //       "Resource": "arn:aws:s3:::your-unique-bucket-name/*"
  //     }
  //   ]
  // }
  // EOF
}
