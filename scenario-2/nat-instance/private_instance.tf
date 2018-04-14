resource "aws_instance" "private_host" {
  ami                         = "${var.ami}"
  availability_zone           = "${var.availability_zone}"
  instance_type               = "${var.instance_type}"
  subnet_id                   = "${aws_subnet.private.id}"
  vpc_security_group_ids      = ["${aws_security_group.private.id}"]
  associate_public_ip_address = false
  private_ip                  = "10.0.2.5"
  key_name                    = "timw-eu-west-2"

  tags {
    Name = "private instance"
  }
}