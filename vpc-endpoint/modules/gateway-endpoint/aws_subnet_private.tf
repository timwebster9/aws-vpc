resource "aws_subnet" "subnet_private" {
  vpc_id     = "${aws_vpc.vpc_a.id}"
  cidr_block = "${var.subnet_private_cidr}"
  availability_zone = "${var.availability_zone}"
  
  tags {
    "Name" = "subnet private"
  }
}