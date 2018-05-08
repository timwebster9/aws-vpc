resource "aws_route_table" "rt_private" {
  vpc_id = "${aws_vpc.vpc_a.id}"

  tags {
    Name = "route table private"
  }
}