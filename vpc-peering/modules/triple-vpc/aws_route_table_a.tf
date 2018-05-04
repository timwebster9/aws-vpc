resource "aws_route_table" "rt_a" {
  vpc_id = "${aws_vpc.vpc_a.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.gw_a.id}"
  }

  tags {
    Name = "route table A"
  }
}