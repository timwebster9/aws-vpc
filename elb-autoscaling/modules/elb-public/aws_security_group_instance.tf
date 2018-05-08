
resource "aws_security_group" "instance_sg" {
  name = "instance_sg"
  description = "Security group for instances"
  vpc_id = "${aws_vpc.vpc_a.id}"

  ingress {
    from_port = 80
    to_port   = 80
    protocol  = "tcp"
    cidr_blocks = ["${var.myip}/32", "${var.vpc_cidr}"]
  }

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
    Name = "security group instance"
  }
}