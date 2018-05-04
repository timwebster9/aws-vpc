
resource "aws_security_group" "security_group_c" {
  name = "triple-vpc-sg-c"
  description = "Security group for web that allows ssh traffic"
  vpc_id = "${aws_vpc.vpc_c.id}"

  ingress {
    from_port = 22
    to_port   = 22
    protocol  = "tcp"
    self      = "true"
    cidr_blocks = ["${var.myip}/32"]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = -1
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
    Name = "security group c"
  }
}