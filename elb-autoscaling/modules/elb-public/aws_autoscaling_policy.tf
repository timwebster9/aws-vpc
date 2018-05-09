resource "aws_autoscaling_policy" "lb_scaling_policy" {
  name                   = "lb-scaling-policy"
  autoscaling_group_name = "${aws_autoscaling_group.test_asg.name}"
  policy_type            = "TargetTrackingScaling"

  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ALBRequestCountPerTarget"
      # ALB ARN suffix + "/" + ALB target group ARN suffix
      resource_label = "${aws_lb.test_lb.arn_suffix}/${aws_lb_target_group.test_tg.arn_suffix}"
    }
    target_value = 5
  }
}