resource "aws_instance" "instance_c" {
  ami                         = "${data.aws_ami.ubuntu.id}"
  instance_type               = "${var.instance_type}"
  subnet_id                   = "${aws_subnet.subnet_c.id}"
  vpc_security_group_ids      = ["${aws_security_group.security_group_c.id}"]
  associate_public_ip_address = "false"
  key_name                    = "${var.keypair_name}"

  tags {
    Name = "instance c"
  }
}