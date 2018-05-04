resource "aws_vpc" "vpc_b" {
  cidr_block = "${var.vpc_b_cidr}"

  tags {
    Name = "VPC B"
  }
}