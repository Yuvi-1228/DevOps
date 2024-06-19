variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
  default     = "my-unique-bucket-name"
}

variable "logs_bucket" {
  description = "The name of the bucket for storing logs"
  type        = string
  default     = "logs-bucket"
}

variable "environment" {
  description = "The environment name"
  type        = string
  default     = "Production"
}
