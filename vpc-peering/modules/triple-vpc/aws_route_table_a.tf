resource "aws_route_table" "rt_a" {
  vpc_id = "${aws_vpc.vpc_a.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.gw_a.id}"
  }

  route {
    cidr_block = "${var.vpc_b_cidr}"
    vpc_peering_connection_id = "${aws_vpc_peering_connection.a_to_b.id}"
  }

  route {
    cidr_block = "${var.vpc_c_cidr}"
    vpc_peering_connection_id = "${aws_vpc_peering_connection.c_to_a.id}"
  }

  tags {
    Name = "route table A"
  }
}