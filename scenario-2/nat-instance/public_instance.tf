resource "aws_instance" "public_host" {
  ami                         = "${var.nat_ami}"
  availability_zone           = "${var.availability_zone}"
  instance_type               = "${var.instance_type}"
  subnet_id                   = "${aws_subnet.public.id}"
  vpc_security_group_ids      = ["${aws_security_group.public.id}"]
  associate_public_ip_address = true
  private_ip                  = "10.0.1.5"
  key_name                    = "timw-eu-west-2"
  source_dest_check = false

  tags {
    Name = "public instance"
  }
}
