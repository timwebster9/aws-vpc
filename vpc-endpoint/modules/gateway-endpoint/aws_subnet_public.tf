resource "aws_subnet" "subnet_public" {
  vpc_id     = "${aws_vpc.vpc_a.id}"
  cidr_block = "${var.subnet_public_cidr}"
  availability_zone = "${var.availability_zone}"
  
  tags {
    "Name" = "subnet public"
  }
}