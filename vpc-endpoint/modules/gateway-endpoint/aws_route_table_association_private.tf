resource "aws_route_table_association" "rta_private" {
  subnet_id      = "${aws_subnet.subnet_private.id}"
  route_table_id = "${aws_route_table.rt_private.id}"
}