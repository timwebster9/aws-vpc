resource "aws_internet_gateway" "gw_a" {
  vpc_id = "${aws_vpc.vpc_a.id}"

  tags {
    Name = "internet gateway"
  }
}