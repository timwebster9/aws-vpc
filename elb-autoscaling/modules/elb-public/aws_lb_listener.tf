resource "aws_lb_listener" "front_end" {
  load_balancer_arn = "${aws_lb.test_lb.arn}"
  port              = "80"
  protocol          = "HTTP"

  default_action {
    target_group_arn = "${aws_lb_target_group.test_tg.arn}"
    type             = "forward"
  }
}