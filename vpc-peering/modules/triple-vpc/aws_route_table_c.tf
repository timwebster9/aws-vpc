resource "aws_route_table" "rt_c" {
  vpc_id = "${aws_vpc.vpc_c.id}"

  route {
    cidr_block = "${var.vpc_b_cidr}"
    vpc_peering_connection_id = "${aws_vpc_peering_connection.b_to_c.id}"
  }

  route {
    cidr_block = "${var.vpc_a_cidr}"
    vpc_peering_connection_id = "${aws_vpc_peering_connection.c_to_a.id}"
  }

  tags {
    Name = "route table C"
  }
}