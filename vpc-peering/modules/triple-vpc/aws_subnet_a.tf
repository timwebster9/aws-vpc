resource "aws_subnet" "subnet_a" {
  vpc_id     = "${aws_vpc.vpc_a.id}"
  cidr_block = "${var.subnet_a_cidr}"
  availability_zone = "${var.availability_zone_a}"
  
  tags {
    "Name" = "subnet a"
  }
}