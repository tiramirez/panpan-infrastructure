provider "aws" {
  region  = var.aws_region
}

module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket = "${var.bucket_name}-${terraform.workspace}"

  versioning = {
    enabled = true
  }

  tags = {
    environment = terraform.workspace
    project     = var.project_name
  }
}
