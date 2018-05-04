
resource "aws_security_group" "security_group_b" {
  name = "triple-vpc-sg-b"
  description = "Security group for web that allows ssh traffic"
  vpc_id = "${aws_vpc.vpc_b.id}"

  ingress {
    from_port = 22
    to_port   = 22
    protocol  = "tcp"
    self      = "true"
    cidr_blocks = ["${var.subnet_a_cidr}"]
    security_groups = ["${aws_security_group.security_group_a.id}"]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = -1
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
    Name = "security group b"
  }
}