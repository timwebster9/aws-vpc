resource "aws_autoscaling_group" "test_asg" {
  name                      = "test-elb-asg"
  launch_configuration      = "${aws_launch_configuration.elb_test_launch_config.name}"
  vpc_zone_identifier       = ["${aws_subnet.subnet_a.id}", "${aws_subnet.subnet_b.id}", "${aws_subnet.subnet_c.id}"]
  min_size                  = "${var.min_size}"
  max_size                  = "${var.max_size}"
  desired_capacity          = "${var.desired_capacity}"
  health_check_type         = "${var.health_check_type}"
  health_check_grace_period = "${var.health_check_grace_period}"

  lifecycle {
    create_before_destroy = true
  }
}