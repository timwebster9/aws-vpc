resource "aws_subnet" "subnet_b" {
  vpc_id     = "${aws_vpc.vpc_a.id}"
  cidr_block = "${var.subnet_b_cidr}"
  availability_zone = "${var.availability_zone_b}"
  
  tags {
    "Name" = "subnet b"
  }
}