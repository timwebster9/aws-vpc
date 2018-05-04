resource "aws_vpc" "vpc_c" {
  cidr_block = "${var.vpc_c_cidr}"

  tags {
    Name = "VPC C"
  }
}