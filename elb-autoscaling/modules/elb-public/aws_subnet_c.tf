resource "aws_subnet" "subnet_c" {
  vpc_id     = "${aws_vpc.vpc_a.id}"
  cidr_block = "${var.subnet_c_cidr}"
  availability_zone = "${var.availability_zone_c}"
  
  tags {
    "Name" = "subnet c"
  }
}