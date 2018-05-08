resource "aws_vpc_endpoint" "s3" {
  vpc_id          = "${aws_vpc.vpc_a.id}"
  service_name    = "com.amazonaws.eu-west-2.s3"
  route_table_ids = ["${aws_route_table.rt_private.id}"]
}