resource "aws_route_table_association" "rta_a" {
  subnet_id      = "${aws_subnet.subnet_a.id}"
  route_table_id = "${aws_route_table.rt_a.id}"
}