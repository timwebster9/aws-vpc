resource "aws_route_table_association" "rta_public" {
  subnet_id      = "${aws_subnet.subnet_public.id}"
  route_table_id = "${aws_route_table.rt_public.id}"
}