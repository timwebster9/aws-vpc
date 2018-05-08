resource "aws_autoscaling_group" "test_asg" {
  name                      = "test-elb-asg"
  launch_configuration      = "${aws_launch_configuration.elb_test_launch_config.name}"
  vpc_zone_identifier       = ["${aws_subnet.subnet_a.id}", "${aws_subnet.subnet_b.id}", "${aws_subnet.subnet_c.id}"]
  min_size                  = 1
  max_size                  = 3
  desired_capacity          = 3

  lifecycle {
    create_before_destroy = true
  }
}