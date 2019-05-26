# main.tf
provider "aws" {
  region = "${var.AWS_REGION}"
}

# Remote Backends
terraform {
  backend "s3" {
    bucket = "my-terraform-state-bucket"
    #key = "${var.TF_STATE_S3_KEY}"
    key = "multi-instance/terraform.tfstate"
    region = "ap-southeast-1"
  }
}