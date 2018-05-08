resource "aws_s3_bucket" "vpc_endpoint_test" {
  bucket          = "timw-vpc-endpoint-test"
  acl             = "private"
  force_destroy   = "true"

  tags {
    Name        = "VPC endpoint bucket"
  }
}