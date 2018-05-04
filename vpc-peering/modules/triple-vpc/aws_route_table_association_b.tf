resource "aws_route_table_association" "rta_b" {
  subnet_id      = "${aws_subnet.subnet_b.id}"
  route_table_id = "${aws_route_table.rt_b.id}"
}