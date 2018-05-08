resource "aws_autoscaling_attachment" "asg_attachment" {
  autoscaling_group_name = "${aws_autoscaling_group.test_asg.id}"
  alb_target_group_arn   = "${aws_lb_target_group.test_tg.arn}"
}