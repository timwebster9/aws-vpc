resource "aws_lb_target_group" "test_tg" {
  name_prefix = "${var.lb_name_prefix}"
  port        = 80
  protocol    = "HTTP"
  vpc_id      = "${aws_vpc.vpc_a.id}"

  health_check = {
      path = "/health.html"
  }
}