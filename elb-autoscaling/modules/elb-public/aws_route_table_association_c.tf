resource "aws_route_table_association" "rta_c" {
  subnet_id      = "${aws_subnet.subnet_c.id}"
  route_table_id = "${aws_route_table.rt_c.id}"
}