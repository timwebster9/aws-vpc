resource "aws_vpc_peering_connection" "b_to_c" {
  vpc_id        = "${aws_vpc.vpc_b.id}"
  peer_vpc_id   = "${aws_vpc.vpc_c.id}"
  auto_accept   = true

  tags {
    Name = "VPC Peering between b and c"
  }
}