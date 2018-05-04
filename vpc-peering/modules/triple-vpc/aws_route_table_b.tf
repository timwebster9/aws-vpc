resource "aws_route_table" "rt_b" {
  vpc_id = "${aws_vpc.vpc_b.id}"

  route {
    cidr_block = "${var.vpc_a_cidr}"
    vpc_peering_connection_id = "${aws_vpc_peering_connection.a_to_b.id}"
  }

  route {
    cidr_block = "${var.vpc_c_cidr}"
    vpc_peering_connection_id = "${aws_vpc_peering_connection.b_to_c.id}"
  }

  tags {
    Name = "route table B"
  }
}