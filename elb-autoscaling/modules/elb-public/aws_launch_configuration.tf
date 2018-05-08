resource "aws_launch_configuration" "elb_test_launch_config" {
  name_prefix                 = "elb-test-"
  image_id                    = "${data.aws_ami.ubuntu.id}"
  instance_type               = "${var.instance_type}"
  security_groups             = ["${aws_security_group.instance_sg.id}"]
  associate_public_ip_address = "${var.assign_public_ip}"
  key_name                    = "${var.keypair_name}"
  user_data                   = <<-EOF
                                #!/bin/bash
                                docker run -p 80:80 -d timwebster9/nginx-aws
                                EOF

  lifecycle {
    create_before_destroy = true
  }
}