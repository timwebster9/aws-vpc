resource "aws_instance" "instance_b" {
  ami                         = "${data.aws_ami.ubuntu.id}"
  instance_type               = "${var.instance_type}"
  subnet_id                   = "${aws_subnet.subnet_b.id}"
  vpc_security_group_ids      = ["${aws_security_group.security_group_b.id}"]
  associate_public_ip_address = "false"
  key_name                    = "${var.keypair_name}"

  tags {
    Name = "instance b"
  }
}