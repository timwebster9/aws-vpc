resource "aws_vpc" "vpc_a" {
  cidr_block = "${var.vpc_a_cidr}"

  tags {
    Name = "VPC A"
  }
}