variable "bucket_name" {
  description = "Base name of the S3 bucket"
  type        = string
}

variable "project_name" {
  description = "Projects name use for tags"
  type        = string
}

variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}
