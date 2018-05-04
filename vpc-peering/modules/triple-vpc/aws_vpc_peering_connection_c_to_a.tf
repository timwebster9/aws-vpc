resource "aws_vpc_peering_connection" "c_to_a" {
  vpc_id        = "${aws_vpc.vpc_c.id}"
  peer_vpc_id   = "${aws_vpc.vpc_a.id}"
  auto_accept   = true

  tags {
    Name = "VPC Peering between c and a"
  }
}