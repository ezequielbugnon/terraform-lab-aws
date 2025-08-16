provider "aws" {
  region = "us-east-1"
}

resource "random_id" "suffix" {
  byte_length = 4
}

resource "aws_s3_bucket" "demo" {
  bucket = "demo-bucket-${random_id.suffix.hex}"

  tags = {
    Name = "demo-bucket-dardo"
  }
}